# Town of Thorold — AI System Inventory

**Prepared by Sentainel Compliance for the Town of Thorold**
**Date: May 2026**
**Confidence: MEDIUM on shared regional exposures, LOW-MEDIUM on Town-specific inferences (smallest public footprint of the four cities)**
**Coverage: 26 Ontario municipal AI obligations**

---

## Executive summary

The Town of Thorold is the smallest of the four Niagara cities in this bundle (population ~22,000) and has the **smallest public AI footprint**. This is a strategic advantage. Thorold is closer to a **zero-day baseline** than its peer cities, meaning the Town can adopt a defensible AI compliance posture before deploying significant production AI — inverting the costly remediation pattern that larger municipalities face.

The most notable AI-related public-record incident in Thorold is **not** an internal AI deployment but an **external AI-driven misinformation campaign**: per Canada's National Observer (and earlier CBC + The Pointer reporting), a coordinated AI-generated email campaign targeted Thorold Council in 2024–2025, driving a 7-1 council vote to withdraw the Town from the Partners for Climate Protection (PCP) program. The campaign used customized chatbots to generate mass emails opposing climate policy.

**This is the strongest sales hook of any city in the bundle.** Thorold has already experienced AI as a vector of harm against its democratic process. Council members were the direct victims. Sentainel's recourse + transparency framework is exactly the kind of infrastructure that protects councils from this attack pattern in the future.

---

## Identified AI exposures

### AI-001 — External AI astroturfing campaign against Thorold Council (PRECEDENT INCIDENT)

**Confidence: HIGH** — Canada's National Observer investigation, multiple corroborating sources

**Sources:**
- Canada's National Observer (April 2026): https://www.nationalobserver.com/2026/04/30/analysis/ai-ontario-municipal-politics
- Earlier coverage of the Hamilton AI astroturfing campaign that targeted multiple Ontario municipalities (CBC, The Pointer)

**Incident:** A climate denial group used customized chatbots to generate mass emails to Thorold city councillors opposing climate policy. The pressure campaign succeeded: Thorold Council voted 7-1 to withdraw from the Partners for Climate Protection program.

**Why this is an AI compliance concern for the Town (not just the attackers):**

Under the IPC-OHRC Joint Principles + emerging Ontario AI governance standards, the Town of Thorold has a duty to:

- Maintain **transparent decision-making processes** that are robust against synthetic communication campaigns (IPC-OHRC p5 Transparent)
- Provide **public recourse mechanisms** when AI-driven harm affects residents or institutions (IPC-OHRC p7 Accountable Recourse)
- Document **governance procedures** that can distinguish authentic resident input from synthetic campaigns (Trustworthy AI Framework ops-2 Risk Management)

This is not retroactive blame. The Council was the victim, not the perpetrator. But the incident creates a **public-record obligation** to harden against future attacks. If Thorold Council faces another AI-driven campaign in 2026–2027 and does not have hardened processes in place, the IPC + media will reference this 2024–2025 incident as evidence of failure to act on known risk.

