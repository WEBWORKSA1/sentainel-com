# City of St. Catharines — Privacy Impact Assessment
## Catharine AI-Powered Digital Assistant (System AI-001)

**Prepared by Sentainel Compliance for the City of St. Catharines**
**MFIPPA Bill 97 + IPC-OHRC Principles aligned · NIST AI RMF mapped**
**Date: May 2026**

---

## 1. System overview

**System name:** Catharine — AI-powered digital assistant

**System owner:** City of St. Catharines, Customer Service department
**Operational lead:** Jonathan Wright, Manager of Customer Service
**Vendor (implementation):** HSO
**Vendor (platform):** Microsoft Copilot Studio (Microsoft Azure)
**Deployment date:** February 2025 (pilot); production confirmed in HSO case study
**Operational footprint:** Click-to-chat icon on every page of stcatharines.ca
**Status:** Production

**System function:** Conversational AI that responds to resident inquiries about City services (water bills, property taxes, recreational activities, etc.), provides direct answers from City website content, and escalates inquiries to Citizens First staff when unable to answer directly.

**Sources of system description:**
- City press release: https://www.stcatharines.ca/en/news/ai-powered-digital-assistant-enhances-city-website.aspx
- HSO case study: https://www.hso.com/customer-case/city-of-st-catharines-enhances-citizen-services-with-ai-powered-chatbot

---

## 2. Personal information collected

From the City's own statement on stcatharines.ca:

> "Catharine will collect name, email or phone if the user wants the digital assistant to email Citizens First to assist further with their inquiry."

| Data element | Collection trigger | Stated purpose | Retention |
|---|---|---|---|
| Name | User-initiated for handoff | Citizens First follow-up | TBD — must be specified |
| Email | User-initiated for handoff | Citizens First follow-up | TBD |
| Phone | User-initiated for handoff | Citizens First follow-up | TBD |
| Conversation transcript | Continuous during session | Service delivery + "learn with every interaction" | TBD |
| IP address | Continuous (technical necessity) | Session management | TBD |
| Inferred location / device | Continuous (technical necessity) | Session management | TBD |
| Question patterns | Aggregate | Service improvement | TBD |

**Significant gap:** The City's published statement covers only the explicit handoff data (name/email/phone). The conversation transcripts, IP addresses, and inferred metadata are also personal information under MFIPPA — and they are collected by default for every interaction, not just at handoff. **The PIA must address this broader collection.**

---

## 3. MFIPPA Bill 97 PIA requirements (effective July 1, 2026)

### 3.1 Lawful authority for collection

**Required:** A clear statement of statutory authority for collecting Catharine interaction data.

MFIPPA s. 28(2) authorizes collection where "the information is collected for the purposes of law enforcement" or "the collection is expressly authorized by statute" or "the collection is necessary to the proper administration of a lawfully authorized activity."

Catharine collection falls under the third category. The PIA must articulate:

- The "lawfully authorized activity" (citizen customer service is a municipal function under the Municipal Act)
- Why each data category is **necessary** (not just convenient)
- Specifically: why are conversation transcripts retained beyond the immediate session?

### 3.2 Purpose limitation (MFIPPA s. 32)

The stated purposes are:

1. Direct answer to resident inquiry (primary)
2. Handoff to Citizens First (secondary)
3. "Learn with every interaction" — model improvement (tertiary)

**Critical question:** Does "learn with every interaction" mean:

- (a) The Catharine knowledge base is updated when staff correct errors (acceptable under MFIPPA)
- (b) Microsoft Azure OpenAI / Copilot Studio retains St. Catharines interactions to fine-tune underlying models (potentially exceeds MFIPPA purpose limitation)
- (c) HSO retains City interactions to improve its public-sector chatbot offerings (likely exceeds MFIPPA purpose limitation)

The PIA must identify which interpretation applies and obtain vendor confirmation in writing.

### 3.3 Safeguards (MFIPPA Bill 97 amendments)

**Required documentation:**

