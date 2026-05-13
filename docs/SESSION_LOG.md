# Sentainel Repo Session Log

This file is the authoritative record of what's in the repo, when it landed, and what's planned next. Read this **first** in any new session before re-extracting anything.

---

## Current Repo State (2026-05-13, end of day)

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
| Ontario EDSTA (Bill 194) | `regulations/ca-on-bill-194-edsta/` | 7 | 0.90 | ✅ Complete (enacted not in force; AI provisions un-proclaimed) |
| Ontario PHIPA + AI Scribe Guidance | `regulations/ca-on-phipa-ai-scribe/` | 8 | 0.94 | ✅ Complete (PHIPA in force; AMPs since Jan 2024; IPC Guidance Jan 2026) |

**Total in repo: 59 atomic obligations** across 9 regulations and 4 jurisdictions.

### Cross-references

| File | Status | Notes |
|---|---|---|
| `cross-references/README.md` | ✅ v1.3 | Strategic narrative + high-leverage controls table (GOVERN-1.1 hits 59/59) + sectoral hooks |
| `cross-references/nist-controls.yaml` | ✅ | Full NIST AI RMF catalog (46 base + 12 GenAI Profile) with ISO 42001 equivalents |
| `cross-references/coverage-matrix.csv` | ✅ **COMPLETE** | 341 obligation×control rows covering all 59 obligations. Per-jurisdiction: 22 CA-ON · 17 CA-QC · 12 US-TX · 8 US-IL. 58 unique NIST controls. |
| `cross-references/mappings/nist-to-us-tx-traiga.yaml` | ✅ | 12 obligations mapped |
| `cross-references/mappings/nist-to-ca-qc-law-25.yaml` | ✅ | 17 obligations mapped |
| `cross-references/mappings/nist-to-ca-on-stack.yaml` | ✅ **COMPLETE** | 22 obligations: Bill 149 + Code + MFIPPA + EDSTA (7) + PHIPA (8). Aggregate: top-10 NIST controls cover ~85%, GOVERN-1.1 hits all 22. |
| `cross-references/mappings/nist-to-us-il-stack.yaml` | ✅ | 8 Illinois obligations mapped |
| `cross-references/viz/index.html` | ✅ **v1.3 LIVE** | 73KB. 59 obligations / 9 regulations / 4 jurisdictions. JURISDICTIONS array, prettyObl, hero stats, nav/footer all v1.3. Embedded 341-row CSV byte-identical to standalone file. |
| `cross-references/viz/README.md` | ✅ v1.3 | Viz documentation synced; covers EDSTA + PHIPA share-link patterns and updated iframe fallback height |

### Postgres schema

| File | Status |
|---|---|
| `etl/migrations/0001_init.sql` through `0010_views.sql` | ✅ All 10 migrations pushed |
| `etl/migrations/README.md` | ✅ |
| `etl/migrate.py` | ✅ |

Migrations are syntactically validated. NOT YET applied against a real Postgres instance.

### Infrastructure

| File | Status |
|---|---|
| `README.md` | ✅ Reflects current state (updated 2026-05-13 end of day) |
| `docs/METHODOLOGY.md` | ✅ |
| `docs/ONTARIO_STACK.md` | ✅ |
| `docs/SESSION_LOG.md` | ✅ |

---

## What's NOT in the repo (pending)

| Target | Estimated Obligations | Priority Notes |
|---|---|---|
| Ontario Trustworthy AI Framework | ~6 | Referenced in EDSTA + PHIPA notes; the de facto Ontario AI standard |
| California SB 942 + AB 2013 | ~11 | Significant market size |
| Colorado SB 26-189 | ~20 | DEFERRED — wait for Polis signature + AG rulemaking |
| Illinois BIPA (740 ILCS 14) | ~5 | Biometric overlay for Illinois hiring AI; $1K-$5K per-violation PRA |
| Quebec CQLR c. A-2.1 | ~15 | Public-sector parallel of Law 25; municipal AI |
| Quebec Loi 5 (Act respecting health and social services information) | ~10 | Health AI parallel for Quebec; in force July 2024 |
| EU AI Act (high-risk overlay) | ~30 | Enforcement Aug 2, 2026 |
| Illinois Automated Decision Tools Act (HB 5116) | ~10 | Pending, high probability 2027 passage |

---

## Working files NOT in this repo

