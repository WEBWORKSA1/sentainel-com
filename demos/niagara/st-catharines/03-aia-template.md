# City of St. Catharines — Algorithmic Impact Assessment
## Catharine AI-Powered Digital Assistant (System AI-001)

**Prepared by Sentainel Compliance · IPC-OHRC Joint Principles aligned · Trustworthy AI Framework mapped**
**Date: May 2026**

---

## 1. System under assessment

**System:** Catharine — public-facing AI digital assistant on stcatharines.ca
**Technology:** Microsoft Copilot Studio (Microsoft Azure AI / Azure OpenAI Service)
**Implementation partner:** HSO
**Operational lead:** Jonathan Wright, Manager of Customer Service
**Deployment:** Production since February 2025

This is the City's flagship AI deployment and the primary system requiring IPC-OHRC alignment.

---

## 2. Why this AIA exists

IPC-OHRC Joint Principle 6 (Accountable) requires:

> "Up front risk assessments should be carried out to identify and assess risks associated with the AI system, and to develop measures necessary to mitigate against them. Such assessments should include privacy and human rights impact assessments, algorithmic impact assessments, and others as relevant and appropriate."

Catharine was deployed in February 2025 — before the IPC-OHRC Principles were published in January 2026. The City had no obligation to conduct an AIA at deployment time. **It now has the obligation to retrofit one.**

---

## 3. AI lifecycle assessment

| Lifecycle stage | Current state | IPC-OHRC alignment |
|---|---|---|
| Design, data, modeling | Vendor-determined (Microsoft Azure OpenAI Service) + HSO grounding on stcatharines.ca content | Partial — vendor design largely opaque to City |
| Verification & validation | Unknown — no published validation reports | **p1 gap** |
| Deployment | Production since Feb 2025 | Deployed before IPC-OHRC Principles existed |
| Operation & monitoring | Unknown — no public monitoring metrics | **p1 + p6 gap** |
| Decommissioning | No published procedure | **p2 + p6 gap** |

---

## 4. Principle-by-principle scoring

### p1 Valid and Reliable: ⚠️ PARTIAL

**Posture:** HSO + Microsoft validate Catharine against general LLM benchmarks. The City has no published validation against St. Catharines-specific queries.

**Required actions:**

- Establish a baseline test set of 100 representative resident questions across major service categories (water billing, taxes, recreation, garbage, bylaw, etc.)
- Run the test set quarterly + after each major Microsoft Copilot Studio update
- Publish accuracy + error categorization in a quarterly AI report
- Implement an escalation procedure for systematic errors

### p2 Safe: ⚠️ PARTIAL

**Posture:** Catharine handed off to Citizens First when unable to answer (a safe default). But no documented procedure for:

- Pausing Catharine if it begins producing harmful content during a crisis
- Decommissioning Catharine if vendor relationship terminates or systemic accuracy issues emerge
- Communicating with the public during a Catharine outage

**Required actions:**

- AI Governance Lead has explicit pause/decommission authority
- Crisis communication plan if Catharine misinforms during an emergency
- Decommissioning runbook (vendor change, model retirement, accuracy collapse)

### p3 Privacy Protective: ⚠️ PARTIAL

See PIA (02-pia-template.md) for the detailed analysis.

**Critical gap:** Cross-border data residency. Catharine processing region must be confirmed Canadian.

### p4 Human Rights Affirming: ⚠️ UNKNOWN — POTENTIAL HIGH RISK

**Posture:** No published equity assessment.

St. Catharines is a diverse city. The Niagara region has growing populations whose first language is not English, including significant Indigenous (Six Nations + Mississauga of the Credit communities nearby), Punjabi, Arabic, Spanish, and Mandarin-speaking residents.

Microsoft's underlying language models have documented performance gaps for:

- Non-English-language queries
- Speakers of African American English
- Voice queries with marked accents
- Indigenous languages

**Required actions:**

- Test Catharine with a deliberately diverse query set, in multiple languages where City services should be accessible in those languages
- Test accessibility integration (screen readers, voice input for users with disabilities)
- Run quarterly disparate impact analysis: does Catharine refer users from certain postal codes / language groups to Citizens First at higher rates? If yes, why?
- Remediate proactively before any OHRC complaint

### p5 Transparent: ⚠️ PARTIAL

**Posture:** The stcatharines.ca disclosure is good (it explains Catharine is AI-powered, what data is collected, that data is stored, that Catharine learns). But it predates the IPC-OHRC Principles and does not address:

- The full data collection scope (conversation transcripts, IP, metadata)
- The relationship with HSO + Microsoft
- The lawful authority
- The recourse mechanism
- The traceability documentation

**Required actions:**

