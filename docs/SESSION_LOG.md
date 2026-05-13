# Sentainel Repo Session Log

This file is the authoritative record of what's in the repo, when it landed, and what's planned next. Read this **first** in any new session before re-extracting anything.

---

## Current Repo State (2026-05-13, late afternoon)

### Regulations in repo

| Regulation | Path | Obligations | Avg Confidence | Status |
|---|---|---|---|---|
| Texas TRAIGA | `regulations/us-tx-traiga/` | 12 | 0.94 | ✅ Complete |
| Quebec Law 25 | `regulations/ca-qc-law-25/` | 17 | 0.93 | ✅ Complete |
| Ontario Bill 149 (ESA) | `regulations/ca-on-bill-149/` | 1 | 0.95 | ✅ Initial (more obligations possible from later ESA amendments) |
| Ontario Human Rights Code | `regulations/ca-on-human-rights-code/` | 1 | 0.94 | ✅ Initial (s. 9 only; other Code sections add ~3 more) |
| Ontario MFIPPA (Bill 97) | `regulations/ca-on-mfippa/` | 5 | 0.93 | ✅ Complete |
| Illinois HRA AI (HB 3773 / PA 103-804) | `regulations/us-il-hra-ai/` | 4 | 0.94 | ✅ Complete |
| Illinois AIVIA (820 ILCS 42) | `regulations/us-il-aivia/` | 4 | 0.94 | ✅ Complete |

**Total in repo: 44 atomic obligations** across 7 regulations and 4 jurisdictions.

### Cross-references

| File | Status | Notes |
|---|---|---|
| `cross-references/README.md` | ✅ | Strategic narrative + high-leverage controls table |
| `cross-references/nist-controls.yaml` | ✅ | Full NIST AI RMF catalog (46 base + 12 GenAI Profile) with ISO 42001 equivalents |
| `cross-references/coverage-matrix.csv` | ✅ | 248 obligation×control rows; 58 unique NIST controls referenced |
| `cross-references/mappings/nist-to-us-tx-traiga.yaml` | ✅ | 12 obligations mapped, with implementation priority tiers |
| `cross-references/mappings/nist-to-ca-qc-law-25.yaml` | ✅ | 17 obligations mapped, with Quebec-specific gaps called out |
| `cross-references/mappings/nist-to-ca-on-stack.yaml` | ✅ | 7 Ontario obligations mapped (Bill 149 + Code + MFIPPA) |
| `cross-references/mappings/nist-to-us-il-stack.yaml` | ✅ | 8 Illinois obligations mapped (HRA AI + AIVIA), with TRAIGA disparate-impact gap call-out |
| `cross-references/viz/index.html` | ✅ **v1.2** | Illinois jurisdictions + filter button + 248-row embedded CSV |
| `cross-references/viz/README.md` | ✅ v1.1 | Viz documentation: query params, print stylesheet, iframe embed protocol |

### Postgres schema

| File | Status | Notes |
|---|---|---|
| `etl/migrations/0001_init.sql` | ✅ | Extensions, jurisdictions (seeded US-Federal/CA-Federal/EU), regulations, companion legislation |
| `etl/migrations/0002_articles_obligations.sql` | ✅ | regulation_articles, obligations (12-type enum), obligation_cross_references; pgvector(1536) embedding columns |
| `etl/migrations/0003_penalties.sql` | ✅ | penalty_schedules, penalty_authorities |
| `etl/migrations/0004_cross_references.sql` | ✅ | frameworks (NIST AI RMF + ISO 42001 seeded), framework_controls, obligation_control_mappings (THE MOAT), framework_safe_harbors |
| `etl/migrations/0005_actors_enums.sql` | ✅ | actor_types seed (18 codes), obligation_type_definitions with evidence-collection patterns |
| `etl/migrations/0006_evidence_audit.sql` | ✅ | evidence_types catalog (PK column is `code`), append-only audit_log with cryptographic chaining trigger |
| `etl/migrations/0007_customers_deployments.sql` | ✅ | organizations (workos_org_id + plan_tier matching pricing), organization_jurisdictions, ai_deployments, deployment_jurisdictions |
| `etl/migrations/0008_compliance_state.sql` | ✅ | control_implementations, evidence_artifacts (FK `evidence_type_code` → evidence_types.code), obligation_compliance_status, compliance_gaps |
| `etl/migrations/0009_indexes.sql` | ✅ | pgvector HNSW indexes, partial indexes for hot paths, STATISTICS 500 tuning |
| `etl/migrations/0010_views.sql` | ✅ | Six views: obligation coverage summary, jurisdiction counts, customer score, high-leverage controls, penalty ceilings, safe-harbor anchors |
| `etl/migrations/README.md` | ✅ | Schema layout table, runner usage, drift-detection docs |
| `etl/migrate.py` | ✅ | Runner with SHA-256-tracked schema_migrations table, --status / --dry-run / --version flags, drift detection |

