"""
Sentainel Regulatory Database — ETL Loader

Loads markdown obligation files into Postgres.

Usage:
    python load.py --regulation us-tx-traiga
    python load.py --regulation ca-on-mfippa
    python load.py --regulation all
    python load.py --db-url postgresql://localhost/sentainel

Requirements:
    pip install python-frontmatter psycopg2-binary pyyaml
"""

import argparse
import frontmatter
import json
import psycopg2
import yaml
from pathlib import Path
from datetime import datetime

REPO_ROOT = Path(__file__).parent.parent
REGULATIONS_DIR = REPO_ROOT / "regulations"
FRAMEWORKS_DIR = REPO_ROOT / "frameworks"


def load_metadata(reg_dir: Path) -> dict:
    """Load metadata.yaml as a dict."""
    metadata_path = reg_dir / "metadata.yaml"
    with open(metadata_path, "r") as f:
        content = f.read()
        if content.startswith("---"):
            content = content.split("---", 2)[1]
        return yaml.safe_load(content)


def load_regulation(conn, reg_slug: str) -> int:
    """Load a single regulation and all its obligations. Returns count."""
    reg_dir = REGULATIONS_DIR / reg_slug
    if not reg_dir.exists():
        reg_dir = FRAMEWORKS_DIR / reg_slug

    if not reg_dir.exists():
        print(f"X Regulation directory not found: {reg_slug}")
        return 0

    metadata = load_metadata(reg_dir)

    with conn.cursor() as cur:
        # Insert jurisdiction
        cur.execute(
            """
            INSERT INTO jurisdictions (code, name, level, parent_code, iso_country)
            VALUES (%s, %s, %s, %s, %s)
            ON CONFLICT (code) DO UPDATE SET updated_at = NOW()
            RETURNING id
            """,
            (
                metadata["jurisdiction"]["code"],
                metadata["jurisdiction"]["code"].replace("-", " "),
                metadata["jurisdiction"]["level"],
                metadata["jurisdiction"].get("parent"),
                metadata["jurisdiction"]["code"].split("-")[0],
            ),
        )
        jurisdiction_id = cur.fetchone()[0]

        # Insert regulation
        cur.execute(
            """
            INSERT INTO regulations (
                slug, jurisdiction_id, short_name, long_name, citation,
                status, signed_date, effective_date, enforcement_date,
                source_url, summary, scope_description, extraterritorial_reach,
                extraterritorial_notes, safe_harbor_via
            )
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            ON CONFLICT (slug) DO UPDATE SET
                updated_at = NOW(),
                status = EXCLUDED.status,
                summary = EXCLUDED.summary
            RETURNING id
            """,
            (
                metadata["slug"],
                jurisdiction_id,
                metadata["short_name"],
                metadata["long_name"],
                metadata["citation"],
                metadata["status"],
                metadata.get("signed_date"),
                metadata.get("effective_date"),
                metadata.get("enforcement_date"),
                metadata.get("source_url"),
                metadata.get("summary"),
                metadata.get("scope_description"),
                metadata.get("extraterritorial_reach", False),
                metadata.get("extraterritorial_notes"),
                metadata.get("safe_harbor_via", []),
            ),
        )
        regulation_id = cur.fetchone()[0]

        # Insert penalty schedules
        for penalty in metadata.get("penalty_schedules", []):
            cur.execute(
                """
                INSERT INTO penalty_schedules (
                    regulation_id, tier_name, basis, min_amount, max_amount,
                    currency, citation, notes
                )
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
                ON CONFLICT (regulation_id, tier_name) DO UPDATE SET
                    updated_at = NOW()
                """,
                (
                    regulation_id,
                    penalty["tier_name"],
                    penalty["basis"],
                    penalty.get("min_amount"),
                    penalty.get("max_amount"),
                    penalty["currency"],
                    penalty.get("citation"),
                    penalty.get("notes"),
                ),
            )

        # Insert obligations
        obligations_dir = reg_dir / "obligations"
        count = 0
        if obligations_dir.exists():
            for obl_file in sorted(obligations_dir.glob("*.md")):
                obl = frontmatter.load(obl_file)

                # Upsert article
                cur.execute(
                    """
                    INSERT INTO regulation_articles (
                        regulation_id, article_number, full_text,
                        plain_language_summary, citation_format
                    )
                    VALUES (%s, %s, %s, %s, %s)
                    ON CONFLICT (regulation_id, article_number) DO UPDATE SET
                        plain_language_summary = EXCLUDED.plain_language_summary,
                        updated_at = NOW()
                    RETURNING id
                    """,
                    (
                        regulation_id,
                        obl["article_number"],
                        obl["required_action"],
                        obl["plain_language_summary"],
                        obl["article_number"],
                    ),
                )
                article_id = cur.fetchone()[0]

                # Upsert obligation
                cur.execute(
                    """
                    INSERT INTO obligations (
                        slug, article_id, regulation_id, obligation_type,
                        actors, required_action, plain_language_summary,
                        trigger_conditions, evidence_required, deadline_type,
                        deadline_value, exceptions, confidence_score,
                        confidence_tier, ambiguity_notes, extraction_method,
                        extracted_at, reviewed_at, reviewed_by
                    )
                    VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s,
                            %s, %s, %s, %s, %s, %s, %s)
                    ON CONFLICT (slug) DO UPDATE SET
                        updated_at = NOW(),
                        confidence_score = EXCLUDED.confidence_score,
                        required_action = EXCLUDED.required_action,
                        plain_language_summary = EXCLUDED.plain_language_summary
                    """,
                    (
                        obl["slug"],
                        article_id,
                        regulation_id,
                        obl["obligation_type"],
                        obl["actors"],
                        obl["required_action"],
                        obl["plain_language_summary"],
                        json.dumps(obl.get("trigger_conditions", [])),
                        obl.get("evidence_required", []),
                        obl.get("deadline", {}).get("type"),
                        obl.get("deadline", {}).get("value"),
                        json.dumps(obl.get("exceptions", [])),
                        obl["confidence_score"],
                        obl["confidence_tier"],
                        obl.get("ambiguity_notes"),
                        obl.get("extraction_method"),
                        obl.get("extracted_at"),
                        obl.get("last_reviewed"),
                        obl.get("reviewer"),
                    ),
                )
                count += 1

        conn.commit()
        print(f"OK Loaded {reg_slug}: {count} obligations")
        return count


def list_all_regulations() -> list[str]:
    """List all regulation slugs in the repo."""
    regs = []
    if REGULATIONS_DIR.exists():
        regs += [d.name for d in REGULATIONS_DIR.iterdir() if d.is_dir()]
    if FRAMEWORKS_DIR.exists():
        regs += [d.name for d in FRAMEWORKS_DIR.iterdir() if d.is_dir()]
    return sorted(regs)


def main():
    parser = argparse.ArgumentParser(description="Sentainel ETL loader")
    parser.add_argument(
        "--regulation",
        required=True,
        help="Regulation slug or 'all' to load everything",
    )
    parser.add_argument(
        "--db-url",
        default="postgresql://localhost/sentainel",
        help="Postgres connection string",
    )
    args = parser.parse_args()

    with psycopg2.connect(args.db_url) as conn:
        if args.regulation == "all":
            total = 0
            for reg in list_all_regulations():
                total += load_regulation(conn, reg)
            print(f"\nTOTAL: {total} obligations across all regulations")
        else:
            load_regulation(conn, args.regulation)


if __name__ == "__main__":
    main()