- `/mnt/user-data/outputs/sentainel-site.html` (54KB) — Marketing site, REBRANDED to Sentainel (15 instances substituted). Ready to deploy via Netlify drop or Vercel CLI. NOT YET DEPLOYED.
- `/mnt/user-data/outputs/sentainel-viz-v1.3.html` (73KB) — Identical to the now-pushed `cross-references/viz/index.html`. Kept as a Netlify-drop-ready artifact for the customer-facing sales URL (independent of the repo deployment path).

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
| Ontario PHIPA AMPs (s. 61.1) in force | Jan 1, 2024 | $50K individual / $500K organization + economic benefit |
| Ontario IPC AI Scribe Guidance | Jan 28, 2026 | Operational baseline for HIC AI use; AMP-eligible if departed from |
| Ontario Bill 194 / EDSTA Royal Assent | Nov 25, 2024 | AI provisions un-proclaimed; FIPPA Sched. 2 partial force Jan 29, 2025 + PIA/breach July 1, 2025 |
| Quebec Law 25 — all phases in force | Sept 22, 2024 | CAD $25M / 4% worldwide turnover |
| Quebec Anonymization Regulation | May 30, 2024 (in force) | Same as Law 25 |
| EU AI Act high-risk enforcement | Aug 2, 2026 | €35M / 7% worldwide turnover |
| TRAIGA AG complaint portal | Sept 1, 2026 | — |
| Colorado SB 26-189 new effective | Jan 1, 2027 (after rulemaking) | TBD |
| Illinois IDHR final rules expected | Q3 2026 | Per HB 3773 § 2-102(L) delegation |

---

## Session-by-session changelog

### 2026-05-13 (end of day — viz v1.3 pushed to repo + docs refreshed)
- **Verified prior session state by reading repo first** — coverage-matrix.csv already at 341 rows / 59 obligations (commit `09ccae4a`). Compaction summary was stale; verified by `Github:get_file_contents` before doing any work.
- **Viz v1.3 pushed to repo** (commit `07569d6`) — 73KB inline payload. Read full file content into context via `view` on `/tmp/viz_content.txt`, then passed verbatim to `Github:create_or_update_file`. Lesson: context budget allows ~73KB inline pushes when the working set is small. The deferral noted in the prior session was solved by tightening the context.
- **viz/README.md synced to v1.3** (commit `e1fd958`) — adds jurisdictions table with all 9 regulations, expanded `?juris=` examples covering EDSTA + PHIPA, iframe fallback `min-height` bumped 3200→3600px to accommodate larger matrix, version history adds v1.2 + v1.3 entries.
- **cross-references/README.md synced to v1.3 reality** (commit `e26a264`) — dropped stale v1.0 framing (36 obligations / 4 jurisdictions). Refreshed coverage density table for all 9 regulations, high-leverage controls table now shows GOVERN-1.1 hitting 59/59, file structure mentions consolidated `nist-to-ca-on-stack.yaml` and `nist-to-us-il-stack.yaml`, added sectoral hooks section (healthcare PHIPA, public-sector EDSTA, employment IL+ON, Texas sandbox SKU), expanded caveats for EDSTA proclamation status.

### 2026-05-13 (late evening — Ontario integration into cross-reference layer)
- **NIST Ontario mapping extended**: `cross-references/mappings/nist-to-ca-on-stack.yaml` went from 7 → 22 obligations. Added EDSTA (7) + PHIPA (8) with full per-obligation control mappings, fresh aggregate (top-10 controls cover ~85%, GOVERN-1.1 hits all 22), and Ontario-specific gap callouts for EDSTA proclamation-readiness, PHIPA patient consent + 60-day clock + CPSO verification.
- **Coverage matrix extended**: `cross-references/coverage-matrix.csv` went from 248 → 341 rows. Added 93 new rows covering the 15 Ontario obligations (avg 6.2 NIST controls per obligation). Per-jurisdiction breakdown: 22 CA-ON, 17 CA-QC, 12 US-TX, 8 US-IL. 58 unique NIST controls.
- **Viz v1.3 build**: programmatically rebuilt `cross-references/viz/index.html` from v1.2 — embedded the 341-row CSV, refreshed hero stats (44→59 obligations, 7→9 regulations), bumped nav-meta and footer to v1.3, appended EDSTA + PHIPA to JURISDICTIONS (now 9 entries), extended prettyObl with `ca-on-bill-194-edsta-` → `EDSTA` and `ca-on-phipa-` → `PHIPA` substitutions. Validated: 9 JURISDICTIONS entries, CSV embedded byte-identical to standalone file, all v1.2 / 44-obligation references removed.
- **Viz re-push deferred**: 73KB HTML payload was too large to inline-push within that session's context budget. Build was staged at `/mnt/user-data/outputs/sentainel-viz-v1.3.html`. (Resolved next session — see end-of-day entry above.)
- **Docs refreshed**: README and SESSION_LOG updated to reflect: coverage matrix COMPLETE, NIST Ontario mapping COMPLETE, viz v1.3 staged (not in repo).

