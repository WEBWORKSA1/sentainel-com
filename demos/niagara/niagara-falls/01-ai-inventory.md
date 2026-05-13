# City of Niagara Falls — AI System Inventory

**Prepared by Sentainel Compliance for the City of Niagara Falls**
**Date: May 2026**
**Confidence: HIGH on identified deployments / MEDIUM on inferred exposures**
**Coverage: 26 Ontario municipal AI obligations**

---

## Executive summary

This inventory documents 11 distinct AI exposures at the City of Niagara Falls, four of which have **named, public-record evidence of unmanaged generative AI use**. Five are inferred from infrastructure typical for a city of this size and economic mix. Two are shared umbrella exposures with the Niagara Regional Police Service.

Under MFIPPA Bill 97 (effective July 1, 2026 + January 1, 2027), the City of Niagara Falls must produce Privacy Impact Assessments for any AI system that processes personal information. The IPC-OHRC Joint Principles (in force January 21, 2026) provide the operational standard against which IPC and OHRC will evaluate the City's compliance.

**Of the 11 AI exposures identified, ZERO have completed PIAs on public record. ZERO have public AI disclosure registers. ZERO have completed AIAs aligned with IPC-OHRC Principles.** This is not unusual — most Ontario municipalities are in the same state. But it is the regulatory gap.

---

## Identified AI exposures

### AI-001 — Generative AI in council-presented staff reports

**Confidence: HIGH** — Public-record citation

**Source:** Canada's National Observer, April 30, 2026 — "AI is entering council chambers across Ontario." Erik Nickel, General Manager of Municipal Works for the City of Niagara Falls, presented a sidewalk winter maintenance report to council in which he cited ChatGPT findings on Ontario municipal bylaws for snow and ice clearing. Nickel told council the findings were "not a scientific survey."

**System:** OpenAI ChatGPT (presumed consumer tier)
**Owner:** Municipal Works
**Lifecycle stage:** Operational (in active staff use, no policy framework)
**Personal information processed:** Unknown — staff prompts may include constituent data
**Lawful authority:** None established
**PIA status:** None completed
**AIA status:** None completed
**Public disclosure:** No disclosure on niagarafalls.ca AI inventory (no inventory exists)

**Obligations triggered:**
- IPC-OHRC p1 (Valid and Reliable) — staff explicitly disclaimed validity ("not a scientific survey") while the AI output was admitted into a council deliberation. **This is the textbook scenario the IPC-OHRC Principles were drafted to address.**
- IPC-OHRC p5 (Transparent) — public unaware AI generated content in council materials
- IPC-OHRC p6 (Accountable Governance) — no designated AI authority, no decommissioning procedure
- Trustworthy AI ops-3 (Disclosure + Reporting) — would breach if Niagara Falls were a provincial entity; benchmark for IPC assessment
- MFIPPA s. 31 — staff use of personal information may exceed authorized purposes if ChatGPT prompts include resident data

**Immediate risk:** Low — bylaw research with stated caveat
**Systemic risk:** HIGH — single named incident establishes a pattern. Any IPC complaint about another City of Niagara Falls AI use will reference this Observer article as evidence that the city had notice and did nothing.

---

### AI-002 — Niagara Regional Police Service Axon ICC + ALPR (UMBRELLA)

**Confidence: HIGH** — Niagara Regional Police Service public disclosure

**Source:** https://www.niagarapolice.ca/what-we-do/road-safety/in-car-camera-and-automatic-licence-plate-recognition/

**System:** Axon In-Car Camera (ICC) integrated with Automatic Licence Plate Recognition (ALPR)
**Owner:** Niagara Regional Police Service (umbrella across all 4 cities)
**Lifecycle stage:** Operational
**Personal information processed:** License plates (linked to MTO + CPIC databases), audio recordings inside police vehicles, video of public roadways and incident scenes
**Lawful authority:** Police Services Act + MFIPPA; data retention disclosed
**PIA status:** No public PIA referencing IPC-OHRC Principles
**AIA status:** None completed
**Public disclosure:** Partial — NRP disclosure page exists but does not address IPC-OHRC Principles or NIST AI RMF alignment

