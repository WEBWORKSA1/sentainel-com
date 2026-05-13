"""
Sentainel migration runner.

Applies SQL migrations in /etl/migrations/ to a Postgres database in order,
tracking applied migrations in a `schema_migrations` table so re-runs are
idempotent.

Usage:
    export SENTAINEL_DB_URL=postgresql://user:pass@host:5432/sentainel
    python etl/migrate.py                   # apply all pending migrations
    python etl/migrate.py --status          # show what's applied, what's pending
    python etl/migrate.py --dry-run         # print what would be applied, don't run
    python etl/migrate.py --version 0005    # apply up to and including 0005

Migrations are detected by filename pattern: 4-digit-prefix_description.sql
The numeric prefix is the version; descriptions are for humans.

Each migration is wrapped in a transaction. Partial failures roll back fully.
"""

from __future__ import annotations

import argparse
import hashlib
import os
import re
import sys
import time
from pathlib import Path

try:
    import psycopg2
    from psycopg2 import sql
except ImportError:
    print("ERROR: psycopg2 not installed. Run: pip install psycopg2-binary", file=sys.stderr)
    sys.exit(1)


MIGRATIONS_DIR = Path(__file__).parent / "migrations"
MIGRATION_PATTERN = re.compile(r"^(\d{4})_([a-z0-9_]+)\.sql$")

SCHEMA_MIGRATIONS_DDL = """
CREATE TABLE IF NOT EXISTS schema_migrations (
    version      TEXT PRIMARY KEY,
    description  TEXT NOT NULL,
    sha256       TEXT NOT NULL,
    applied_at   TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    duration_ms  INTEGER NOT NULL DEFAULT 0,
    applied_by   TEXT NOT NULL DEFAULT CURRENT_USER
);
"""


def discover_migrations() -> list[tuple[str, str, Path]]:
    """Return [(version, description, path), ...] sorted by version."""
    if not MIGRATIONS_DIR.is_dir():
        raise RuntimeError(f"Migrations directory not found: {MIGRATIONS_DIR}")
    discovered = []
    for entry in sorted(MIGRATIONS_DIR.iterdir()):
        if not entry.is_file() or not entry.name.endswith(".sql"):
            continue
        match = MIGRATION_PATTERN.match(entry.name)
        if not match:
            print(f"WARNING: skipping non-conforming file: {entry.name}", file=sys.stderr)
            continue
        discovered.append((match.group(1), match.group(2), entry))
    return discovered


def file_sha256(path: Path) -> str:
    h = hashlib.sha256()
    h.update(path.read_bytes())
    return h.hexdigest()


def get_applied_versions(conn) -> dict[str, dict]:
    """Return {version: {sha256, applied_at, description}}."""
    with conn.cursor() as cur:
        cur.execute(SCHEMA_MIGRATIONS_DDL)
        cur.execute("SELECT version, description, sha256, applied_at FROM schema_migrations ORDER BY version;")
        rows = cur.fetchall()
    return {
        row[0]: {"description": row[1], "sha256": row[2], "applied_at": row[3]}
        for row in rows
    }


def apply_migration(conn, version: str, description: str, path: Path) -> int:
    """Apply a single migration in a transaction. Returns duration ms."""
    sha = file_sha256(path)
    sql_text = path.read_text()
    started = time.monotonic()
    with conn.cursor() as cur:
        cur.execute(sql_text)
        cur.execute(
            "INSERT INTO schema_migrations (version, description, sha256, duration_ms) "
            "VALUES (%s, %s, %s, %s)",
            (version, description, sha, int((time.monotonic() - started) * 1000)),
        )
    return int((time.monotonic() - started) * 1000)


def cmd_status(args):
    db_url = os.environ.get("SENTAINEL_DB_URL")
    if not db_url:
        print("ERROR: SENTAINEL_DB_URL not set", file=sys.stderr)
        sys.exit(2)
    migrations = discover_migrations()
    conn = psycopg2.connect(db_url)
    try:
        applied = get_applied_versions(conn)
        conn.commit()  # commit the CREATE TABLE IF NOT EXISTS from get_applied_versions
    finally:
        conn.close()
    print(f"{'VERSION':<10} {'STATUS':<12} {'DESCRIPTION':<40} {'APPLIED_AT'}")
    print("-" * 90)
    for version, description, path in migrations:
        info = applied.get(version)
        if not info:
            print(f"{version:<10} {'pending':<12} {description:<40}")
            continue
        sha_now = file_sha256(path)
        if sha_now != info["sha256"]:
            print(f"{version:<10} {'DRIFTED':<12} {description:<40} {info['applied_at']}  ⚠ file changed since apply")
        else:
            print(f"{version:<10} {'applied':<12} {description:<40} {info['applied_at']}")


def cmd_migrate(args):
    db_url = os.environ.get("SENTAINEL_DB_URL")
    if not db_url:
        print("ERROR: SENTAINEL_DB_URL not set", file=sys.stderr)
        sys.exit(2)
    target_version = args.version  # may be None
    migrations = discover_migrations()
    conn = psycopg2.connect(db_url)
    conn.autocommit = False
    try:
        applied = get_applied_versions(conn)
        pending = [(v, d, p) for (v, d, p) in migrations if v not in applied]
        if target_version:
            pending = [t for t in pending if t[0] <= target_version]

        if not pending:
            print("All migrations applied. Nothing to do.")
            return

        if args.dry_run:
            print(f"[dry-run] Would apply {len(pending)} migration(s):")
            for v, d, _ in pending:
                print(f"  {v}_{d}.sql")
            return

        print(f"Applying {len(pending)} migration(s)...")
        for version, description, path in pending:
            print(f"  → {version}_{description}.sql ... ", end="", flush=True)
            try:
                duration = apply_migration(conn, version, description, path)
                conn.commit()
                print(f"ok ({duration} ms)")
            except Exception as e:
                conn.rollback()
                print(f"FAILED")
                print(f"\nMigration {version} failed and was rolled back.")
                print(f"Error: {e}", file=sys.stderr)
                sys.exit(3)
        print("Done.")
    finally:
        conn.close()


def main():
    parser = argparse.ArgumentParser(description="Sentainel migration runner")
    parser.add_argument("--status", action="store_true", help="Show migration status, don't apply anything")
    parser.add_argument("--dry-run", action="store_true", help="Print pending migrations without applying")
    parser.add_argument("--version", type=str, default=None, help="Apply up to and including this version (e.g. '0005')")
    args = parser.parse_args()

    if args.status:
        cmd_status(args)
    else:
        cmd_migrate(args)


if __name__ == "__main__":
    main()