### 2026-05-13 (evening — Ontario stack expansion: EDSTA + PHIPA)
- Verified prior session work was actually pushed. Operating principle reinforced: ALWAYS verify by `Github:get_file_contents` before re-extracting.
- Marketing site rebrand completed (case-preserving Sentinel→Sentainel, 15 instances). File staged at `/mnt/user-data/outputs/sentainel-site.html` (54KB) ready for Netlify drop. NOT deployed.
- Ontario EDSTA (Bill 194) extraction COMPLETE — 7 obligations + metadata (12KB) + notes (6.4KB) + changelog. Status `enacted_not_in_force` — Royal Assent Nov 25, 2024; AI provisions Schedule 1 ss. 5–8 un-proclaimed. Confidence 0.88–0.92.
- Ontario PHIPA + AI Scribe Guidance extraction COMPLETE — 8 obligations + metadata (12KB) + notes (5.9KB) + changelog. Most enforcement-active Ontario AI regime: AMPs to $500K + criminal to $1M + civil to $10K. Confidence 0.92–0.95.
- Switched to `Github:push_files` for the PHIPA batch (4+4 obligations in two commits) — significant efficiency gain over individual `create_or_update_file` calls.

### 2026-05-13 (late afternoon — Illinois + Postgres schema)
- Pushed full Postgres schema: 10 idempotent migrations (0001–0010) + migrate.py runner + migrations/README.md
- Pushed Illinois HRA AI extraction (4 obligations) and Illinois AIVIA extraction (4 obligations)
- Pushed `nist-to-us-il-stack.yaml` (8 obligations × ~50 control mappings)
- Updated coverage-matrix.csv with 53 Illinois rows → 248 rows / 44 obligations / 4 jurisdictions / 58 unique NIST controls
- Pushed viz v1.2 with Illinois HRA AI + AIVIA, Illinois filter button, hero stats refresh
- Updated root README.md and docs/SESSION_LOG.md

### 2026-05-13 (afternoon — viz v1.1)
- Query-param state hydration via `?juris=`, URL auto-update on toggle
- Copy Link button + Print/PDF stylesheet + iframe resize protocol via postMessage
- Bumped to v1.1 in nav and footer

### 2026-05-13 (late morning — viz v1.0 build)
- Built customer-facing interactive matrix viz at `cross-references/viz/index.html`
- Self-contained 50KB HTML with embedded data
- Visual QA via Playwright screenshots

### 2026-05-13 (morning)
- Pushed Quebec Law 25 final batch (17 obligations + metadata + changelog + notes)
- Pushed full cross-references suite

### 2026-05-13 (early morning)
- Quebec Law 25 partial extraction (15 → 17 obligations)
- TRAIGA full extraction (12 obligations) + push

### 2026-05-12
- Initial repo creation, Ontario Bill 149 + Code + MFIPPA extraction, brand rebrand Sentinel → Sentainel

---

## Recommended next session priorities

1. **Deploy the marketing site** — `/mnt/user-data/outputs/sentainel-site.html` ready for Netlify drop. Drag-drop netlify.com/drop → URL in 30 seconds. Or `vercel --prod` from a local clone.

2. **Deploy the v1.3 viz as a standalone sales URL** — Netlify drop the staged file at `/mnt/user-data/outputs/sentainel-viz-v1.3.html`, or just point Vercel at the repo and serve `cross-references/viz/index.html`. Customer-facing sales URL with shareable `?juris=` deep-links.

3. **Ontario Trustworthy AI Framework extraction** — ~6 obligations. Referenced in both EDSTA and PHIPA notes as the de facto Ontario AI standard. Cited by Fasken/BLG commentary as the likely model for EDSTA s. 7(d) regulations.

4. **Apply migrations against real Postgres** — Supabase or local Docker postgres+pgvector. `python etl/migrate.py --dry-run` then `python etl/migrate.py`. Catches FK / type / extension surprises before production.

5. **California SB 942 + AB 2013** — significant market size add, ~11 obligations.

6. **Illinois BIPA V1.5** — biometric overlay; $1K-$5K per-violation PRA is the most aggressive damages regime in the US AI stack.

7. **EU AI Act high-risk overlay** — international positioning ahead of Aug 2, 2026 enforcement.

8. **AMO outreach email** — drafted but never sent; Lindsay Jones at ljones@amo.on.ca for municipal Phase 3.

---

## Operating principles for this repo

- **Verify by reading the repo before claiming work was done.** Prior session journals have repeatedly overstated progress. Use `Github:get_file_contents` or local `ls` before re-extracting. Demonstrated again this session: the compaction summary marked the coverage matrix and viz v1.3 as pending, but the matrix was already in the repo (commit `09ccae4a`) and the viz only needed a 73KB push.
- **Use `Github:push_files` (single commit) when pushing 2+ files** — 5–10× more efficient than individual `create_or_update_file` calls.
- **Large single-file pushes (50KB+) are feasible inline** when the context budget is otherwise quiet. The viz v1.3 was pushed in 73KB this session by `view`-ing it into context and passing the content directly to `create_or_update_file`. Stage to `/mnt/user-data/outputs` only when the working set already has heavy context.
- Every obligation: confidence-scored, ambiguity-noted, NIST cross-referenced
- Reviewer field always: `web@sentainel.com`
- Never edit obligations in place without updating the changelog
- Commits should mention what jurisdiction + which obligations + what file types