Migrations are syntactically validated (parens balanced, statements terminated, plpgsql blocks balanced). NOT YET applied against a real Postgres instance.

### Infrastructure

| File | Status |
|---|---|
| `README.md` | ✅ Reflects current state (updated 2026-05-13 late afternoon) |
| `docs/METHODOLOGY.md` | ✅ |
| `docs/ONTARIO_STACK.md` | ✅ |
| `docs/SESSION_LOG.md` | ✅ |
| `etl/load.py` | ✅ |
| `etl/requirements.txt` | ✅ |
| `.gitignore` | ✅ |

---

## What's NOT in the repo (pending)

These exist as goals but no extraction work has been done yet. Past session journals occasionally overstated this — always verify by checking the actual repo before claiming progress.

| Target | Estimated Obligations | Priority Notes |
|---|---|---|
| Ontario Bill 194 / EDSTA | ~7 | High-priority Ontario stack completion |
| Ontario PHIPA + AI Scribe Guidance | ~8 | Healthcare AI angle, IPC active |
| Ontario Trustworthy AI Framework | ~6 | Already referenced as benchmark in NIST mappings |
| California SB 942 + AB 2013 | ~11 | Significant market size |
| Colorado SB 26-189 | ~20 | DEFERRED — wait for Polis signature + AG rulemaking initiation (re-add Q4 2026 watch) |
| Quebec CQLR c. A-2.1 | ~15 | Public-sector parallel of Law 25; municipal AI |
| EU AI Act (high-risk overlay) | ~30 | Enforcement Aug 2, 2026; positions Sentainel for international expansion |
| Illinois BIPA (740 ILCS 14) | ~5 | Biometric overlay for Illinois hiring AI ($1K-$5K per-violation private right of action) |
| Illinois Automated Decision Tools Act (HB 5116) | ~10 | Pending, high probability 2027 passage |
| NIST AI RMF deep control elaboration | already cataloged | Catalog exists; per-control evidence templates pending |
| ISO/IEC 42001 standalone mapping file | — | Currently shown as inline `iso_42001_equivalent` per NIST control; could be split out |

---

## Working files NOT in this repo

Some assets live outside the repo and should not be assumed to be deployed:

- `/home/claude/sentinel-site/index.html` — Marketing site, **still uses old "Sentinel" brand**. Rebrand pass to "Sentainel" pending.
- `/mnt/user-data/outputs/sentinel.html` — Earlier marketing build, also pre-rebrand.

---

## Locked product decisions (from prior sessions)

- **Brand**: Sentainel (sentainel.com secured), NOT Sentinel. The "ai" embed is intentional.
- **Geography**: US + Canada (English first, French/Quebec via Sentainel bilingual tooling)
- **Vertical**: Horizontal mid-market, not single-vertical
- **Architecture**: Three layers — Discovery, Classification/Documentation, Runtime Monitoring
- **Tech stack**: Python/FastAPI, Postgres + pgvector, Claude Opus 4.7, Next.js + Tailwind + shadcn/ui, Vercel + Supabase + Railway/Fly.io, WorkOS, Plasmo, Go inline proxy
- **Pricing**:
  - Discovery $0/mo
  - Operations $2,499/mo
  - Continuous $4,999/mo
  - Municipal Edition $1,499/mo (Phase 3, 2027 Q1+)
  - Sandbox SKU $1,499/mo for Texas TRAIGA Chapter 553 participants
- **8-month build sequence**: M1=Regulatory Content Engine (THE MOAT — this repo), M2=Classification, M3=Discovery, M4=Documentation, M5=Runtime Proxy, M6=Monitoring+Incident, M7=Platform, M8=Launch+SOC2

---

## Competitive intelligence (as of 2026-05-13)

