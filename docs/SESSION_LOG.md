# Sentainel Repo Session Log

This file is the authoritative record of what's in the repo, when it landed, and what's planned next. Read this **first** in any new session before re-extracting anything.

---

## Current Repo State (2026-05-13, evening)

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
| `cross-references/README.md` | ✅ | Strategic narrative + high-leverage controls table |
| `cross-references/nist-controls.yaml` | ✅ | Full NIST AI RMF catalog (46 base + 12 GenAI Profile) with ISO 42001 equivalents |
| `cross-references/coverage-matrix.csv` | 🟡 | 248 obligation×control rows covering first 44 obligations; Ontario EDSTA (7) + PHIPA (8) = 15 obligations PENDING addition (~120 new rows expected) |
| `cross-references/mappings/nist-to-us-tx-traiga.yaml` | ✅ | 12 obligations mapped |
| `cross-references/mappings/nist-to-ca-qc-law-25.yaml` | ✅ | 17 obligations mapped |
| `cross-references/mappings/nist-to-ca-on-stack.yaml` | 🟡 | Currently 7 Ontario obligations (Bill 149 + Code + MFIPPA); EDSTA (7) + PHIPA (8) PENDING addition |
| `cross-references/mappings/nist-to-us-il-stack.yaml` | ✅ | 8 Illinois obligations mapped |
| `cross-references/viz/index.html` | 🟡 **v1.2** | 44 obligations, 4 jurisdictions; Ontario EDSTA + PHIPA refresh PENDING for v1.3 (target: 59 obligations, hero stats refresh, JURISDICTIONS array unchanged since both new regs are Ontario) |
| `cross-references/viz/README.md` | ✅ v1.1 | Viz documentation |

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
| `README.md` | ✅ Reflects current state (updated 2026-05-13 evening) |
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

- `/mnt/user-data/outputs/sentainel-site.html` — Marketing site, NOW REBRANDED to "Sentainel" (15 instances substituted). Ready to deploy via Netlify drop or Vercel CLI. NOT YET DEPLOYED.

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

### 2026-05-13 (evening — Ontario stack expansion: EDSTA + PHIPA)
- **Verified prior session work was actually pushed.** Compaction summary had wrongly flagged migrations + Illinois extractions + viz v1.2 + coverage matrix as in-flight; reading the repo confirmed all were already on `main`. Operating principle reinforced: ALWAYS verify by `Github:get_file_contents` before re-extracting.
- **Marketing site rebrand completed**: case-preserving Sentinel→Sentainel substitution in `/home/claude/sentainel-site/index.html` (15 instances, 0 remaining). File staged at `/mnt/user-data/outputs/sentainel-site.html` (54KB) ready for Netlify drop. Mock URLs updated to `discovery.sentainel.com` and `proxy.sentainel.com`. Local dir renamed to `sentainel-site`.
- **Ontario EDSTA (Bill 194) extraction COMPLETE** — 7 obligations (s. 5(2) public information, s. 5(3) accountability framework keystone, s. 5(4) risk management, s. 5(5) purpose limitation, s. 5(6) prohibited uses, s. 6(2)(a) specific-use disclosure, s. 6(2)(b) human oversight) + metadata (12KB) + notes (6.4KB) + changelog. Status `enacted_not_in_force` — Royal Assent Nov 25, 2024; AI provisions Schedule 1 ss. 5–8 un-proclaimed. Framed as "horizon obligation": s. 12 disclaims private duty of care, but parallel exposure under Code (uncapped) + FIPPA IPC orders remains intact. Confidence 0.88–0.92.
- **Ontario PHIPA + AI Scribe Guidance extraction COMPLETE** — 8 obligations (AI governance committee, PIA pre-deployment, express patient consent, data minimization, vendor due diligence, 60-day breach notification, human oversight + clinical accountability, training + confidentiality) + metadata (12KB) + notes (5.9KB) + changelog. Status `in_force` — PHIPA since 2004; AMPs since Jan 2024; IPC AI Scribe Guidance Jan 28, 2026. Most enforcement-active Ontario AI regime: AMPs to $500K + criminal to $1M + civil to $10K. Captures Otter.ai hospital incident, CPSO Advice overlay (Aug 2025), vendor training prohibition, Decision 298 precedent (2025 ONSC 5208). Confidence 0.92–0.95.
- **Docs refreshed**: README and SESSION_LOG updated to reflect 59 obligations across 9 regulations and 4 jurisdictions.
- **Push efficiency lesson**: switched from individual `create_or_update_file` to `push_files` for PHIPA obligations (4 + 4 batch). Significant time savings vs. one-at-a-time pushes.

