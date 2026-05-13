# IPC-OHRC Joint Principles Alignment Scorecard — City of St. Catharines

**Prepared by Sentainel Compliance · May 2026**
**Coverage:** 8 identified AI exposures × 7 IPC-OHRC Principles = 56 alignment data points
**Centerpiece system:** Catharine (Microsoft Copilot Studio chatbot, in production since February 2025)

---

## Scoring legend

- ✅ **Aligned**
- 🟡 **Partial**
- ❌ **Gap**
- ⚫ **Out of scope**
- 🔵 **External** (e.g., NRPS)
- 🔴 **Critical** — Catharine flagship system, highest enforcement risk

---

## Alignment matrix (current state)

| AI exposure | p1 | p2 | p3 | p4 | p5 | p6 | p7 |
|---|---|---|---|---|---|---|---|
| AI-001 Catharine (FLAGSHIP) | 🟡🔴 | 🟡🔴 | ❌🔴 | ❌🔴 | 🟡🔴 | ❌🔴 | ❌🔴 |
| AI-002 NRPS Axon ICC + ALPR | 🔵 | 🔵 | 🔵 | ❌ | 🟡 | 🔵 | ❌ |
| AI-003 Planned Catharine IT extension | ⚫ | ⚫ | ⚫ | ⚫ | ⚫ | ⚫ | ⚫ |
| AI-004 Planned Teams + phone integration | ⚫ | ⚫ | ⚫ | ⚫ | ⚫ | ⚫ | ⚫ |
| AI-005 Microsoft 365 Copilot (inferred high) | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ |
| AI-006 Catharine training data + Azure | ⚠️ | ⚠️ | ❌ | ❌ | ❌ | ❌ | ❌ |
| AI-007 Bylaw / hiring / email security AI | 🟡 | 🟡 | 🟡 | 🟡 | ❌ | ❌ | ❌ |
| AI-008 Council deliberation AI risk | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ |

---

## Score summary

| Principle | Aligned | Partial | Gap | External | Out of scope |
|---|---|---|---|---|---|
| p1 Valid and Reliable | 0 | 3 | 3 | 0 | 2 |
| p2 Safe | 0 | 3 | 3 | 0 | 2 |
| p3 Privacy Protective | 0 | 1 | 4 | 1 | 2 |
| p4 Human Rights Affirming | 0 | 1 | 5 | 0 | 2 |
| p5 Transparent | 0 | 2 | 4 | 0 | 2 |
| p6 Accountable Governance | 0 | 0 | 5 | 1 | 2 |
| p7 Accountable Recourse | 0 | 0 | 5 | 1 | 2 |

**Aggregate: 0 of 56 cells fully aligned, 10 partial, 29 gaps, 3 external, 14 out of scope (planned systems not yet deployed).**

St. Catharines has the **highest single-system risk concentration** in the bundle: Catharine is named, public-facing, operationally critical, and scores partial-or-worse on every principle. **The remediation cost is concentrated but tractable.**

---

## The Catharine row in detail

Catharine is the only AI system in this four-city bundle that is:

- Publicly named and branded
- Operationally critical (handled call-overflow during winter storms per HSO case study)
- Collecting personal information at scale (name, email, phone of residents and visitors)
- Subject to vendor case study marketing by HSO + Microsoft

This combination makes Catharine the **Tier-1 IPC enforcement target** in the Niagara region for MFIPPA Bill 97 effective July 1, 2026.

### Per-principle analysis for Catharine

**p1 Valid and Reliable: PARTIAL**
Microsoft Copilot Studio provides baseline accuracy. City-specific validation evidence is not public. The system "learns with every interaction" per City press release — this is fine-tuning language that requires validation documentation.

**p2 Safe: PARTIAL**
HSO + Microsoft provide vendor safety controls. City-side decommissioning authority and safety monitoring documentation are not public. Catharine's operational criticality during winter storms makes p2 high-stakes.

**p3 Privacy Protective: GAP**
No published PIA. The Azure region question (where is processing performed?) is unanswered in public records. Data retention, training data use, and DPA terms are not publicly documented.

**p4 Human Rights Affirming: GAP**
No published disparate-impact analysis. Language equity (St. Catharines diverse population including French, Italian, Punjabi, Arabic speakers) is not documented. International student population at Brock University has additional equity considerations.

**p5 Transparent: PARTIAL**
City press release announces Catharine. Vendor case study describes implementation. But no IPC-OHRC alignment statement, no public PIA, no AI inventory on stcatharines.ca.

**p6 Accountable Governance: GAP**
Jonathan Wright is named as operational lead in HSO case study — this is good. But no formal governance designation, no AI Governance Council, no published risk assessment.