- **TXAIMS.com** — Texas only
- **CO-AIMS (co-aims.com)** — Colorado only
- **Augure (augureai.ca)** — Quebec only, framework-level not atomic-obligation level
- **Kestri.com** — Oracle GRC adjacent, not a real competitor in this space
- **Credo AI ($12.8M funded), Holistic AI, IBM watsonx, OneTrust** — enterprise-only, $75K–$250K ACV, framework-level not statute-level

**Sentainel's wedge**: multi-jurisdiction depth at atomic obligation granularity, with NIST AI RMF cross-reference matrix as the safe-harbor sales artifact.

---

## Regulatory tailwind dates

| Event | Date | Penalty exposure |
|---|---|---|
| Texas TRAIGA effective | Jan 1, 2026 (in force) | $10K–$200K per violation |
| Illinois HRA AI effective | Jan 1, 2026 (in force) | Civil rights remedies + $100K aggravated |
| Illinois AIVIA effective | Jan 1, 2020 (in force, 5-year pedigree) | Civil rights remedies; s. 30 added 2022 |
| Ontario Bill 149 effective | Jan 1, 2026 (in force) | $100K individual / $500K–$1.5M corp |
| Ontario MFIPPA Bill 97 effective | July 1, 2026 + Jan 1, 2027 | Order-binding via IPC |
| Quebec Law 25 — all phases in force | Sept 22, 2024 | CAD $25M / 4% worldwide turnover |
| Quebec Anonymization Regulation | May 30, 2024 (in force) | Same as Law 25 |
| EU AI Act high-risk enforcement | Aug 2, 2026 | €35M / 7% worldwide turnover |
| TRAIGA AG complaint portal | Sept 1, 2026 | — |
| Colorado SB 26-189 new effective | Jan 1, 2027 (after rulemaking) | TBD |
| Illinois IDHR final rules expected | Q3 2026 | Per HB 3773 § 2-102(L) delegation |

---

## Session-by-session changelog

### 2026-05-13 (late afternoon — Illinois + Postgres schema)
- Pushed full Postgres schema: 10 idempotent migrations (0001–0010) + migrate.py runner + migrations/README.md
- Migrations cover: extensions/jurisdictions/regulations (0001) → articles+obligations+pgvector (0002) → penalties (0003) → NIST AI RMF + safe harbors (0004) → actor types + obligation types (0005) → evidence catalog + append-only audit log (0006) → organizations + AI deployments (0007) → per-customer compliance state (0008) → HNSW + partial indexes (0009) → six API views (0010)
- Fixed schema bug pre-push: `evidence_artifacts.evidence_type_slug` → `evidence_type_code` to match `evidence_types.code` PK in 0006
- Pushed Illinois HRA AI extraction: 4 obligations (substantive disparate-impact prohibition, per-se zip-code-proxy prohibition, employee notice duty, IDHR rulemaking compliance) + metadata (12KB) + notes (6.5KB) + changelog. Captures TRAIGA disparate-impact-vs-intent gap (TRAIGA § 552.056(c) excludes pure disparate impact; IL uses "effect of subjecting" = strict-liability exposure on first Chicago applicant) and BIPA companion exposure ($1K–$5K per-violation private right of action)
- Pushed Illinois AIVIA extraction: 4 obligations (pre-interview notice/explanation/consent, sharing limitation, 30-day deletion right, DCEO demographic reporting) + metadata (8KB) + notes (5.5KB) + changelog. Longest-enforced US AI law (in force since 2020)
- Pushed `cross-references/mappings/nist-to-us-il-stack.yaml` (18.5KB): NIST mapping for combined Illinois HRA AI + AIVIA stack, 8 obligations × ~50 control mappings, with Tier 1 implementation priorities and gap analysis (zip-code proxy, AIVIA 30-day clock, DCEO format)
- Updated `cross-references/coverage-matrix.csv` with 53 Illinois rows → total now 248 rows / 44 obligations / 4 jurisdictions / 58 unique NIST controls
- Pushed viz v1.2 to `cross-references/viz/index.html`: added Illinois HRA AI + AIVIA to JURISDICTIONS, added Illinois filter button, updated hero stats (36→44 obligations, 5→7 regulations, Three→Four jurisdictions), re-embedded full 248-row CSV
- Updated root `README.md` and `docs/SESSION_LOG.md` to reflect new state