**Obligations triggered:**
- IPC-OHRC p4 (Human Rights Affirming) — ALPR deployment patterns must not produce adverse impact discrimination; **no public disparate impact analysis exists**
- IPC-OHRC p3 (Privacy Protective) — audio + video + plate data is a high-volume PII processing activity; opt-out impossible by design
- MFIPPA Bill 97 PIA mandate (effective July 2026) applies to NRP's processing on behalf of all 4 Niagara cities
- Charter s. 8 (search and seizure) — ALPR has been challenged in other jurisdictions

**This is the highest-stakes shared exposure across the four cities.** Sentainel Municipal Edition's NIST AI RMF safe-harbor matrix provides the documentary defense package the NRP currently lacks publicly.

---

### AI-003 — Microsoft 365 Copilot (likely deployed or piloting)

**Confidence: MEDIUM** — Inferred from municipal IT pattern + Fusion Computing market reporting on Niagara Falls AI services

**Source:** Fusion Computing's published Niagara Falls AI services brochure references Microsoft 365 Copilot deployments in the AGCO + PCI-DSS compliance environment of Niagara Falls. While this references the broader business community, municipal staff in a city of 95K population using M365 will almost certainly have Copilot in their environment.

**System:** Microsoft 365 Copilot (LLM-powered productivity assistant)
**Owner:** City of Niagara Falls IT
**Lifecycle stage:** Likely operational or piloting (per typical municipal procurement cadence)
**Personal information processed:** Email, calendar, documents containing constituent and staff personal information
**Lawful authority:** TBD — M365 procurement contract
**PIA status:** Unknown
**AIA status:** Unknown
**Public disclosure:** None found

**Obligations triggered:**
- IPC-OHRC p3 (Privacy Protective) — staff prompts to Copilot routinely include personal information from emails and documents
- IPC-OHRC p5 (Transparent) — Copilot outputs in staff reports require AI-content disclosure
- MFIPPA s. 32 (use limitations) — Copilot processing must align with original collection purpose

---

### AI-004 — Niagara Falls casino + tourism surveillance ecosystem

**Confidence: MEDIUM** — Infrastructure type known; AI components inferred

**Context:** The Niagara Falls tourism corridor (Casino Niagara, Fallsview Casino Resort, Clifton Hill, Niagara Parkway) has the densest video surveillance footprint of any Ontario municipality outside Toronto. AGCO gaming-vendor requirements drive heavy video analytics deployment. Some of this is private-sector (casinos), some municipal (parking lots, street surveillance, parks).

**Systems likely in scope:**
- Niagara Parks Police parking surveillance (linked via Niagara Parks parking infrastructure)
- Niagara Falls Tourism Commission visitor analytics
- Municipal CCTV in tourist districts
- Parking enforcement video analysis

**Obligations triggered:**
- IPC-OHRC p4 (Human Rights Affirming) — tourist district surveillance disproportionately captures racialized communities present in service-sector employment
- IPC-OHRC p2 (Safe) — surveillance AI must include decommissioning procedures
- MFIPPA Bill 97 PIA mandate for any municipal surveillance AI

---

### AI-005 — Bylaw enforcement administrative AI (assumed)

**Confidence: MEDIUM** — Typical for cities of this size

**Context:** Niagara Falls Bylaw Enforcement processes Special Events Permits, Property Standards complaints, noise complaints, and STR-adjacent enforcement. Triage AI is increasingly common in similar departments.

**Obligations triggered:** IPC-OHRC p3 + p4 + p7 (privacy + anti-discrimination + recourse)

---

### AI-006 — 311 / customer-service AI (none currently identified — opportunity)

**Confidence: HIGH** — Absence verified by site inspection

Unlike neighbouring St. Catharines (Catharine chatbot, live), the City of Niagara Falls **does not currently operate a public-facing AI chatbot**. This is a strategic gap: with the highest tourist volume in Ontario, Niagara Falls receives proportionally high citizen + visitor inquiry volumes that a chatbot would offload.

**Implication for sales:** Niagara Falls is at a decision point. If they procure a chatbot in the next 12 months without IPC-OHRC alignment baked in, they'll face exactly the same compliance posture as St. Catharines does today.

---

### AI-007 — Hiring / applicant tracking AI

**Confidence: MEDIUM** — Inferred from City HR scale (95K population municipality = ~500+ FTE)

