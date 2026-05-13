# City of St. Catharines — AI System Inventory

**Prepared by Sentainel Compliance for the City of St. Catharines**
**Date: May 2026**
**Confidence: HIGH on identified deployments — major production AI system in place**
**Coverage: 26 Ontario municipal AI obligations**

---

## Executive summary

The City of St. Catharines is the **most AI-exposed of the four Niagara cities** in this bundle. The City operates a named, production-grade AI chatbot — "Catharine" — built on Microsoft Copilot Studio in partnership with HSO, launched February 2025. Catharine is a public-facing AI system that collects personal information (name, email, phone) from residents and visitors. This is exactly the AI system class that the IPC-OHRC Joint Principles + MFIPPA Bill 97 + (when proclaimed) EDSTA Bill 194 are designed to govern.

As of May 2026, public records do not show a published MFIPPA Bill 97 PIA for Catharine, do not show an Algorithmic Impact Assessment aligned with IPC-OHRC Principles, and do not show an AI inventory on stcatharines.ca. The Manager of Customer Service, Jonathan Wright, is named on record as the operational lead.

The City has signaled plans to extend Catharine's functionality to internal IT support and to Microsoft Teams + phone-system integration. **Each extension is a new AI system class requiring its own PIA + AIA under the regulatory stack.**

---

## Identified AI exposures

### AI-001 — "Catharine" AI-powered digital assistant (FLAGSHIP SYSTEM)

**Confidence: HIGH** — Vendor case study + City announcement on stcatharines.ca

**Sources:**
- City of St. Catharines press release: https://www.stcatharines.ca/en/news/ai-powered-digital-assistant-enhances-city-website.aspx
- HSO case study: https://www.hso.com/customer-case/city-of-st-catharines-enhances-citizen-services-with-ai-powered-chatbot

**System:** Catharine — AI-powered conversational digital assistant
**Technology stack:** Microsoft Copilot Studio (built on Microsoft Azure AI / Microsoft 365 ecosystem)
**Implementation partner:** HSO (Microsoft public-sector specialist)
**Owner:** Customer Service department, City of St. Catharines
**Operational lead:** Jonathan Wright, Manager of Customer Service
**Deployment timeline:** Pilot project announced February 2025; production live in 4 weeks per HSO case study
**Lifecycle stage:** Operational (in active public-facing production)
**User interaction:** Click-to-chat interface on every City webpage