| Safeguard | Required documentation |
|---|---|
| Encryption at rest | Microsoft Azure default encryption + Customer Key option |
| Encryption in transit | TLS 1.2+ |
| Role-based access | Citizens First staff access only; logged + audited |
| Audit logging | Microsoft Purview audit log retention period |
| Vendor DPA terms | HSO contract + Microsoft Online Services Terms |
| Retention enforcement | Microsoft Copilot Studio + Power Platform retention policies |
| Secure deletion | Documented procedure for resident data removal on request |
| Data residency | Azure region — must confirm Canada Central / Canada East |

### 3.4 Data subject rights (MFIPPA s. 36–37)

Residents have the right under MFIPPA to:

- Access their personal information held by the City
- Request correction
- Request deletion (in limited circumstances)

**Operational implication:** A resident who has used Catharine has interactions stored. The PIA must establish:

- How a resident files an access request for their Catharine interaction history
- The format in which the data will be provided
- The timeline for response (MFIPPA standard: 30 days)
- The procedure if a resident requests deletion

This dovetails with `06-recourse-workflow.md`.

### 3.5 Breach notification (MFIPPA Bill 97 amendments)

If Catharine experiences a data breach (HSO compromise, Microsoft incident, City IT incident), the City must:

- Notify the IPC within the MFIPPA Bill 97 statutory window
- Notify affected residents per the notification standard
- Document the breach + remediation in the City's breach register

The PIA must include a breach response procedure specific to Catharine.

---

## 4. IPC-OHRC Joint Principles alignment

| Principle | Compliance posture | Action required |
|---|---|---|
| **p1 Valid and Reliable** | UNKNOWN — no published accuracy reports | Establish baseline: % of resident questions Catharine answers correctly. Quarterly re-test. |
| **p2 Safe** | UNKNOWN — no published decommissioning procedure | Document pause/decommission authority + procedure for emergency information failure |
| **p3 Privacy Protective** | PARTIAL — City discloses some collection, full collection scope not addressed | Address conversation transcripts, IP addresses, inferred metadata in the PIA |
| **p4 Human Rights Affirming** | UNKNOWN — no published equity assessment | Test Catharine responsiveness across languages, dialects, accessibility tools |
| **p5 Transparent** | PARTIAL — disclosure on stcatharines.ca exists, predates IPC-OHRC Principles | Update disclosure to reference IPC-OHRC Principles + add AI inventory entry |
| **p6 Accountable Governance** | PARTIAL — Jonathan Wright is operational lead, formal AI Governance Lead role not yet established | Formally designate; publish governance committee structure |
| **p7 Accountable Recourse** | INSUFFICIENT — no published AI-specific recourse channel | Establish recourse workflow (06-recourse-workflow.md) |

---

## 5. NIST AI RMF mapping

This section maps the Catharine system to NIST AI Risk Management Framework controls. Cross-reference: `cross-references/coverage-matrix.csv`.

| NIST control | Applies to Catharine? | Current status |
|---|---|---|
| GOVERN-1.1 (legal & regulatory) | ✅ | Partial — MFIPPA cited; IPC-OHRC + Trustworthy AI + EDSTA not addressed |
| GOVERN-1.6 (AI inventory) | ✅ | Missing — no city AI inventory |
| GOVERN-2.1 (roles & responsibilities) | ✅ | Partial — Jonathan Wright operational lead; AI Governance Lead role not designated |
| GOVERN-2.2 (workforce training) | ✅ | Unknown — no public training program |
| GOVERN-6.1 (third-party policies) | ✅ | Unknown — HSO + Microsoft DPA terms not public |
| MAP-1.1 (context of use) | ✅ | Partial — purpose published, secondary uses unclear |
| MAP-1.6 (system requirements) | ✅ | Unknown |
| MAP-3.5 (human oversight) | ✅ | Partial — handoff to Citizens First exists; oversight metrics not published |
| MAP-4.1 (third-party legal risks) | ✅ | Missing — HSO + Microsoft vendor risk not formally assessed |
| MEASURE-2.1 (test sets & metrics) | ✅ | Missing — no published accuracy reports |
| MEASURE-2.7 (security & privacy risks) | ✅ | Partial — MFIPPA covers privacy; security stack undocumented |
| MEASURE-2.8 (transparency) | ✅ | Partial — disclosure exists, AI inventory missing |
| MEASURE-2.9 (explainability) | ✅ | Missing — no published procedure for explaining Catharine outputs |
| MEASURE-2.10 (privacy risk) | ✅ | Partial |
| MEASURE-2.11 (fairness & bias) | ✅ | Missing — no equity assessment |
| MANAGE-2.4 (supersede deficient AI) | ✅ | Missing — no decommissioning procedure |
| MANAGE-3.1 (third-party risk) | ✅ | Missing — vendor risk not monitored |
| MANAGE-4.1 (post-deployment monitoring) | ✅ | Missing — no public monitoring metrics |
| MANAGE-4.3 (incident communication) | ✅ | Partial — FOI exists; AI-specific incident comms missing |

