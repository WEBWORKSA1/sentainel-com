# Town of Niagara-on-the-Lake — AI System Inventory

**Prepared by Sentainel Compliance for the Town of Niagara-on-the-Lake**
**Date: May 2026**
**Confidence: MEDIUM-HIGH on shared regional exposures, MEDIUM on Town-specific inferences**
**Coverage: 26 Ontario municipal AI obligations**

---

## Executive summary

The Town of Niagara-on-the-Lake is unique in this four-city bundle: it operates a **shared IT department serving three distinct MFIPPA institutions**: the Town of Niagara-on-the-Lake (municipality), Niagara-on-the-Lake Hydro (utility), and the Niagara-on-the-Lake Public Library (library board). All three are MFIPPA institutions. All three fall under the same regulatory stack. All three share IT infrastructure under Fred Cervantes, Manager of Information Technology.

**This tripled regulatory scope is the central finding of this audit.** A single AI system deployed by NOTL IT — e.g., Microsoft 365 Copilot in the shared tenancy, or a website chatbot — likely processes information from all three MFIPPA institutions, creating cross-institutional compliance obligations that single-municipality audits do not capture.

Additionally, the Town's economic base is overwhelmingly heritage tourism + the Shaw Festival ecosystem + wine-country tourism, all of which generate high-volume personal data flows during a compressed tourist season (April–October). This compresses the City's AI exposure window into months when staff are operationally stretched.

The Town has not publicly designated an AI Governance Lead. The Town's privacy policy references MFIPPA. The Town's website is on a Drupal 7 stack with ArcGIS integration and embedded LiveHelp — a possible chatbot exposure (see AI-006 below).

---

## Identified AI exposures

### AI-001 — Niagara Regional Police Service Axon ICC + ALPR (UMBRELLA EXPOSURE)

**Confidence: HIGH** — Same NRPS exposure shared by all four Niagara cities

The Niagara Regional Police Service operates Axon In-Car Camera and Automatic License Plate Recognition technology across all NRPS jurisdictions including the Town of Niagara-on-the-Lake. NRPS public disclosure addresses MFIPPA but does not address the IPC-OHRC Principles, the Trustworthy AI Framework, or NIST AI RMF safe-harbor alignment.

For NOTL specifically, the ALPR exposure is meaningful because:

- Heritage-zone traffic enforcement disproportionately affects tourists who may not be aware of bylaw enforcement patterns
- Wine-country tourism generates higher volumes of out-of-province visitor data (extra-jurisdictional MFIPPA implications)
- The Shaw Festival ecosystem brings recurring large-event traffic events with mass ALPR data capture

See `demos/niagara/niagara-falls/02-pia-template.md` for the full ALPR PIA template that applies to all four cities.

---

### AI-002 — Microsoft 365 Copilot (inferred, multi-institution exposure)

**Confidence: MEDIUM-HIGH** — Standard mid-size Ontario municipal stack assumption

The Town's published technology stack (per LeadIQ + BuiltWith fingerprinting) includes Microsoft IIS, ASP.NET, and Microsoft hosting infrastructure. Where Microsoft 365 is in use — which is the dominant productivity platform for Ontario municipalities of this size — Microsoft 365 Copilot is typically licensed and available to staff.

**Tripled-scope concern:** Because NOTL IT services the Town, NOTL Hydro, and NOTL Public Library, a single Microsoft 365 tenancy may serve all three institutions. Copilot enabled in that tenancy gives all staff across all three institutions access to AI processing of:

- Municipal records (MFIPPA-protected)
- Library borrower records (MFIPPA + Public Libraries Act)
- Utility customer information (MFIPPA + Ontario Energy Board confidentiality)

A single AI system, three distinct compliance regimes. The PIA for Copilot in this environment is non-trivial.

**Obligations triggered:**
- MFIPPA Bill 97 PIA × 3 institutions, or a combined cross-institutional PIA
- IPC-OHRC p3 Privacy Protective (especially library borrower records, which have additional confidentiality expectations under common law)
- IPC-OHRC p7 Accountable Recourse — separate mechanisms may be needed per institution
- Trustworthy AI Framework ops-5 (FIPPA/MFIPPA alignment)

---

### AI-003 — Drupal 7 + LiveHelp on Town website (live chat / possible AI chatbot)

**Confidence: HIGH** on LiveHelp deployment, MEDIUM on AI integration status

**Source:** RocketReach technology fingerprint of `notl.com`: "LiveHelp is a live chat solution that enables organizations to provide real-time online customer support."

LiveHelp deployments in 2024–2026 commonly integrate AI chatbot features (automated FAQ responses, conversation routing, off-hours coverage). If the Town's LiveHelp instance includes any AI-driven features, it is a public-facing AI system collecting resident, tourist, and visitor personal information at scale during the tourist season.

