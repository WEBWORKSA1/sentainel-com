# Sentainel Regulatory Database

> **Sentainel** — the AI compliance operating system for mid-market companies. "AI" is in the name.

This repository is the regulatory content engine for Sentainel.com. It contains atomic, machine-readable obligations extracted from every AI-relevant statute, regulation, and framework in our coverage jurisdictions, mapped to a unified Postgres schema that powers the Sentainel platform.

## Why This Repo Exists

Every AI compliance tool on the market today either (a) covers a single jurisdiction (TXAIMS — Texas only) or (b) covers governance frameworks without statute-level granularity (Credo AI, Holistic AI). **Sentainel is the only product that maps atomic regulatory obligations across all major North American AI jurisdictions and cross-references them to NIST AI RMF for safe-harbor defense.**

This regulatory database is our **moat**. Every obligation here was extracted by hand with Claude Opus 4.7 assistance, manually reviewed, and confidence-scored. Customers can't replicate it. Competitors can't replicate it quickly.

## V1 Coverage (Q2-Q3 2026)

| Jurisdiction | Status | Atomic Obligations |
|---|---|---|
| **Texas TRAIGA** | ✅ Complete | 15 |
| **Ontario (full stack)** | 🚧 In progress | ~39 (target) |
| Colorado AI Act | ⬜ Pending | ~45 |
| Quebec Law 25 | ⬜ Pending | ~15 |
| Illinois HRA AI | ⬜ Pending | ~9 |
| California SB 942 + AB 2013 | ⬜ Pending | ~11 |
| NIST AI RMF cross-ref | ⬜ Pending | ~100 controls |

## Repository Structure

```
sentainel-com/
├── regulations/                  # Statute-level obligation extractions
│   ├── us-tx-traiga/             # Texas Responsible AI Governance Act
│   ├── ca-on-bill-149/           # Ontario Working for Workers Four Act (ESA)
│   ├── ca-on-bill-194-edst/      # Ontario Enhancing Digital Security and Trust Act
│   ├── ca-on-human-rights-code/  # Ontario Human Rights Code (AI-relevant sections)
│   ├── ca-on-phipa-ai/           # Ontario PHIPA + IPC AI Scribe Guidance
│   └── ca-on-mfippa/             # Ontario MFIPPA (as amended by Bill 97)
├── frameworks/                   # Non-statutory frameworks (NIST, OECD, etc.)
│   └── ca-on-trustworthy-ai/     # Ontario Trustworthy AI Framework (6 Principles)
├── etl/                          # Python loaders to push markdown into Postgres
└── docs/                         # Methodology, contributor guides, change logs
```

Each regulation directory follows a standard layout:

```
{regulation-slug}/
├── metadata.yaml                 # Regulation-level metadata
├── obligations/                  # One markdown file per atomic obligation
│   └── {citation}.md
├── notes.md                      # Working extraction notes
└── changelog.md                  # Version history
```

## Obligation File Format

Every obligation is a markdown file with YAML frontmatter containing:

- `slug` — globally unique identifier
- `regulation_id` — parent regulation slug
- `article_number` — formal citation
- `obligation_type` — DISCLOSE | PROHIBIT | DOCUMENT | IMPLEMENT_CONTROL | NOTIFY_AUTHORITY | RETAIN_RECORDS | REPORT
- `actors` — who the obligation applies to
- `required_action` — verbatim or near-verbatim statutory language
- `plain_language_summary` — Grade 8 readable explanation
- `trigger_conditions` — when this obligation applies
- `evidence_required` — what documentation Sentainel will generate/track
- `deadline` — type (continuous, relative, fixed) + value
- `penalty_for_violation` — consequences of non-compliance
- `cross_references` — links to related obligations across jurisdictions
- `confidence_score` — 0.0-1.0 extraction confidence
- `ambiguity_notes` — known interpretation gaps for legal review

## ETL into Postgres

```bash
cd etl
python load.py --regulation ca-on-mfippa --db-url $SENTAINEL_DB_URL
```

The loader idempotently upserts regulations, articles, obligations, and cross-references. Re-running picks up changes via the `slug` unique constraint.

## Contributing

This repo is private. Contributors must:
1. Cite the source statute or guidance document
2. Include confidence score with rationale
3. Flag ambiguities in `ambiguity_notes` rather than papering over them
4. Cross-reference to NIST AI RMF where applicable (the safe-harbor pivot)

## Brand Note

The product is **Sentainel** (with the "ai" embedded), not Sentinel. The domain is sentainel.com. All public-facing assets use the Sentainel spelling exclusively.

---

© Sentainel, Inc. 2026. Internal use only.
