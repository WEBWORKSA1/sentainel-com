# Town of Niagara-on-the-Lake — Algorithmic Impact Assessment
## Cross-Institutional AI Governance + LiveHelp + STR Enforcement

**Prepared by Sentainel Compliance · IPC-OHRC Joint Principles aligned**
**Date: May 2026**

---

## 1. Why this AIA exists

NOTL's AIA addresses three distinct AI exposure categories given the Town's heritage-tourism economy and tripled-scope IT department:

**Category A: Cross-institutional generative AI (Town + Hydro + Library shared Microsoft 365 tenancy)**
**Category B: Public-facing LiveHelp / chat AI on notl.com**
**Category C: Third-party STR enforcement AI (heritage-zone bylaw compliance)**

Each category requires different IPC-OHRC analysis. This document treats them in sequence.

---

## Part A: Cross-Institutional Generative AI

### A.1 Current state

The Town's IT department serves three MFIPPA institutions through Fred Cervantes, Manager of Information Technology. If Microsoft 365 Copilot is enabled in the shared tenancy (high-probability inference for Ontario municipalities in May 2026), it operates as a cross-institutional AI without published governance.

### A.2 Principle-by-principle scoring (Category A)

| Principle | Score | Reason |
|---|---|---|
| p1 Valid and Reliable | ⚠️ UNKNOWN | No cross-institutional validation procedure |
| p2 Safe | ⚠️ PARTIAL | Microsoft-provided safety but no Town-side monitoring |
| p3 Privacy Protective | ❌ FAIL | No data segregation between Town, Hydro, Library data domains |
| p4 Human Rights Affirming | ❌ FAIL | Library borrowing patterns + utility occupancy inference create disparate impact risk across multiple Code grounds |
| p5 Transparent | ❌ FAIL | No public disclosure of cross-institutional AI deployment |
| p6 Accountable Governance | ❌ FAIL | No cross-institutional AI Governance Lead |
| p7 Accountable Recourse | ❌ FAIL | No public recourse mechanism specific to cross-institutional AI |

**Aggregate Category A: 0 / 7** (below baseline because tripled scope multiplies each failure)

### A.3 Remediation

See `02-pia-template.md` Part B for the cross-institutional PIA framework. Remediation requires:

1. Cross-institutional AI Governance Council
2. Data segregation in Microsoft 365 Copilot tenancy
3. Library and children's data exclusions from indexing
4. Cross-institutional recourse workflow

Cost: moderate. The cross-institutional configuration is non-trivial but Microsoft provides the tooling. The compliance value of cross-institutional best-practice is high enough to justify the engineering work.

---

## Part B: LiveHelp / Chat AI on notl.com

### B.1 Current state

BuiltWith / RocketReach technology fingerprinting indicates a LiveHelp deployment on `notl.com`. LiveHelp deployments in 2024–2026 commonly integrate AI chatbot features. Whether the NOTL deployment uses AI features is unknown from public records.

**Critical question:** Does notl.com's LiveHelp instance use AI-driven response generation, conversation routing, or other AI features?

If yes, NOTL has a public-facing AI system processing resident, tourist, and international visitor information at scale during the tourist season (April–October).

### B.2 Principle-by-principle scoring (Category B, assuming AI features active)

| Principle | Score | Reason |
|---|---|---|
| p1 Valid and Reliable | ⚠️ UNKNOWN | No validation evidence in public records |
| p2 Safe | ⚠️ UNKNOWN | Vendor safety practices not visible |
| p3 Privacy Protective | ❌ FAIL | No public privacy disclosure for chat data |
| p4 Human Rights Affirming | ❌ FAIL | No equity analysis for chat responses across international visitor populations |
| p5 Transparent | ❌ FAIL | No disclosure that visitors are interacting with AI |
| p6 Accountable Governance | ❌ FAIL | No governance documentation |
| p7 Accountable Recourse | ❌ FAIL | No chat-specific recourse mechanism |

**Aggregate Category B (if AI active): 0 / 7**

### B.3 Heritage-tourism specific concerns

B.3.1 **International visitor exposure.** Visitors from US, EU, Australia, and other jurisdictions may have no awareness that Ontario MFIPPA governs their LiveHelp interactions. Disclosure language must be globally legible.

B.3.2 **Language equity.** Visitors arrive in many languages. AI chat responses must not be substantially less accurate or useful in any language relevant to the Town's visitor population. This is an IPC-OHRC p1 + p4 combined concern.

B.3.3 **Festival-season operational criticality.** During Shaw Festival and peak tourism, chat volume spikes. The system becomes operationally critical infrastructure under IPC-OHRC p2 (Safe).

### B.4 Remediation