**Key question for Town IT:** Does NOTL's LiveHelp deployment include any AI features? If yes, this is the Town's flagship AI exposure and requires a PIA + AIA immediately.

**Obligations triggered (if AI features are enabled):**
- All seven IPC-OHRC Principles
- MFIPPA Bill 97 PIA
- IPC-OHRC p5 Transparent — chat users must be told when they are interacting with AI
- IPC-OHRC p7 Accountable Recourse — challenge mechanism for AI responses

**Heritage-tourism specific concern:** International visitors using LiveHelp may not have any reasonable expectation that their interaction is governed by Ontario privacy law. Disclosure language must be globally legible.

---

### AI-004 — Third-party AI monitoring of Short Term Rental advertisements

**Confidence: MEDIUM-HIGH** — Inferred from documented NOTL STR enforcement pattern, standard industry practice

The Town of Niagara-on-the-Lake has been one of Ontario's most active Short Term Rental enforcement jurisdictions due to its heritage-tourism economy and constrained housing stock. STR enforcement at scale almost always uses third-party AI monitors (Granicus' Host Compliance, Harmari, AirDNA + Rentalslayer) that scrape AirBnB / VRBO / Booking.com listings and flag suspected unlicensed rentals.

If the Town uses such a service — likely — the third-party vendor processes:

- AirBnB host listing data (which often includes resident personal information)
- AirBnB review patterns (which often include resident neighbour identification)
- Listing photos (which often capture protected information about properties or residents)
- AI inferences flagging suspected non-compliance

