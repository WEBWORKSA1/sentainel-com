# Sentainel Regulatory Database

> **Sentainel** — the AI compliance operating system for mid-market companies. "AI" is in the name.

This repository is the regulatory content engine for Sentainel.com. It contains atomic, machine-readable obligations extracted from every AI-relevant statute, regulation, and framework in our coverage jurisdictions, mapped to NIST AI RMF for cross-jurisdictional safe-harbor defense and loaded into Postgres for the Sentainel platform.

## The Sales Artifact

**👉 [`cross-references/viz/index.html`](cross-references/viz/index.html)** — interactive customer-facing matrix visualization. Open the file in any browser. No build step, no dependencies. Drop on Netlify/Vercel/S3 to deploy.

The viz tells the entire Sentainel story in three panels: a scope calculator showing obligations × NIST controls × cost differential, a full hover-tooltip-enabled obligation × control grid, and three strategic insights cards. At default (all jurisdictions active) it lands on **59 obligations, 4 jurisdictions, 58+ NIST controls, with a 5–10× cost differential vs direct legal spend.**

## Why This Repo Exists

Every AI compliance tool on the market today either (a) covers a single jurisdiction (TXAIMS — Texas only; CO-AIMS — Colorado only; Augure — Quebec only) or (b) covers governance frameworks without statute-level granularity (Credo AI, Holistic AI). **Sentainel is the only product that maps atomic regulatory obligations across all major North American AI jurisdictions AND cross-references them to NIST AI RMF for safe-harbor defense.**

This regulatory database is our **moat**. Every obligation here was extracted by hand with Claude Opus 4.7 assistance, manually reviewed, and confidence-scored. Competitors can't replicate this work quickly. Customer onboarding is hours, not months.

## V1 Coverage Status

| Jurisdiction | Status | Atomic Obligations | Avg Confidence |
|---|---|---|---|
| **Texas TRAIGA** | ✅ Complete | 12 | 0.94 |
| **Quebec Law 25** | ✅ Complete | 17 | 0.93 |
| **Ontario Bill 149 (ESA)** | ✅ Initial | 1 | 0.95 |
| **Ontario Human Rights Code** | ✅ Initial | 1 | 0.94 |
| **Ontario MFIPPA (Bill 97)** | ✅ Complete | 5 | 0.93 |
| **Illinois HRA AI (HB 3773)** | ✅ Complete | 4 | 0.94 |
| **Illinois AIVIA (820 ILCS 42)** | ✅ Complete | 4 | 0.94 |
| **Ontario EDSTA (Bill 194)** | ✅ Complete | 7 | 0.90 |
| **Ontario PHIPA + AI Scribe Guidance** | ✅ Complete | 8 | 0.94 |
| **NIST AI RMF Cross-Reference Matrix** | 🟡 Refresh pending | 44 obligations × 58 controls (matrix) / 59 obligations live | — |
| **Customer-facing Viz** | 🟡 v1.2 (Ontario stack pending re-embed) | `cross-references/viz/index.html` | — |
| **Postgres schema** | ✅ Complete | 10 migrations 0001–0010 | — |
| Ontario Trustworthy AI Framework | ⬜ Pending | ~6 (target) | — |
| Colorado SB 26-189 | ⏸️ Deferred until rulemaking | ~20 (target) | — |
| California SB 942 + AB 2013 | ⬜ Pending | ~11 (target) | — |
| EU AI Act (high-risk overlay) | ⬜ Pending | ~30 (target) | — |
| Illinois BIPA (biometric overlay) | ⬜ Pending | ~5 (target) | — |

**Current totals:** 59 atomic obligations live across 9 regulations and 4 jurisdictions. Coverage matrix at `cross-references/coverage-matrix.csv` covers the first 44 obligations (248 rows); the 15 new Ontario obligations (EDSTA 7 + PHIPA 8) are awaiting matrix and viz refresh.

## The Strategic Anchor: NIST AI RMF Safe Harbor