**Obligations triggered:**
- IPC-OHRC p5 Transparent (public-facing decision documentation)
- IPC-OHRC p7 Accountable Recourse
- Trustworthy AI Framework ops-2 (Risk Management of AI-driven harms)
- Council procedural integrity policies (typically Clerk's office responsibility)

---

### AI-002 — Niagara Regional Police Service Axon ICC + ALPR (UMBRELLA EXPOSURE)

**Confidence: HIGH** — Same NRPS exposure shared by all four Niagara cities

NRPS operates Axon In-Car Camera and Automatic License Plate Recognition across all NRPS jurisdictions including Thorold. The full PIA template is at `demos/niagara/niagara-falls/02-pia-template.md`. The same shared regional analysis applies.

---

### AI-003 — Microsoft 365 Copilot (inferred)

**Confidence: MEDIUM** — Standard small-Ontario-municipality stack assumption

Thorold operates a typical small-municipality Microsoft IT stack. Where Microsoft 365 is in use, Copilot is typically available to staff regardless of formal deployment policy.

**Specific Thorold concern:** Smaller municipalities often have less formal AI governance. Staff use of Copilot may be entirely informal, with no usage logging, no acceptable-use policy, and no PIA. This is the most common compliance gap pattern for municipalities of Thorold's size.

**Obligations triggered:**
- MFIPPA Bill 97 PIA
- IPC-OHRC p6 Accountable Governance (designated AI Lead)
- Trustworthy AI Framework ops-2 (Risk Management)
- Staff acceptable-use policy update

---

### AI-004 — Generative AI in staff work product (likely informal)

**Confidence: MEDIUM** — Universal exposure pattern in Ontario municipalities May 2026

Given the Town's small size and the documented prevalence of staff GenAI use in Ontario municipalities (see Niagara Falls Erik Nickel incident, Goderich Council use, Hamilton/Toronto/Windsor use cases), it is statistically near-certain that some Thorold staff use ChatGPT, Claude, Copilot, or similar tools for:

- Drafting reports and memos
- Summarizing meeting notes
- Generating responses to resident inquiries
- Conducting policy research

Without a formal generative AI policy, each individual use is an unmanaged AI deployment under MFIPPA Bill 97 + IPC-OHRC Principles.

**Sales note:** This is the lowest-cost compliance fix in the bundle. A three-page generative AI use policy (template at `03-aia-template.md` § 6 in the Niagara Falls bundle) addresses 80% of the staff GenAI compliance gap.

---

### AI-005 — Bylaw enforcement, hiring AI, email security AI, predictive maintenance AI

Same inferred exposures as Niagara Falls AI-005, AI-007, AI-008, AI-009. Smaller scale than the larger Niagara cities but the regulatory obligations apply identically.

---

### AI-006 — Future AI deployments (zero-day positioning)

Thorold's most strategic AI compliance opportunity is **prospective**: the Town has not yet deployed a flagship public-facing AI system. This means the Town can:

- Adopt the IPC-OHRC Joint Principles + Trustworthy AI Framework **before** deploying its first major AI
- Require vendor compliance with MFIPPA Bill 97 PIA + IPC-OHRC alignment **as a procurement condition**, not a remediation
- Designate an AI Governance Lead **before** there is anything to govern, allowing role design without legacy constraints
- Publish an AI inventory of zero items (with a commitment to public update before each new deployment) — a defensible "early-mover advantage" posture

This is the **opposite** of St. Catharines' Catharine situation, where the AI deployment came first and the compliance posture has to catch up. **Thorold can be the Niagara region's exemplar of compliance-first municipal AI adoption.**

---

## The astroturfing precedent in detail

The 2024–2025 AI-generated email campaign against Thorold Council is worth detailed treatment because:

1. **It's the only documented AI-driven harm to a Niagara municipal institution in this bundle.** Niagara Falls, St. Catharines, and NOTL have AI exposures; only Thorold has a recorded AI incident.

2. **The harm was to council legitimacy.** A 7-1 vote, in the wake of a synthetic communication campaign, is a council-legitimacy issue that the IPC + emerging governance standards will care about.

3. **The attack pattern is replicable.** What was done to Thorold Council can be done to any Ontario council. As AI tooling becomes more accessible, these campaigns will multiply.

4. **The defensive infrastructure does not yet exist by default.** No Ontario municipality has a standardized procedure for detecting and responding to AI-driven communication campaigns. Sentainel's recourse workflow (`06-recourse-workflow.md` in the Niagara Falls bundle) is one of the first such procedures publicly available.

Thorold has a unique position: **the City has the strongest reason of any Ontario municipality to publicly adopt AI governance procedures.** Council members were victimized. A Sentainel deployment in Thorold is implicitly a council-protection measure, not just a compliance program.

---

## Compliance posture summary

| Obligation domain | Status | Required artifact |
|---|---|---|
| AI inventory | None public | This document |
| PIA — baseline | None public | Standard template |
| AIA — baseline | None public | Standard template |
| Generative AI staff policy | None public | 03-aia-template.md § 6 |
| Council disclosure | None public | 05-council-brief.md |
| Public recourse mechanism | None public | 06-recourse-workflow.md |
| Council astroturfing response | None public | (NEW — Thorold-specific addendum needed) |
| IPC complaint preparation | None public | 07-ipc-complaint-prep.md |
| Whistleblower channel | None public | 08-whistleblower-procedure.md |
| Vendor due diligence | None public | 09-vendor-questionnaire.md |

---

## Why Thorold is strategically important for Sentainel

Thorold is **the highest-probability conversion target by purchase psychology in this bundle**, despite being the smallest. The reasons:

1. **The astroturfing incident** — Council members were directly harmed by AI. This creates more emotional motivation to act than any regulatory deadline does for larger cities.

2. **Small size enables fast decision-making** — a 7-person decision team can approve a $1,499/month subscription in one council meeting. Larger cities have procurement processes that take months.

3. **Zero-day baseline** — Thorold has less to remediate, so the engagement scope is smaller, the integration is faster, and the ROI is more immediate.

4. **Reference customer potential** — a small city that publicly adopts Sentainel becomes a citable reference for the other ~440 Ontario municipalities. Thorold + Sentainel is a more usable case study than St. Catharines + Sentainel (because St. Catharines has too many confounding factors with the existing Catharine deployment).

5. **Regional anchor effect** — if Thorold adopts Sentainel publicly, the other Niagara cities (and the Niagara Region itself) have political pressure to match.

**Recommendation:** Thorold is the highest-priority demo-to-conversion target in the four-city bundle.

---

## Recommended response sequence

1. **Immediately**: Designate AI Governance Lead at the CAO or Director level (low cost, high political signaling value)
2. **Within 30 days**: Adopt Interim Generative AI Use Policy (three-page template, no production AI to govern yet)
3. **Within 60 days**: Publish AI Inventory (current state: minimal, with commitment to update before new deployments)
4. **Within 90 days**: Adopt Council Astroturfing Response Procedure (new artifact — Thorold-specific given the precedent incident)
5. **Within 90 days**: Stand up public recourse mechanism
6. **Within 180 days**: Coordinate with NRPS + other Niagara cities on shared ALPR PIA
7. **Within 180 days**: Adopt vendor due-diligence questionnaire for AI-containing procurement
8. **Ongoing**: Sentainel Municipal Edition continuous monitoring + quarterly attestation

---

## Disclaimers

This inventory was compiled from public records. The 2024–2025 astroturfing campaign is well-documented; most other findings are inferences flagged with confidence levels. The Town of Thorold can confirm or correct any item. Sentainel updates the inventory on a rolling basis.

Nothing in this document constitutes a legal opinion. The Town should retain Ontario MFIPPA / public sector counsel for any specific compliance question.