**19 NIST controls applicable, 0 fully satisfied on public record.** This is the documentation gap Sentainel closes.

---

## 6. Risk assessment

### High-likelihood / high-impact risks

1. **MFIPPA Bill 97 IPC binding order for missing PIA.** Effective July 1, 2026 — a complaint filed in summer 2026 about Catharine could quickly produce a binding order. Cost: legal + remediation = $250K–$750K + reputational.

2. **Cross-border data transfer issue.** If Microsoft Azure region defaults to US, every Catharine interaction is a MFIPPA contravention. The remediation requires Microsoft Azure region migration + vendor renegotiation.

3. **Hallucination cascade.** Catharine could give a resident incorrect information about a critical service (water main break, property tax deadline, emergency procedure). The Microsoft Copilot Studio architecture grounds responses in City content, but hallucinations remain possible. The IPC-OHRC p2 Safe principle would require demonstrated decommissioning procedure.

4. **Discriminatory chatbot behaviour.** Microsoft's underlying models have documented bias against non-English-language queries and against speakers with marked accents (when voice-enabled). Catharine in St. Catharines (diverse Niagara population) must demonstrate equitable performance.

### Medium-likelihood / medium-impact risks

5. **Vendor lock-in.** HSO + Microsoft Copilot Studio architecture is difficult to migrate. EDSTA proclamation may require capabilities Microsoft does not provide by default.

6. **Extension creep without PIA refresh.** The planned IT-support chatbot + Teams + phone integration each require their own PIA.

---

## 7. Mitigation plan

| Action | Owner | Deadline | Sentainel artifact |
|---|---|---|---|
| Confirm Microsoft Azure data residency for Catharine | Jonathan Wright + HSO | 30 days | Vendor questionnaire response |
| Designate AI Governance Lead | CAO | 30 days | Governance committee charter |
| Publish Catharine PIA on stcatharines.ca | AI Governance Lead | 60 days | This document |
| Publish AI inventory on stcatharines.ca | AI Governance Lead | 60 days | 01-ai-inventory.md |
| Stand up Catharine recourse mechanism | AI Governance Lead | 90 days | 06-recourse-workflow.md |
| Complete vendor due-diligence questionnaire with HSO + Microsoft | Procurement | 90 days | 09-vendor-questionnaire.md |
| Publish Q1 Catharine accuracy + equity report | AI Governance Lead | 120 days | Reporting template |
| Complete IPC-OHRC alignment scoring on quarterly basis | AI Governance Lead | Ongoing | 04-ipc-ohrc-alignment.md |

---

## 8. Reviewer + sign-off

**Prepared by:** Sentainel Compliance Platform, May 2026
**Drawn from:** stcatharines.ca + HSO case study + MFIPPA Bill 97 + IPC-OHRC Joint Principles + NIST AI RMF
**Intended reviewer:** Jonathan Wright (Manager of Customer Service) + CAO + IT Director + City Clerk

This PIA is a draft template generated by the Sentainel platform from public-record evidence. The City should engage HSO, Microsoft, and counsel to complete validated answers and obtain official sign-off.