Texas TRAIGA § 552.105(e)(2)(D) creates an affirmative defense for substantial compliance with NIST AI RMF GenAI Profile + an internal review process. Sentainel operationalizes this safe harbor and extends it: a customer implementing the same set of NIST controls satisfies obligations across Texas, Quebec, Ontario (Bill 149, Code, MFIPPA, EDSTA, PHIPA), Illinois, Colorado (when rulemaking completes), and California simultaneously.

**The numbers:**

- Implementing 10 high-leverage NIST controls satisfies ~85% of V1 obligations across all four jurisdictions
- `GOVERN-1.1` (Legal & regulatory requirements managed) alone hits 59 / 59 obligations
- Direct compliance implementation cost: $50K–$250K per jurisdiction
- Sentainel annual subscription: $30K–$60K for all V1 jurisdictions
- Customer economics: 5–10× cost differential

For Ontario healthcare AI specifically: PHIPA enforcement is no longer hypothetical. AMPs up to $500K under s. 61.1 (in force Jan 2024), criminal prosecution to $1M under s. 72, civil action to $10K mental anguish under s. 65. The Sentainel value prop for HICs deploying AI scribes: $30K–$70K of direct legal review compressed into $30K–$60K annual subscription with continuous monitoring.

See `cross-references/README.md` for the full matrix narrative and `cross-references/viz/index.html` for the interactive demo.

## Repository Structure

```
sentainel-com/
├── regulations/                      # Statute-level obligation extractions
│   ├── us-tx-traiga/                 # Texas Responsible AI Governance Act (12 obligations)
│   ├── ca-qc-law-25/                 # Quebec Law 25 (17 obligations)
│   ├── ca-on-bill-149/               # Ontario Working for Workers Four Act (ESA)
│   ├── ca-on-human-rights-code/      # Ontario Human Rights Code (AI-relevant sections)
│   ├── ca-on-mfippa/                 # Ontario MFIPPA (as amended by Bill 97)
│   ├── ca-on-bill-194-edsta/         # Ontario EDSTA Bill 194 (7 obligations, enacted not in force)
│   ├── ca-on-phipa-ai-scribe/        # Ontario PHIPA + IPC AI Scribe Guidance + CPSO Advice (8 obligations)
│   ├── us-il-hra-ai/                 # Illinois HRA AI Amendments (HB 3773, PA 103-804)
│   └── us-il-aivia/                  # Illinois AI Video Interview Act (820 ILCS 42)
├── cross-references/                 # NIST AI RMF cross-reference matrix (THE product anchor)
│   ├── README.md                     # Matrix narrative + high-leverage controls
│   ├── nist-controls.yaml            # Full NIST AI RMF control catalog (46 + 12 GenAI)
│   ├── coverage-matrix.csv           # Flattened analytics: 248 obligation×control rows (Ontario EDSTA + PHIPA pending)
│   ├── mappings/                     # Per-jurisdiction NIST mappings
│   │   ├── nist-to-us-tx-traiga.yaml
│   │   ├── nist-to-ca-qc-law-25.yaml
│   │   ├── nist-to-ca-on-stack.yaml  # Bill 149 + Code + MFIPPA (EDSTA + PHIPA pending)
│   │   └── nist-to-us-il-stack.yaml
│   └── viz/                          # Customer-facing visualization
│       ├── index.html                # Self-contained interactive matrix (v1.2)
│       └── README.md                 # Deployment notes
├── etl/                              # Python loaders → Postgres
│   ├── load.py                       # Obligation upserter
│   ├── migrate.py                    # Schema migration runner
│   ├── requirements.txt
│   └── migrations/                   # 10 idempotent SQL migrations (0001–0010)
└── docs/
    ├── METHODOLOGY.md
    ├── ONTARIO_STACK.md
    └── SESSION_LOG.md                # Authoritative session history (read first!)
```

Each regulation directory follows a standard layout:

```
{regulation-slug}/
├── metadata.yaml                     # Regulation-level metadata
├── obligations/                      # One markdown file per atomic obligation
│   └── {citation}.md
├── notes.md                          # Strategic positioning + legal review notes
└── changelog.md                      # Version history
```