1. Confirm with Town IT (Fred Cervantes) whether LiveHelp uses AI features
2. If yes, immediately implement public disclosure ("You are chatting with our AI assistant. Type 'human' for a person.")
3. Complete MFIPPA Bill 97 PIA for the chat system
4. Complete this AIA's Category B fully against IPC-OHRC Principles
5. Vendor due diligence questionnaire to LiveHelp vendor (`09-vendor-questionnaire.md`)

If LiveHelp does not use AI features, retain this analysis for the inevitable upgrade.

---

## Part C: Third-party STR Enforcement AI

### C.1 Current state

NOTL has been one of Ontario's most active Short Term Rental enforcement jurisdictions. STR enforcement at scale almost always uses third-party AI monitors (Granicus Host Compliance, Harmari, AirDNA + Rentalslayer) that scrape Airbnb/VRBO/Booking.com listings.

If the Town uses such a service — a high-probability inference — the third-party vendor processes:

- Host listing data including resident personal information
- Review patterns including neighbour identification
- Listing photos potentially capturing protected information
- AI-generated flags for suspected unlicensed rentals

### C.2 Principle-by-principle scoring (Category C)

| Principle | Score | Reason |
|---|---|---|
| p1 Valid and Reliable | ⚠️ PARTIAL | Vendor validation typically present but not publicly disclosed |
| p2 Safe | ⚠️ PARTIAL | Vendor safety controls present; Town-side oversight limited |
| p3 Privacy Protective | ❌ FAIL | No public disclosure of third-party AI processing of resident data |
| p4 Human Rights Affirming | ❌ FAIL | STR enforcement concentrated in specific neighbourhoods creates disparate-impact risk |
| p5 Transparent | ❌ FAIL | Residents under investigation typically not informed AI is involved |
| p6 Accountable Governance | ❌ FAIL | No Town-side governance documentation for vendor AI |
| p7 Accountable Recourse | ❌ FAIL | Hosts flagged by AI have no AI-specific challenge mechanism |

**Aggregate Category C: 0 / 7**

### C.3 Specific litigation risk

STR enforcement is one of the most litigated municipal activities in Ontario. Hosts denied permits or fined often have the resources to litigate. Each AI-flagged enforcement decision is potentially:

- A judicial review of the underlying enforcement decision
- An OHRC complaint if disparate impact across Code-protected grounds is identified
- An IPC complaint regarding the data processing by the third-party vendor
- A constitutional challenge if Charter concerns arise

NOTL's heritage-zone STR enforcement context heightens all four risks.

### C.4 Remediation

1. Identify the STR enforcement vendor (if any) currently engaged
2. Issue the Sentainel vendor due diligence questionnaire to the vendor
3. Add public disclosure on notl.com STR enforcement page noting AI involvement
4. Establish recourse pathway: hosts flagged by AI have access to challenge mechanism before enforcement action
5. Conduct disparate impact analysis of historical STR enforcement decisions

---

## 2. Aggregate scoring

Across all three categories: **0 / 21 cells aligned**. Worst posture of the four Niagara cities in this bundle, driven by the tripled scope multiplying each gap.

Projected after 90-day standup: **17 of 21 aligned** — still below Thorold's projected 36/42 because cross-institutional governance is fundamentally harder than single-institution governance.

The strategic question for NOTL: is it worth doing the harder work?

**Sentainel answer: yes**, because the cross-institutional best-practice positioning is reputationally valuable for a Town with international heritage-tourism profile.

---

## 3. NIST AI RMF mapping

Category A (cross-institutional GenAI):
- GOVERN-1.1, GOVERN-1.4, GOVERN-2.1, GOVERN-2.3 (cross-institutional roles)
- GOVERN-6.1 (Microsoft as cross-institutional vendor)
- MAP-4.1 (third-party legal risks)
- MEASURE-2.7, MEASURE-2.10

Category B (LiveHelp chat):
- GOVERN-1.1, GOVERN-1.6
- MAP-2.2 (knowledge limits explanation)
- MEASURE-2.8, MEASURE-2.9 (transparency + explainability)
- MEASURE-3.3 (visitor feedback channels)

Category C (STR enforcement vendor AI):
- GOVERN-6.1, GOVERN-6.2 (third-party policies + contingency)
- MAP-4.1, MAP-4.2 (third-party legal risks)
- MEASURE-2.11 (fairness & bias — disparate impact in enforcement)
- MANAGE-3.1 (third-party risk monitoring)

---

## 4. Approval pathway

Cross-institutional approval is more complex than single-institution. Recommended:

1. Town CAO approval for Town-side portions
2. NOTL Hydro board approval for utility-side portions
3. NOTL Library Board approval for library-side portions
4. Coordinated public release on notl.com, the library website, and the Hydro website

This takes 90–120 days versus a single-institution AIA which can be approved in 30–60 days.

---

## 5. Disclaimers

This AIA is a template generated by the Sentainel platform from public-record evidence. Categories B and C depend on confirmation by Town IT of whether AI features are in use. Nothing in this document constitutes a legal opinion.
