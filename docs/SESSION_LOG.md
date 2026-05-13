# Sentainel Repo Session Log

This file is the authoritative record of what's in the repo, when it landed, and what's planned next. Read this **first** in any new session before re-extracting anything.

---

## Current Repo State (2026-05-13)

### Regulations in repo

| Regulation | Path | Obligations | Avg Confidence | Status |
|---|---|---|---|---|
| Texas TRAIGA | `regulations/us-tx-traiga/` | 12 | 0.94 | ✅ Complete |
| Quebec Law 25 | `regulations/ca-qc-law-25/` | 17 | 0.93 | ✅ Complete |
| Ontario Bill 149 (ESA) | `regulations/ca-on-bill-149/` | 1 | 0.95 | ✅ Initial (more obligations possible from later ESA amendments) |
| Ontario Human Rights Code | `regulations/ca-on-human-rights-code/` | 1 | 0.94 | ✅ Initial (s. 9 only; other Code sections add ~3 more) |
| Ontario MFIPPA (Bill 97) | `regulations/ca-on-mfippa/` | 5 | 0.93 | ✅ Complete |

**Total in repo: 36 atomic obligations** across 5 regulations.

### Cross-references

| File | Status | Notes |
|---|---|---|
| `cross-references/README.md` | ✅ | Strategic narrative + high-leverage controls table |
| `cross-references/nist-controls.yaml` | ✅ | Full NIST AI RMF catalog (46 base + 12 GenAI Profile) with ISO 42001 equivalents |
| `cross-references/coverage-matrix.csv` | ✅ | 195 obligation×control rows |
| `cross-references/mappings/nist-to-us-tx-traiga.yaml` | ✅ | 12 obligations mapped, with implementation priority tiers |
| `cross-references/mappings/nist-to-ca-qc-law-25.yaml` | ✅ | 17 obligations mapped, with Quebec-specific gaps called out |
| `cross-references/mappings/nist-to-ca-on-stack.yaml` | ✅ | 7 Ontario obligations mapped (Bill 149 + Code + MFIPPA) |
| `cross-references/viz/index.html` | ✅ **v1.1** | Customer-facing interactive viz: URL state (`?juris=`), Copy Link, Print/PDF, postMessage iframe resize |
| `cross-references/viz/README.md` | ✅ **v1.1** | Viz documentation: query params, print stylesheet, iframe embed protocol |

### Infrastructure

| File | Status |
|---|---|
| `README.md` | ✅ Reflects current state (updated 2026-05-13) |
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
| Illinois HRA AI (775 ILCS 5/2-102(L)) | ~9 | Effective Jan 1, 2026; pure US-state add |
| California SB 942 + AB 2013 | ~11 | Significant market size |
| Colorado SB 26-189 | ~20 | DEFERRED — wait for Polis signature + AG rulemaking initiation (re-add Q4 2026 watch) |
| Quebec CQLR c. A-2.1 | ~15 | Public-sector parallel of Law 25; municipal AI |
| EU AI Act (high-risk overlay) | ~30 | Enforcement Aug 2, 2026; positions Sentainel for international expansion |
| NIST AI RMF deep control elaboration | already cataloged | Catalog exists; per-control evidence templates pending |
| ISO/IEC 42001 standalone mapping file | — | Currently shown as inline `iso_42001_equivalent` per NIST control; could be split out |

---

## Working files NOT in this repo

Some assets live outside the repo and should not be assumed to be deployed:

- `/home/claude/sentinel-site/index.html` — Marketing site, **still uses old "Sentinel" brand**. Rebrand pass to "Sentainel" pending.
- `/mnt/user-data/outputs/sentinel.html` — Earlier marketing build, also pre-rebrand.
- Postgres schema migrations (10 SQL files mentioned in prior sessions) — never committed to repo. Need to land in `etl/migrations/` when next session is ready.

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
| Ontario Bill 149 effective | Jan 1, 2026 (in force) | $100K individual / $500K–$1.5M corp |
| Ontario MFIPPA Bill 97 effective | July 1, 2026 + Jan 1, 2027 | Order-binding via IPC |
| Quebec Law 25 — all phases in force | Sept 22, 2024 | CAD $25M / 4% worldwide turnover |
| Quebec Anonymization Regulation | May 30, 2024 (in force) | Same as Law 25 |
| EU AI Act high-risk enforcement | Aug 2, 2026 | €35M / 7% worldwide turnover |
| TRAIGA AG complaint portal | Sept 1, 2026 | — |
| Colorado SB 26-189 new effective | Jan 1, 2027 (after rulemaking) | TBD |

---

## Session-by-session changelog

### 2026-05-13 (afternoon — viz v1.1)
- Added query-param state hydration: `?juris=US-TX,CA-QC` pre-selects jurisdictions on load
- Group codes (`US-TX`, `CA-QC`, `CA-ON`) and specific codes (`us-tx-traiga`, etc.) both supported
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
- Auto-selects all jurisdictions on load → "36 obligations, 5 controls cover 97%, $190K-$465K direct vs $60K Sentainel"
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

1. **Deploy the viz** — `cross-references/viz/index.html` v1.1 is ready to ship. Options:
   - **Netlify drop** (recommended) — drag the file onto netlify.com/drop, get a `*.netlify.app` URL in 30 seconds. Pair domain to it if you want sentainel-matrix.com or similar
   - **Vercel** — `vercel deploy cross-references/viz` from CLI
   - **Cloudflare Pages / S3** — same drop, same result
   - **GitHub Pages** — only if you make the repo public (currently private)
2. **Rebrand marketing site** — `/home/claude/sentinel-site/index.html` still uses old "Sentinel" name; 20-minute fix
3. **Postgres schema migrations** — land in `etl/migrations/` so the ETL is actually runnable
4. **Illinois HRA AI extraction** — adds another US state jurisdiction, ~9 obligations expected. Pairs naturally with Ontario Bill 149 as an "AI hiring compliance" sub-vertical
5. **Ontario stack completion** — Bill 194 (EDSTA), PHIPA + AI Scribe, Trustworthy AI Framework to fully complete Ontario coverage
6. **California SB 942 + AB 2013** — significant market size add
7. **AMO outreach email** — drafted but never sent; Lindsay Jones at ljones@amo.on.ca for municipal phase 3
8. **EU AI Act high-risk overlay** — positions for international expansion ahead of Aug 2, 2026 enforcement

---

## Operating principles for this repo

- **Verify by reading the repo before claiming work was done** — prior session journals have repeatedly overstated progress
- Every obligation: confidence-scored, ambiguity-noted, NIST cross-referenced
- Reviewer field always: `web@sentainel.com`
- Never edit obligations in place without updating the changelog
- Commits should mention what jurisdiction + which obligations + what file types