### 2026-05-13 (late afternoon — Illinois + Postgres schema)
- Pushed full Postgres schema: 10 idempotent migrations (0001–0010) + migrate.py runner + migrations/README.md
- Pushed Illinois HRA AI extraction (4 obligations) and Illinois AIVIA extraction (4 obligations)
- Pushed `nist-to-us-il-stack.yaml` (8 obligations × ~50 control mappings)
- Updated coverage-matrix.csv with 53 Illinois rows → total 248 rows / 44 obligations / 4 jurisdictions / 58 unique NIST controls
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

1. **Update `cross-references/mappings/nist-to-ca-on-stack.yaml`** — add EDSTA (7) + PHIPA (8) = 15 new obligation→NIST mappings. Already drafted in obligation `ai_specific_application` fields and `notes.md` cross-walk tables; mainly transcription work.

2. **Update `cross-references/coverage-matrix.csv`** — add ~120 new rows for the 15 Ontario obligations (avg 7-8 NIST controls per obligation). Target: 368-row matrix.

3. **Re-embed updated CSV into `cross-references/viz/index.html`** — bump v1.2 → v1.3. Update hero stats (44→59 obligations, 7→9 regulations), keep JURISDICTIONS array (both new regs are CA-ON, already in list). The viz code change is minimal; the CSV swap is the main work.

4. **Update `README.md` and `docs/SESSION_LOG.md`** after viz refresh to remove the "Ontario-stack refresh pending" caveats.

5. **Deploy the marketing site** — `/mnt/user-data/outputs/sentainel-site.html` is ready. Netlify drop is fastest.

6. **Ontario Trustworthy AI Framework extraction** — ~6 obligations. Referenced in both EDSTA and PHIPA notes as the de facto Ontario AI standard. Cited by Fasken/BLG commentary as the likely model for EDSTA s. 7(d) regulations.

7. **Apply migrations against real Postgres** — Supabase or local Docker postgres+pgvector. `python etl/migrate.py --dry-run` then `python etl/migrate.py`. Catches FK / type / extension surprises before production.

8. **California SB 942 + AB 2013** — significant market size add, ~11 obligations.

9. **Illinois BIPA V1.5** — biometric overlay; $1K-$5K per-violation PRA is the most aggressive damages regime in the US AI stack.

10. **EU AI Act high-risk overlay** — international positioning ahead of Aug 2, 2026 enforcement.

11. **AMO outreach email** — drafted but never sent; Lindsay Jones at ljones@amo.on.ca for municipal Phase 3.

---

## Operating principles for this repo

- **Verify by reading the repo before claiming work was done** — prior session journals have repeatedly overstated progress. Use `Github:get_file_contents` or local `ls` before re-extracting. The May 13 evening session confirmed all "in-flight" work from prior compaction was actually pushed.
- **Use `Github:push_files` (single commit) when pushing 2+ files.** Individual `create_or_update_file` calls cost 5–10× the tool budget. Demonstrated efficiency gain on the PHIPA batch.
- Every obligation: confidence-scored, ambiguity-noted, NIST cross-referenced
- Reviewer field always: `web@sentainel.com`
- Never edit obligations in place without updating the changelog
- Commits should mention what jurisdiction + which obligations + what file types
