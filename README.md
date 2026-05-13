# Sentainel Regulatory Database

> **Sentainel** — the AI compliance operating system for mid-market companies. "AI" is in the name.

This repository is the regulatory content engine for Sentainel.com. It contains atomic, machine-readable obligations extracted from every AI-relevant statute, regulation, and framework in our coverage jurisdictions, mapped to NIST AI RMF for cross-jurisdictional safe-harbor defense and loaded into Postgres for the Sentainel platform.

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
| **NIST AI RMF Cross-Reference Matrix** | ✅ Complete | 36 obligations × 31 controls | — |
| Ontario Bill 194 / EDSTA | ⬜ Pending | ~7 (target) | — |
| Ontario PHIPA + AI Scribe Guidance | ⬜ Pending | ~8 (target) | — |
| Ontario Trustworthy AI Framework | ⬜ Pending | ~6 (target) | — |
| Colorado SB 26-189 | ⏸️ Deferred until rulemaking | ~20 (target) | — |
| Illinois HRA AI | ⬜ Pending | ~9 (target) | — |
| California SB 942 + AB 2013 | ⬜ Pending | ~11 (target) | — |
| EU AI Act (high-risk overlay) | ⬜ Pending | ~30 (target) | — |

**Current totals:** 36 atomic obligations live across 5 regulations, 195-row coverage matrix in `cross-references/coverage-matrix.csv`, full NIST AI RMF control catalog (46 base + 12 GenAI Profile) in `cross-references/nist-controls.yaml`.

## The Strategic Anchor: NIST AI RMF Safe Harbor

Texas TRAIGA § 552.105(e)(2)(D) creates an affirmative defense for substantial compliance with NIST AI RMF GenAI Profile + an internal review process. Sentainel operationalizes this safe harbor and extends it: a customer implementing the same set of NIST controls satisfies obligations across Texas, Quebec, Ontario, Colorado (when rulemaking completes), Illinois, and California simultaneously.

**The numbers:**

- Implementing 10 high-leverage NIST controls satisfies ~85% of obligations across V1 jurisdictions
- Implementing 31 of 46 base NIST controls + 8 jurisdiction-specific overlays = full V1 coverage
- Direct compliance implementation cost: $50K–$250K
- Sentainel annual subscription: $30K–$60K
- Customer economics: 5–10x cost differential

See `cross-references/README.md` for the full matrix narrative.

## Repository Structure

```
sentainel-com/
├── regulations/                      # Statute-level obligation extractions
│   ├── us-tx-traiga/                 # Texas Responsible AI Governance Act (12 obligations)
│   ├── ca-qc-law-25/                 # Quebec Law 25 (17 obligations)
│   ├── ca-on-bill-149/               # Ontario Working for Workers Four Act (ESA)
│   ├── ca-on-human-rights-code/      # Ontario Human Rights Code (AI-relevant sections)
│   └── ca-on-mfippa/                 # Ontario MFIPPA (as amended by Bill 97)
├── cross-references/                 # NIST AI RMF cross-reference matrix (THE product anchor)
│   ├── README.md                     # Matrix narrative + high-leverage controls
│   ├── nist-controls.yaml            # Full NIST AI RMF control catalog (46 + 12 GenAI)
│   ├── coverage-matrix.csv           # Flattened analytics: 195 obligation×control rows
│   └── mappings/                     # Per-jurisdiction NIST mappings
│       ├── nist-to-us-tx-traiga.yaml
│       ├── nist-to-ca-qc-law-25.yaml
│       └── nist-to-ca-on-stack.yaml
├── etl/                              # Python loaders → Postgres
└── docs/                             # Methodology, Ontario stack reference
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
- `obligation_type` — DISCLOSE | PROHIBIT | DOCUMENT | IMPLEMENT_CONTROL | NOTIFY_AUTHORITY | RETAIN_RECORDS | REPORT
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

The flattened CSV (`coverage-matrix.csv`) is the input for analytics, customer onboarding diff tools, and the Sentainel scoring engine.

## ETL into Postgres

```bash
cd etl
python load.py --regulation ca-qc-law-25 --db-url $SENTAINEL_DB_URL
```

The loader idempotently upserts regulations, articles, obligations, and cross-references. Re-running picks up changes via the `slug` unique constraint.

## Contributing

This repo is private. Contributors must:

1. Cite the source statute or guidance document
2. Include confidence score with rationale
3. Flag ambiguities in `ambiguity_notes` rather than papering over them
4. Cross-reference to NIST AI RMF where applicable (the safe-harbor pivot)
5. Update `cross-references/coverage-matrix.csv` when adding obligations

## Brand Note

The product is **Sentainel** (with the "ai" embedded), not Sentinel. The domain is sentainel.com. All public-facing assets use the Sentainel spelling exclusively.

---

© Sentainel, Inc. 2026. Internal use only.