## Obligation File Format

Every obligation is a markdown file with YAML frontmatter:

- `slug` — globally unique identifier
- `regulation_id` — parent regulation slug
- `article_number` — formal citation
- `obligation_type` — DISCLOSE | PROHIBIT | DOCUMENT | IMPLEMENT_CONTROL | NOTIFY_AUTHORITY | RETAIN_RECORDS | REPORT | DESIGNATE_ROLE
- `actors` — who the obligation applies to
- `required_action` — verbatim or near-verbatim statutory language
- `plain_language_summary` — Grade 8 readable explanation
- `trigger_conditions` — when this obligation applies
- `evidence_required` — what documentation Sentainel will generate/track
- `deadline` — type (continuous, relative, fixed) + value
- `penalty_for_violation` — consequences of non-compliance
- `ai_specific_application` — how Sentainel operationalizes this obligation for AI deployments
- `cross_references` — links to related obligations across jurisdictions
- `confidence_score` — 0.0–1.0 extraction confidence
- `ambiguity_notes` — known interpretation gaps for legal review
- `sentainel_value_prop` — sales-ready positioning for this obligation

## Cross-Reference Format

NIST mappings (`cross-references/mappings/*.yaml`) tag each obligation→control link with a coverage level:

- **fully_satisfies** — implementing this NIST control alone satisfies the obligation
- **partially_satisfies** — material progress; combined with other listed controls, satisfies the obligation
- **supports** — useful evidence but not itself sufficient
- **safe_harbor** — specifically named in the regulation as an affirmative defense

The flattened CSV (`coverage-matrix.csv`) is the input for analytics, customer onboarding diff tools, the Sentainel scoring engine, and the embedded data source for `viz/index.html`.

## Postgres schema

Ten idempotent migrations land the full database schema:

```bash
export SENTAINEL_DB_URL=postgresql://user:pass@host:5432/sentainel
cd etl
pip install -r requirements.txt
python migrate.py --status      # see what's applied
python migrate.py               # apply pending migrations
```

The schema includes regulatory content tables (jurisdictions, regulations, articles, obligations, penalties), framework cross-references (NIST AI RMF, ISO 42001, safe harbors), customer state (organizations, AI deployments, control implementations, evidence artifacts, compliance gaps), an append-only audit log with cryptographic chaining, and six convenience views for the API. See `etl/migrations/README.md` for the full schema map.

## ETL into Postgres

```bash
cd etl
python load.py --regulation ca-qc-law-25 --db-url $SENTAINEL_DB_URL
```

The loader idempotently upserts regulations, articles, obligations, and cross-references. Re-running picks up changes via the `slug` unique constraint.

## Deploying the Viz

`cross-references/viz/index.html` is a single self-contained HTML file with no build step. Three deployment options:

1. **Netlify drop** — drag the `viz/` folder onto netlify.com/drop, get a public `*.netlify.app` URL in 30 seconds
2. **Vercel** — `vercel deploy cross-references/viz` from the CLI
3. **Cloudflare Pages / S3 / any static host** — same drop, same result

Or embed via `<iframe src="...">` in the marketing site once the rebrand pass is done.

## Contributing

This repo is private. Contributors must:

1. Cite the source statute or guidance document
2. Include confidence score with rationale
3. Flag ambiguities in `ambiguity_notes` rather than papering over them
4. Cross-reference to NIST AI RMF where applicable (the safe-harbor pivot)
5. Update `cross-references/coverage-matrix.csv` when adding obligations
6. Re-embed the updated CSV into `cross-references/viz/index.html` (search for `const COVERAGE_DATA = \`` and replace the backtick block)

## Brand Note

The product is **Sentainel** (with the "ai" embedded), not Sentinel. The domain is sentainel.com. All public-facing assets use the Sentainel spelling exclusively.

---

© Sentainel, Inc. 2026. Internal use only.