**Personal information collected (from City's own statement):**
> "Catharine will collect name, email or phone if the user wants the digital assistant to email Citizens First to assist further with their inquiry."

**Personal information processed beyond the City's stated collection:**
- Conversation transcripts (every user interaction)
- Inferred resident concerns and complaints
- Timing patterns (when residents are most active)
- Routing decisions to City staff

**Lawful authority:** TBD — MFIPPA s. 28(2) likely cited, but no public PIA confirms
**PIA status:** No public PIA referencing MFIPPA Bill 97 or IPC-OHRC Principles
**AIA status:** No public AIA
**Public disclosure:** Yes — City press release dated Feb 2025 (predates MFIPPA Bill 97 + IPC-OHRC Principles)

**Obligations triggered (this is the long list — Catharine is the most regulated single system in the bundle):**

- **MFIPPA Bill 97 PIA** (mandatory effective July 1, 2026) — must be completed and on file
- **MFIPPA Bill 97 safeguards** — technical + administrative + physical safeguards documented
- **MFIPPA Bill 97 breach reporting** — procedure if Catharine experiences data exposure
- **IPC-OHRC p1 Valid and Reliable** — accuracy testing for City-specific question domains
- **IPC-OHRC p2 Safe** — monitoring + decommissioning authority
- **IPC-OHRC p3 Privacy Protective** — data minimization (does Catharine collect more than the City states?), opt-out for any automated decisions
- **IPC-OHRC p4 Human Rights Affirming** — Catharine must respond equitably to questions in languages and dialects of St. Catharines' diverse population
- **IPC-OHRC p5 Transparent** — current disclosure on stcatharines.ca is good but does not reference IPC-OHRC Principles
- **IPC-OHRC p6 Accountable Governance** — designated AI Governance Lead (Jonathan Wright is operational lead; needs governance-level designation)
- **IPC-OHRC p7 Accountable Recourse** — mechanism for residents to challenge Catharine's responses or correct misinformation
- **Trustworthy AI Framework ops-3** — public disclosure (partially satisfied)
- **Trustworthy AI Framework ops-5** — FIPPA/MFIPPA alignment (this is the strongest hook)
- **EDSTA Bill 194 s. 5(2)–(6)** — when proclaimed, all the above formalize as statutory obligations

**Specific privacy-by-design concerns to address:**

1. **Conversation transcript retention** — How long are Catharine interactions stored? Are they used to retrain the model?
2. **Email-to-Citizens-First handoff** — When Catharine emails the City on a resident's behalf, what data minimization applies?
3. **Microsoft Azure data residency** — Is Catharine processing in Canada or US? The Microsoft Copilot Studio default is multi-region. MFIPPA requires Canadian data residency for sensitive municipal information.
4. **"Learning with every interaction"** — The City's own press release states Catharine "will learn with every interaction." This is model-fine-tuning language. Does HSO / Microsoft use St. Catharines resident interactions to improve the underlying model? If yes, this is an IPC-OHRC p3 issue.

**Note from the HSO case study:** Catharine handled call-overflow during winter storms. This makes it operationally critical infrastructure — meaning IPC-OHRC p2 (Safe) is high-stakes: if Catharine fails or starts producing harmful content during an emergency, residents may not get accurate emergency information.

---

### AI-002 — Niagara Regional Police Service Axon ICC + ALPR (UMBRELLA)

**Confidence: HIGH** — Same NRPS umbrella exposure as Niagara Falls

See `demos/niagara/niagara-falls/02-pia-template.md` for the full ALPR PIA template. The City of St. Catharines shares this exposure with all four Niagara cities.

---

### AI-003 — Planned Catharine extension to internal IT support

**Confidence: HIGH** — Stated by City + HSO in case study

**Source:** HSO case study, quote: "With Catharine successfully supporting residents online, the City of St. Catharines is now planning to extend its AI capabilities internally. Future initiatives include deploying a chatbot to assist city staff with IT support."

**System:** IT support chatbot (likely Catharine architecture extended)
**Personal information processed:** Staff personal information, internal IT issue context, system access patterns
**Lawful authority:** Employer–employee employment relationship + MFIPPA
**PIA status:** Not yet required (system not yet deployed)

**Obligations triggered (forward-looking):**
- MFIPPA Bill 97 PIA must be completed **before** deployment
- IPC-OHRC alignment must be designed in **at the design phase**, not retrofitted
- Employer obligations under Ontario Employment Standards Act for AI use affecting staff
- Bill 149 ESA s. 8.4 — if the system is used in hiring or staff-decision contexts

**Sales opportunity:** This system is in design phase, not production. The City has the chance to do this right the first time. Sentainel Municipal Edition gives the City a template AIA + PIA that bakes IPC-OHRC compliance in from day one.

---

### AI-004 — Planned Microsoft Teams + phone-system integration

**Confidence: HIGH** — Stated by City + HSO

**Source:** HSO case study, quote: "integrating chatbot functionality into Microsoft Teams and the city's phone system for even broader impact."

**Obligations triggered:**
- Phone-system AI may be subject to call-recording disclosure (Ontario Personal Information Protection Act + federal Personal Information Protection and Electronic Documents Act)
- IPC-OHRC p5 Transparent — callers must be told they are interacting with AI
- IPC-OHRC p7 Accountable Recourse — phone callers must have an AI bypass to reach a human

---

### AI-005 — Microsoft 365 Copilot (extremely likely deployed)

**Confidence: HIGH** — The City is on the Microsoft Copilot Studio stack for Catharine, which means M365 Copilot is in the same tenancy and almost certainly licensed.

Same analysis as Niagara Falls AI-003 but with HIGH confidence here because of the public Microsoft partnership.

---

### AI-006 — Catharine training data + Microsoft Azure AI services

**Confidence: HIGH** — Implied by stack choice

Microsoft Copilot Studio uses Microsoft Azure AI services. The model behind Catharine is one of Microsoft's hosted LLMs (likely a GPT-family model via Azure OpenAI Service).

**Specific concerns:**
- The Microsoft Azure OpenAI Service has historically processed in US data centres unless explicit Canada Central / Canada East region is selected
- The vendor (HSO) implementation may have selected default regions for speed of deployment
- Conversation logs typically pass through Microsoft data plane

**This is the single most important question to ask Microsoft + HSO:** *In which Microsoft Azure region does Catharine process? Is St. Catharines resident personal information leaving Canadian soil?*

If the answer is yes, the City has a MFIPPA cross-border-transfer issue that needs to be addressed before MFIPPA Bill 97 effective dates.

---

### AI-007 — Bylaw enforcement, hiring AI, email security AI, predictive maintenance AI

Same inferred exposures as Niagara Falls AI-005, AI-007, AI-008, AI-009. The City of St. Catharines is a 140K-population municipality with a typical municipal IT stack; these exposures are present but not specifically documented in public records.

---

### AI-008 — Council deliberation AI (Hamilton precedent applies)

Same exposure pattern as Niagara Falls and Thorold (see Thorold inventory). St. Catharines Council is a target for AI-enabled astroturfing campaigns. Recourse procedure (06-recourse-workflow.md) provides the response framework.

---

## Compliance posture summary

| Obligation domain | Status | Required artifact |
|---|---|---|
| AI inventory | None public | This document |
| PIA for Catharine | None public — HIGH PRIORITY | 02-pia-template.md |
| AIA against IPC-OHRC for Catharine | None public — HIGH PRIORITY | 03-aia-template.md |
| Council disclosure | None public | 05-council-brief.md |
| Public recourse for Catharine outputs | None public | 06-recourse-workflow.md |
| IPC complaint preparation | None public | 07-ipc-complaint-prep.md |
| Whistleblower channel | None public | 08-whistleblower-procedure.md |
| Vendor due diligence (HSO + Microsoft) | None public | 09-vendor-questionnaire.md |
| Trustworthy AI Framework alignment | None public | (Sentainel platform output) |

---

## Why St. Catharines is the most important Niagara city for Sentainel

Unlike Niagara Falls (which has staff GenAI use but no flagship production AI), St. Catharines has **a named, public-facing, operational AI system processing personal information**. This means:

1. **IPC-OHRC enforcement is more likely** — visible AI systems get complaints; invisible ones get news investigations later.
2. **The PIA is mandatory and overdue** — MFIPPA Bill 97 effective dates are weeks away.
3. **The City has already demonstrated AI investment** — leadership is bought in; the conversation isn't "why" but "how to do it right."
4. **HSO + Microsoft as implementation partners are sophisticated vendors** — they will already have answers to the vendor questionnaire; the City just needs to ask.
5. **Catharine's planned extensions multiply the exposure** — each new chatbot deployment is a new PIA / AIA cycle.

For Sentainel sales: St. Catharines is the highest-probability conversion target in this bundle.

---

## Recommended response sequence

1. **Immediately**: Confirm with HSO + Microsoft the Azure region for Catharine processing (cross-border data flow question)
2. **Within 30 days**: Designate AI Governance Lead (recommend: Jonathan Wright or a peer in IT)
3. **Within 60 days**: Complete and publish MFIPPA Bill 97 PIA for Catharine
4. **Within 90 days**: Complete AIA against IPC-OHRC Joint Principles for Catharine + plan it for the two extension systems
5. **Within 90 days**: Stand up public AI inventory + recourse workflow
6. **Within 180 days**: Complete vendor DPA review with HSO + Microsoft against MFIPPA Bill 97 + IPC-OHRC Principles
7. **Ongoing**: Sentainel Municipal Edition continuous monitoring + quarterly attestation

---

## Disclaimers

This inventory was compiled from public records. The City of St. Catharines can confirm or correct any item. Sentainel updates the inventory on a rolling basis.

Nothing in this document constitutes a legal opinion. The City should retain Ontario MFIPPA / employment law counsel for any specific compliance question.
