# Sentainel Niagara Region Demo Bundle

**Four municipal AI compliance audit packages. Built from public-record evidence. May 2026.**

This directory contains complete, audit-ready AI compliance assessments for four Niagara Region municipalities: **Niagara Falls**, **St. Catharines**, **Niagara-on-the-Lake**, and **Thorold**. Each package is built against the Ontario municipal AI regulatory stack documented in `docs/MUNICIPAL_STACK.md` — five layers, 26 obligations.

These are real audits of real AI exposures, based on publicly verifiable evidence. They are not template fill-ins.

---

## What's in each city's package

Each city has its own directory under `demos/niagara/{city-slug}/` containing 10 documents:

| # | Document | Purpose |
|---|---|---|
| 01 | `01-ai-inventory.md` | Complete map of every AI system the city operates, based on public records |
| 02 | `02-pia-template.md` | MFIPPA Bill 97 Privacy Impact Assessment for the highest-risk system |
| 03 | `03-aia-template.md` | Algorithmic Impact Assessment aligned with IPC-OHRC Principles |
| 04 | `04-ipc-ohrc-alignment.md` | Per-system alignment scoring against the 7 IPC-OHRC principles |
| 05 | `05-council-brief.md` | One-page council-ready summary of AI compliance posture |
| 06 | `06-recourse-workflow.md` | Public-facing recourse mechanism (IPC-OHRC p7) |
| 07 | `07-ipc-complaint-prep.md` | What to do when an IPC investigation begins |
| 08 | `08-whistleblower-procedure.md` | MFIPPA Bill 97 + IPC-OHRC whistleblower channel design |
| 09 | `09-vendor-questionnaire.md` | Municipal AI vendor due-diligence questionnaire |
| 10 | `10-cover-letter-to-cao.md` | The actual outreach letter, written for that city's named CAO |

Total per city: ~15-25 pages of audit-ready material. Total bundle: ~80 pages.

---

## Why these four cities

| City | Population | Lead AI exposure | Key hook |
|---|---|---|---|
| **Niagara Falls** | 95,000 | Senior staff (GM Municipal Works) used ChatGPT for a council-presented report; admitted "not a scientific survey." Casino corridor + tourist surveillance. | [Public-record citation](https://www.nationalobserver.com/2026/04/30/analysis/ai-ontario-municipal-politics) of unmanaged generative AI in a council report |
| **St. Catharines** | 140,000 | Live production chatbot "Catharine" (Microsoft Copilot Studio, launched Feb 2025) collecting personal information. | Largest Niagara municipality + most operationally exposed AI deployment |
| **Niagara-on-the-Lake** | 19,000 | Third-party AI monitors Short Term Rental ads + Shaw Festival surveillance ecosystem + heavy heritage zone enforcement. | Tourism-economy AI without a public AI policy |
| **Thorold** | 20,000 | Targeted by external AI chatbot misinformation campaign that drove a 7–1 council vote to leave Partners for Climate Protection. | Small city = fast adoption path; already burned by AI = receptive audience |

All four are MFIPPA institutions. All four are subject to the same five-layer regulatory stack. All four use the **Niagara Regional Police Service** which deploys Axon In-Car Camera + Automatic License Plate Recognition under unified MFIPPA framework — an umbrella exposure shared across the bundle.

---

## Methodology

Every claim about a city's AI deployment in these packages is sourced from one of:

1. **Vendor case studies** publicly published (e.g. HSO + Microsoft on St. Catharines Catharine chatbot)
2. **Investigative journalism** with named officials (e.g. Canada's National Observer on Niagara Falls)
3. **Official municipal communications** (council minutes, press releases, the city's own website)
4. **Regional service disclosures** (Niagara Regional Police Service ALPR public information)

Where Sentainel has **inferred** an AI exposure (e.g. the NOTL "third-party compliance company" monitoring STR ads is almost certainly an AI-based content monitor), the document explicitly says **[INFERRED]**. Cities can confirm or correct.

Confidence levels:
- **High** — vendor case study or staff statement on record
- **Medium** — strong public-record inference (e.g. NRP ALPR umbrella applying to all 4)
- **Low** — exposure pattern typical for municipality of this size + sector mix

---

## How to use this bundle

**If you're the city's CAO, Clerk, or IT Director:** Read `10-cover-letter-to-cao.md` first. Then `05-council-brief.md`. The other documents are evidence — read them when you want depth on a specific concern.

**If you're an Ontario municipal sector partner (AMO, MISA, ONWAC, OMSSA):** Read `demos/niagara/README.md` (this file), then any one city's `01-ai-inventory.md` to see the rigor of Sentainel's atomic-obligation methodology.

**If you're an IPC or OHRC investigator:** All confidence scores, source URLs, and ambiguity notes are inline. The mappings to NIST AI RMF controls (the universal cross-reference) are linked back to `/matrix` for verification.

---

## The Ontario municipal regulatory stack these packages address

| Layer | Regulation | Status | Repo location |
|---|---|---|---|
| 1 | MFIPPA Bill 97 amendments | In force Jul 1, 2026 + Jan 1, 2027 | `regulations/ca-on-mfippa/` |
| 2 | IPC-OHRC Joint Principles | In force Jan 21, 2026 | `regulations/ca-on-ipc-ohrc-principles/` |
| 3 | Trustworthy AI Framework + OPS Directive | In force Dec 1, 2024 (provincial) | `regulations/ca-on-trustworthy-ai-framework/` |
| 4 | EDSTA Bill 194 AI provisions | Royal Assent Nov 2024, un-proclaimed | `regulations/ca-on-bill-194-edsta/` |
| 5 | Ontario Human Rights Code s. 9 | In force | `regulations/ca-on-human-rights-code/` |
| + | Ontario Bill 149 ESA s. 8.4 (hiring AI) | In force Jan 1, 2026 | `regulations/ca-on-bill-149/` |
| + | PHIPA AI Scribe Guidance | In force | `regulations/ca-on-phipa-ai-scribe/` |

Total Ontario obligations applicable to Niagara municipalities: **26** (excluding PHIPA which applies only to health-affiliated services).

---

## Pricing context

Sentainel Municipal Edition is **$1,499/month per municipality**. The bundle delivered:

| Service component | Equivalent professional services cost (Ontario benchmark) |
|---|---|
| PIA for one AI system | $8,000 – $25,000 |
| AIA for one AI system | $12,000 – $40,000 |
| AI inventory + classification | $15,000 – $50,000 |
| Council brief + governance document set | $5,000 – $15,000 |
| Vendor questionnaire + DPA package | $3,000 – $10,000 |
| **One-time delivery total (mid-range)** | **$43,000 – $140,000** |

Sentainel Municipal Edition delivers this every month, plus continuous monitoring, plus IPC complaint preparation, for $17,988/year. **Break-even vs. one-time professional services occurs in month 3.**

For a city like Thorold (~$30M annual budget), this is rounding-error spend. For St. Catharines (~$200M+ budget), it's invisible. **The bottleneck is not budget. It's awareness.** That's what this bundle is for.

---

## Changelog

- **2026-05-13**: Initial bundle published. Four cities: Niagara Falls, St. Catharines, Niagara-on-the-Lake, Thorold.

---

## Contact

Web, Sentainel Compliance · `web@sentainel.com` · Built from Montréal, QC, for Niagara Region.