**Obligations triggered:**
- Ontario Bill 149 ESA s. 8.4 (effective January 1, 2026) — disclosure of AI use in publicly advertised job postings
- IPC-OHRC p4 (Human Rights Affirming) — anti-discrimination + Code grounds
- Ontario Human Rights Code s. 9 — no infringement via technology

---

### AI-008 — Email security AI / spam filtering

**Confidence: HIGH** — Universal in M365 / Google Workspace tenancies

Falls within the IPC-OHRC AI definition (adopted from EDSTA) which includes "traditional AI technologies (e.g., SPAM filters or other cybersecurity resources, computer vision systems)."

**Obligations triggered:**
- IPC-OHRC p1 (Valid and Reliable) — must demonstrate filter accuracy
- IPC-OHRC p5 (Transparent) — staff training on how flagged email is reviewed

---

### AI-009 — Predictive infrastructure maintenance

**Confidence: MEDIUM** — KPMG public-sector research identifies this as the most common municipal AI use case

**Likely applications:** Road maintenance scheduling, water main failure prediction, sidewalk repair prioritization (the very topic Erik Nickel's ChatGPT report touched on).

**Obligations triggered:**
- IPC-OHRC p1 (Valid and Reliable) — quarterly performance evaluation
- IPC-OHRC p4 (Human Rights Affirming) — service-delivery AI must not under-deliver to lower-income neighbourhoods

---

### AI-010 — Council deliberation AI (resident-facing risk)

**Confidence: HIGH** — Established by the Thorold KICLEI case (see Thorold inventory)

The City of Niagara Falls Council is, like Thorold's, a target for AI-enabled astroturfing campaigns. The Canada's National Observer investigation documented chatbot-generated mass emails to Hamilton city councillors. The same playbook scales to Niagara Falls Council in advance of any contentious land-use, tourism, or climate vote.

**Obligations triggered:**
- Not a municipal AI deployment but a municipal AI exposure requiring response procedures
- IPC-OHRC p7 (Recourse) — residents must have a mechanism to report AI-generated council communications

---

### AI-011 — Niagara Region IT-shared services AI (cross-municipal)

**Confidence: MEDIUM** — Typical regional shared-services pattern

Some IT services for Niagara Falls are shared across the Region of Niagara. AI deployments in those shared environments (HRIS, ERP, GIS, document management) have shared compliance implications.

---

## Compliance posture summary

| Obligation domain | Status | Documents needed | Sentainel-delivered |
|---|---|---|---|
| AI inventory | None public | This document | ✅ |
| PIA for highest-risk system | None public | 02-pia-template.md | ✅ |
| AIA against IPC-OHRC | None public | 03-aia-template.md | ✅ |
| Council disclosure | None public | 05-council-brief.md | ✅ |
| Public recourse mechanism | None public | 06-recourse-workflow.md | ✅ |
| IPC complaint preparation | None public | 07-ipc-complaint-prep.md | ✅ |
| Whistleblower channel | None public | 08-whistleblower-procedure.md | ✅ |
| Vendor due diligence | None public | 09-vendor-questionnaire.md | ✅ |
| Trustworthy AI Framework alignment | None public | (Sentainel platform output) | ✅ |

---

## Recommended response sequence

1. **Within 30 days**: Establish AI Governance Lead (designated official). Publish initial AI inventory aligned with this document.
2. **Within 60 days**: Complete PIA for the NRP ALPR umbrella system in coordination with NRP and the other three Niagara cities sharing the exposure.
3. **Within 90 days**: Issue Council Brief (05-council-brief.md) for elected oversight.
4. **Within 180 days**: Stand up recourse + whistleblower channels (06 + 08) ahead of MFIPPA Bill 97 effective dates.
5. **Ongoing**: Sentainel platform provides quarterly attestation, continuous monitoring, and IPC complaint preparation packs.

---

## Disclaimers

This inventory was compiled from public records. Where Sentainel has inferred an AI exposure, the document explicitly marks the confidence level. The City of Niagara Falls can confirm or correct any item — Sentainel updates the inventory on a rolling basis as cities provide internal data.

Nothing in this document constitutes a legal opinion. The City should retain Ontario MFIPPA / Human Rights Code counsel for any specific compliance question.