**Obligations triggered:**
- MFIPPA Bill 97 Vendor Due Diligence (the third-party vendor's PIA must satisfy MFIPPA Bill 97)
- IPC-OHRC p3 Privacy Protective
- IPC-OHRC p4 Human Rights Affirming — enforcement targeting concentrated in specific neighbourhoods is a disparate-impact concern
- IPC-OHRC p5 Transparent — hosts under investigation must be informed AI is involved
- IPC-OHRC p7 Accountable Recourse — hosts must be able to challenge AI-flagged enforcement

**Sales note for Sentainel:** STR enforcement AI is one of the most common municipal exposures with the highest litigation risk. Hosts being denied permits often have the resources to litigate. Each NOTL STR enforcement decision is potentially an OHRC complaint waiting to happen.

---

### AI-005 — ArcGIS / ArcGIS Online (geospatial AI)

**Confidence: HIGH** — Confirmed via public technology fingerprint

The Town uses ArcGIS and ArcGIS Online (Esri's geospatial platform). ArcGIS Online includes embedded AI features for spatial analysis, image classification (aerial photography), and predictive modelling.

For heritage-zone enforcement, infrastructure planning, and emergency-response work, ArcGIS AI features are operationally useful. They are also AI systems under the IPC-OHRC + EDSTA + Trustworthy AI Framework definitions.

**Obligations triggered:**
- IPC-OHRC p1 Valid and Reliable (geospatial AI inferences should not be overstated as ground truth)
- IPC-OHRC p5 Transparent (residents should know if AI inferences are part of bylaw or planning decisions)
- Trustworthy AI Framework ops-2 AI Risk Management

---

### AI-006 — NOTL Public Library AI services

**Confidence: MEDIUM** — Likely exposure pattern for Ontario public libraries 2024–2026

Ontario public libraries have been actively adopting AI in 2024–2026 including:

- AI-powered chat reference services (some via SOLS / Ontario Library Service)
- AI-driven recommendation engines for collection discovery
- Generative AI for staff productivity (Microsoft 365 Copilot in the shared tenancy)
- Possible Adobe Sensei or similar AI in digital archives / digitization projects

**Library-specific concerns:**

- Library borrower records have additional confidentiality expectations under Public Libraries Act + common law librarian-borrower confidentiality
- AI that surfaces borrowing patterns creates a confidentiality risk that the Town side of the shared IT department may not be tuned to
- Children's library services have separate consent regimes

**Obligations triggered:**
- All seven IPC-OHRC Principles, with extra weight on p3 Privacy Protective and p7 Accountable Recourse
- MFIPPA Bill 97 PIA, with explicit library-confidentiality treatment
- Possible PHIPA exposure if the library partners with health-information services

---

### AI-007 — NOTL Hydro AI / smart-metering AI

**Confidence: MEDIUM** — Likely exposure pattern for Ontario LDCs 2024–2026

NOTL Hydro is a Local Distribution Company. Ontario LDCs typically use AI for:

- Smart meter data analytics (load forecasting, theft detection)
- Outage prediction (especially for wine-country / heritage-zone infrastructure)
- Customer service chatbots / IVR with AI features
- Email security AI (e.g., Microsoft Defender, Proofpoint)

**Utility-specific concerns:**

- Smart meter data is highly granular personal information (occupancy patterns inferable from electricity usage)
- Outage prediction AI affects which neighbourhoods get prioritized restoration — a potential IPC-OHRC p4 disparate-impact concern
- LDC customer service AI is subject to both MFIPPA and Ontario Energy Board confidentiality requirements

**Obligations triggered:**
- MFIPPA Bill 97 PIA
- IPC-OHRC p3 Privacy Protective (smart-meter data minimization)
- IPC-OHRC p4 Human Rights Affirming (outage-prediction equity)
- IPC-OHRC p7 Accountable Recourse (challenge mechanism for AI-driven utility decisions)

---

### AI-008 — Bylaw enforcement, hiring AI, email security AI, predictive maintenance AI

Same inferred exposures as Niagara Falls AI-005, AI-007, AI-008, AI-009. The Town of Niagara-on-the-Lake is a 19K-population municipality with a typical municipal IT stack; these exposures are present but not specifically documented in public records.

---

### AI-009 — Council deliberation AI (Hamilton precedent + Thorold precedent)

Same exposure pattern as the other three Niagara cities. NOTL Council is a target for AI-enabled astroturfing campaigns. Recourse procedure (06-recourse-workflow.md) provides the response framework.

---

## The tripled-scope concern

The central finding of this audit is that **the Town's shared IT department creates a tripled regulatory scope** that single-institution audits do not capture.

Fred Cervantes, Manager of Information Technology, is the named operational lead for IT support to all three institutions (Town, Hydro, Library) per the Town's published organizational structure. This means:

- Any AI tool licensed by NOTL IT likely flows to staff in all three institutions
- Any AI tool deployed on shared infrastructure likely processes data from all three institutions
- A single compliance gap creates exposure for all three institutions simultaneously
- A single IPC complaint about an AI system can name all three institutions as respondents

**Conversely:** A single coordinated compliance program (e.g., a unified AI Governance Lead across all three institutions, with explicit institutional sub-leads) covers all three institutions for the same effort that a peer city would spend on one. **NOTL has the opportunity to set the best-practice example for shared-IT MFIPPA institutions across Ontario.**

---

## Compliance posture summary

| Obligation domain | Status | Required artifact |
|---|---|---|
| AI inventory | None public | This document |
| PIA — Town | None public | 02-pia-template.md (NRPS ALPR shared) |
| AIA — Town | None public | 03-aia-template.md |
| Cross-institutional AI governance | None public | (Sentainel Municipal Edition output) |
| Council disclosure | None public | 05-council-brief.md |
| Public recourse mechanism | None public | 06-recourse-workflow.md |
| IPC complaint preparation | None public | 07-ipc-complaint-prep.md |
| Whistleblower channel | None public | 08-whistleblower-procedure.md |
| Vendor due diligence | None public | 09-vendor-questionnaire.md |

---

## Why NOTL is strategically important for Sentainel

NOTL is the **smallest** city in this bundle by population. It is also the **most operationally interesting** for two reasons:

1. **The tripled-scope IT department** — cleanest example of cross-institution AI compliance in the bundle. Sentainel's solution for NOTL is generalizable to every shared-IT public-sector arrangement in Ontario.

2. **The heritage-tourism economy** — NOTL's compliance failures have outsized reputational risk because the Town's brand is so commercially valuable. AI privacy breaches affecting visitors to the Shaw Festival or wine country generate national media coverage. This dynamic gives NOTL leadership unusually strong reasons to act early.

For a town with $19K residents but international visibility through Shaw Festival and wine tourism, Sentainel Municipal Edition's $1,499/month is rounding error vs. a single reputational incident.

---

## Recommended response sequence

1. **Immediately**: Confirm whether NOTL IT manages a shared Microsoft 365 tenancy across Town + Hydro + Library, and whether Copilot is licensed in that tenancy
2. **Immediately**: Confirm whether the LiveHelp deployment on notl.com includes any AI features
3. **Within 30 days**: Designate a shared-institutions AI Governance Lead, ideally a person with cross-institutional authority
4. **Within 60 days**: Complete cross-institutional MFIPPA Bill 97 PIA covering AI exposures across all three MFIPPA institutions
5. **Within 90 days**: Complete IPC-OHRC alignment scorecard with institutional-specific concerns documented
6. **Within 90 days**: Stand up unified public AI inventory + tri-institutional recourse workflow
7. **Within 180 days**: Complete vendor DPA review with all AI-touching vendors
8. **Ongoing**: Sentainel Municipal Edition continuous monitoring

---

## Disclaimers

This inventory was compiled from public records. Several findings are inferences flagged with confidence levels. The Town of Niagara-on-the-Lake can confirm or correct any item. Sentainel updates the inventory on a rolling basis.

Nothing in this document constitutes a legal opinion. The Town should retain Ontario MFIPPA / public sector counsel for any specific compliance question.