**p7 Accountable Recourse: GAP**
No public recourse mechanism for Catharine outputs. Residents who receive incorrect responses, are routed incorrectly, or feel discriminated against have no AI-specific challenge channel.

---

## What changes after the 90-day standup

If the City adopts the 7 resolutions in the Council Brief, the Catharine row alone shifts dramatically:

| Catharine principle | Current | After 90-day standup |
|---|---|---|
| p1 Valid | 🟡 | ✅ (validation procedure documented) |
| p2 Safe | 🟡 | ✅ (decommissioning authority designated) |
| p3 Privacy | ❌ | ✅ if Azure region question resolved, otherwise 🟡 |
| p4 Human Rights | ❌ | 🟡 (disparate impact analysis initiated, not complete) |
| p5 Transparent | 🟡 | ✅ (PIA + AIA published) |
| p6 Governance | ❌ | ✅ (AI Governance Lead designated, Council adoption) |
| p7 Recourse | ❌ | ✅ (recourse workflow operational) |

Catharine row alone moves from 0/7 to 5–7/7 in 90 days, depending on Azure region answer.

Full system aggregate projects to **34 of 56 aligned** in 90 days.

---

## Critical observations

### Observation 1: The Azure region question is the inflection point

If Catharine processes in a Canadian Azure region (Canada Central or Canada East), MFIPPA cross-border-transfer concerns are minimized and the p3 path is straightforward. If Catharine processes in US Azure regions, the Town has a remediation timeline before July 1, 2026 to either migrate or document cross-border-transfer compliance.

**This single answer determines whether the City's 90 days is routine compliance work or high-priority remediation.**

### Observation 2: Jonathan Wright is the right operational lead

The HSO case study names Jonathan Wright as the City's Manager of Customer Service responsible for Catharine. This makes him the natural candidate for either AI Governance Lead at the corporate level or institutional sub-lead reporting to a CAO-level AI Governance Lead. Either structure is defensible under IPC-OHRC p6.

### Observation 3: The 'learns with every interaction' question is non-trivial

The City press release describes Catharine as "learning with every interaction." This phrasing typically indicates fine-tuning or RAG-based context accumulation. If the underlying Microsoft Azure OpenAI model is being fine-tuned using St. Catharines resident interactions, this is an IPC-OHRC p3 concern requiring explicit consent or strong data minimization. If it's only RAG context that doesn't modify the base model, the concern is reduced but still requires documentation.

### Observation 4: The planned extensions multiply the exposure

Catharine's planned extensions (internal IT support, Microsoft Teams integration, phone-system integration) are each **new AI systems requiring their own PIA + AIA**. The City should be doing the AIA for these extensions **at the design phase**, not retrofitting after deployment as has happened with Catharine.

---

## Comparison to peer Niagara cities

| City | Cells | Today | After 90-day | Complexity |
|---|---|---|---|---|
| Niagara Falls | 42 | 2 | 35 | 1.0x |
| **St. Catharines** | **56** | **3** | **34** | **1.5x (Catharine remediation)** |
| NOTL | 63 | 0 | 42 | 1.5x (tripled scope) |
| Thorold | 42 | 0 | 36 | 0.7x (zero-day baseline) |

St. Catharines and NOTL have the highest complexity factors but for different reasons. St. Catharines must remediate a flagship system already in production. NOTL must architect cross-institutional governance for systems that may or may not be in production.

---

## Recommendations

1. **Begin with the Azure region question** — single email to HSO. Determines remediation urgency.
2. **Formally designate Jonathan Wright** (or peer at CAO-level) as AI Governance Lead within 30 days.
3. **Complete and publish Catharine PIA** by June 30, 2026, before MFIPPA Bill 97 effective date.
4. **Complete Catharine AIA against IPC-OHRC** by July 31, 2026.
5. **Issue vendor due diligence questionnaire** to HSO + Microsoft regarding Catharine.
6. **Adopt Council Astroturfing Response Procedure** (developed for Thorold, applicable to all Ontario councils) — closes AI-008.
7. **Stand up public recourse workflow** for Catharine outputs.
8. **Coordinate with NRPS + 3 peer cities** on ALPR/ICC — closes AI-002.
9. **Engage Sentainel Municipal Edition** for continuous monitoring — maintains compliance posture as Catharine's planned extensions are deployed.

---

## Disclaimers

This scorecard is generated from public-record evidence including the City of St. Catharines press release and the HSO published case study on Catharine. Several findings depend on confirmation by City IT regarding Azure region, training data use, and DPA terms with HSO + Microsoft. Nothing in this document constitutes a legal opinion.