### 2026-05-13 (afternoon — viz v1.1)
- Added query-param state hydration: `?juris=US-TX,CA-QC` pre-selects jurisdictions on load
- Group codes (`US-TX`, `CA-QC`, `CA-ON`, `US-IL`) and specific codes (`us-tx-traiga`, etc.) both supported
- URL auto-updates via `history.replaceState` on every toggle — every state is permalink-able
- Added "Copy link" button (nav + inline in picker) using Clipboard API with fallback
- Added "Print / PDF" button + `@media print` stylesheet that inverts to light mode, hides interactive chrome, flows the matrix at natural height, includes a dynamic header with current selection summary
- Added iframe resize protocol via `postMessage({ type: 'sentainel-resize', height })` posted on load, toggle, filter change, window resize, and a 1-second post-init delay
- Updated `cross-references/viz/README.md` with full documentation of all three features including parent-side iframe embed example
- Bumped version string to v1.1 in nav and footer

### 2026-05-13 (late morning — viz v1.0 build)
- Built customer-facing interactive matrix visualization at `cross-references/viz/index.html`
- Self-contained 50KB HTML with embedded data — no build step, no dependencies
- Sections: hero stats / scope calculator with cost differential / full obligation×control grid with tooltips / strategic insights
- Aesthetic: dark mode, Fraunces display + JetBrains Mono data + Inter body, lime accent used sparingly
- Auto-selects all jurisdictions on load → at v1.0 landed on "36 obligations, 5 controls cover 97%, $190K-$465K direct vs $60K Sentainel"
- Visual QA via Playwright screenshots — verified hero, calculator, savings panel, matrix-all, matrix-Quebec, tooltip rendering
- Added `cross-references/viz/README.md` with deployment notes

### 2026-05-13 (morning)
- Pushed Quebec Law 25 final batch (17 obligations + metadata + changelog + notes)
- Pushed full cross-references suite: README, NIST controls catalog, coverage matrix CSV, 3 NIST mapping YAMLs
- Rewrote root `README.md` to reflect current state
- Created this `docs/SESSION_LOG.md` as canonical in-repo state record

### 2026-05-13 (early morning)
- Quebec Law 25 partial extraction (15 → 17 obligations)
- TRAIGA full extraction (12 obligations) + push

### 2026-05-12
- Initial repo creation, Ontario Bill 149 + Code + MFIPPA extraction, brand rebrand Sentinel → Sentainel

---

## Recommended next session priorities

1. **Apply migrations against actual Postgres** to verify execution (not just syntax balance). Spin up a Supabase project or local Docker postgres+pgvector, run `python etl/migrate.py --dry-run` then `python etl/migrate.py`. Catches any FK / type / extension surprises before they show up in production.
2. **Rebrand marketing site** — `/home/claude/sentinel-site/index.html` still uses old "Sentinel" name; 20-minute fix. Case-preserving find-replace Sentinel → Sentainel.
3. **Ontario stack completion** — Bill 194 (EDSTA, ~7 obligations), PHIPA + AI Scribe (~8 obligations, healthcare angle), Trustworthy AI Framework (~6 obligations, explicitly references NIST AI RMF). Biggest content lift but most strategic since Ontario is the second-largest Canadian market. Would push the repo to ~65 obligations.
4. **Illinois BIPA extraction (V1.5)** — biometric overlay for Illinois hiring AI; the $1K-$5K per-violation private right of action is the most aggressive damages regime in the US AI stack. ~5 obligations. Pairs with the existing HRA AI + AIVIA work.
5. **Deploy the viz** — `cross-references/viz/index.html` v1.2 is ready. Netlify drop, Vercel, or Cloudflare Pages.
6. **California SB 942 + AB 2013** — significant market size add, ~11 obligations.
7. **AMO outreach email** — drafted but never sent; Lindsay Jones at ljones@amo.on.ca for municipal phase 3.
8. **EU AI Act high-risk overlay** — positions for international expansion ahead of Aug 2, 2026 enforcement.

---

## Operating principles for this repo

- **Verify by reading the repo before claiming work was done** — prior session journals have repeatedly overstated progress. Use `Github:get_file_contents` or local `ls` before assuming a file is missing.
- Every obligation: confidence-scored, ambiguity-noted, NIST cross-referenced
- Reviewer field always: `web@sentainel.com`
- Never edit obligations in place without updating the changelog
- Commits should mention what jurisdiction + which obligations + what file types
- When pushing many files, use `push_files` (single commit) rather than `create_or_update_file` (N commits). Per-file calls are 5–10× higher overhead.