- Update the public disclosure to address all IPC-OHRC p5 sub-requirements (visible, understandable, traceable, explainable)
- Add an AI inventory entry on stcatharines.ca
- Publish a plain-language explainer for how Catharine works (cf. NYC's experience with MyCity chatbot transparency)

### p6 Accountable Governance: ⚠️ PARTIAL

**Posture:** Jonathan Wright is the named operational lead. The City has not (publicly) designated an AI Governance Lead with formal authority across departments.

**Required actions:**

- Formally designate AI Governance Lead — recommend either Jonathan Wright (with expanded mandate) or a peer in IT Director's office
- Establish AI Governance Committee with reps from Customer Service, IT, Clerk's office, Communications, Legal
- Publish governance committee charter
- Document AI risk assessment methodology + cadence

### p7 Accountable Recourse + Whistleblower: ❌ FAIL

**Posture:** Standard FOI process exists; no AI-specific recourse channel.

**Required actions:**

- Stand up recourse workflow (06-recourse-workflow.md)
- Stand up whistleblower channel (08-whistleblower-procedure.md)
- Publish both on stcatharines.ca

---

## 5. Aggregate score: 2.5 / 7

The City of St. Catharines is **partially aligned** with the IPC-OHRC Joint Principles for Catharine. This is **better than the Niagara Region average** (1.7/7) because:

- Catharine has a published public disclosure (Feb 2025 press release)
- Jonathan Wright is named publicly as operational lead
- The City announced Catharine proactively rather than letting investigators surface it later

**But:** the gap to full alignment is identifiable and remediable within 90–180 days at low cost. The City can move from 2.5/7 to 5.5/7 with the actions specified above.

---

## 6. Recommended remediation timeline

| Timeline | Action | Score impact |
|---|---|---|
| 30 days | Confirm Azure data residency | +0.3 on p3 |
| 30 days | Designate AI Governance Lead | +0.5 on p6 |
| 60 days | Publish PIA + AI inventory | +0.5 on p5 |
| 90 days | Stand up recourse + whistleblower | +1.0 on p7 |
| 120 days | Q1 accuracy + equity report | +0.5 on p1 + p4 |
| 180 days | Decommissioning procedure + crisis plan | +0.5 on p2 |

**Achievable 12-month score: 5.8 / 7.** This places St. Catharines as a sector leader in Ontario municipal AI compliance.

---

## 7. Catharine-specific design recommendations

Beyond the procedural / governance requirements above, Sentainel recommends the following Catharine-specific design changes:

### Recommendation 1: AI disclosure banner at every interaction

Currently, the chat icon launches a chat interface. The first message should explicitly state:

> "Hi, I'm Catharine — an AI assistant. I can answer general questions about City services. If I'm unable to help, I'll connect you with a Citizens First representative. Your conversation is stored to improve service."

This satisfies IPC-OHRC p5 visible + understandable requirements at the point of interaction.

### Recommendation 2: Citizens First escalation as one-click

Residents should be able to bypass Catharine at any point with a visible "Talk to a human" button. This addresses both p3 (no forced AI processing) and p4 (accessibility for residents who find AI unhelpful).

### Recommendation 3: Quarterly transparency report

Publish on stcatharines.ca:

- Number of Catharine interactions
- Top 10 question categories
- Accuracy rate
- Escalation rate to Citizens First
- Equity metrics (any disparity in escalation by area / language)

### Recommendation 4: Sensitive query routing

When residents ask about:

- Domestic violence support
- Substance use support
- Mental health crisis
- Discrimination complaints

Catharine must **immediately** route to a human + provide local resource information. The Microsoft Azure OpenAI Service can implement this via category-detection prompts. This addresses IPC-OHRC p2 Safe and prevents catastrophic chatbot failures during high-stakes interactions.

---

## 8. NIST AI RMF mapping

This AIA touches the following NIST controls:

- **GOVERN-1.1** (legal & regulatory requirements managed)
- **GOVERN-1.4** (risk management documented)
- **GOVERN-1.6** (AI inventory)
- **GOVERN-2.1** (roles & responsibilities)
- **MAP-1.1** (context of use)
- **MAP-3.5** (human oversight — Citizens First handoff)
- **MEASURE-2.1** (test sets & metrics — recommended)
- **MEASURE-2.6** (AI safety eval)
- **MEASURE-2.8** (transparency)
- **MEASURE-2.9** (explainability)
- **MEASURE-2.11** (fairness & bias eval)
- **MEASURE-3.3** (stakeholder feedback)
- **MANAGE-2.4** (supersede deficient AI)
- **MANAGE-4.1** (post-deployment monitoring)

Full mapping in `cross-references/mappings/nist-to-ca-on-ipc-ohrc.yaml`.

---

## 9. Reviewer sign-off

This AIA is a draft template generated by the Sentainel platform from public-record evidence. The City should engage HSO, Microsoft, OHRC counsel, and accessibility experts for the equity component before publication.
