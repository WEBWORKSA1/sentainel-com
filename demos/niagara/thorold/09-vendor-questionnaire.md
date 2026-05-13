# Vendor Due Diligence Questionnaire — Town of Thorold
## For AI-containing products and services procured by the Town

**Prepared by Sentainel Compliance · MFIPPA Bill 97 + IPC-OHRC aligned**
**Date: May 2026**

---

## How to use this questionnaire

The Town of Thorold issues this questionnaire to any vendor providing products or services that contain AI features, including:

- SaaS products with AI features (analytics, chatbots, recommendations)
- AI-specific products (machine learning, computer vision, NLP)
- Generative AI tools (LLMs, image generators, code generators)
- AI-enabled cybersecurity products
- AI-enabled HR / hiring products
- AI-enabled bylaw enforcement or compliance products

Vendor responses become part of the Town's MFIPPA Bill 97 vendor record and are referenced in any IPC investigation involving the vendor's system.

**Important:** This questionnaire applies to products that *contain* AI features even if AI is not the primary product. A standard CRM with an AI suggestion feature requires this questionnaire.

---

## Section 1: Vendor identification

1.1 Vendor legal name:
1.2 Vendor principal business address:
1.3 Vendor contact for AI compliance questions:
1.4 Vendor primary regulator (if any):
1.5 Vendor incorporation jurisdiction:
1.6 Vendor's most recent independent audit report (SOC 2, ISO 27001, etc.):

---

## Section 2: System description

2.1 Name of the AI system or AI-containing product:
2.2 What AI techniques does the system use? (LLM, computer vision, predictive analytics, etc.)
2.3 Is the AI part of the core product or a separable feature?
2.4 Can AI features be disabled at the Town's discretion?
2.5 What model or models are used? Provide vendor name, version, and (if a third-party model) vendor of the underlying model.
2.6 Where is the AI processing performed? Specify region(s), data centre(s), and country.
2.7 Where is the data stored at rest? Specify region(s), data centre(s), and country.
2.8 Is any data transferred outside Canada? If yes, describe the legal mechanism.

---

## Section 3: Data handling

3.1 What personal information of Town residents will the system process?
3.2 What data minimization measures are in place?
3.3 What is the retention period for resident data?
3.4 Is data used to train or fine-tune the vendor's AI models? Provide written commitment.
3.5 Can the Town request deletion of specific resident data? Specify procedure and SLA.
3.6 Does the vendor have a Data Processing Agreement compatible with MFIPPA Bill 97? Provide copy.
3.7 What is the breach notification procedure and SLA?
3.8 What encryption standards are used for data in transit and at rest?

---

## Section 4: IPC-OHRC Joint Principles compliance

### p1 Valid and Reliable

4.1 What validation testing has the AI undergone?
4.2 Are validation results publicly available or available under NDA?
4.3 How does the vendor monitor for output drift over time?
4.4 What is the procedure for re-validation when the system is updated?

### p2 Safe

4.5 What harm-prevention measures are in place?
4.6 What is the procedure for emergency decommissioning?
4.7 Has the system ever been decommissioned for safety reasons? If yes, describe.

### p3 Privacy Protective

4.8 Is the system designed with privacy-by-design principles?
4.9 What is the smallest dataset the system requires to function?
4.10 Does the system offer opt-out for individuals facing high-risk automated decisions?

### p4 Human Rights Affirming

4.11 Has the system been audited for disparate impact across Ontario Human Rights Code-protected grounds?
4.12 Provide disparate impact testing results.
4.13 What remediation procedure exists if disparate impact is identified?
4.14 Does the system have specific provisions for Indigenous communities, racialized communities, or other equity-deserving groups?

### p5 Transparent

4.15 Is the AI's existence disclosed to end users by default?
4.16 What plain-language documentation is available for residents who want to understand the system?
4.17 Are model card or system datasheet documents available?
4.18 What inference traceability does the system provide?

### p6 Accountable Governance

4.19 What human-in-the-loop provisions exist?
4.20 Who at the vendor is responsible for AI governance?
4.21 Does the vendor have a published AI governance policy?
4.22 What is the vendor's procedure for escalating AI-related concerns?

### p7 Accountable Recourse

4.23 Does the vendor have a public recourse mechanism for individuals affected by AI outputs?
4.24 What is the vendor's whistleblower protection for vendor staff observing AI non-compliance?
4.25 Can the Town's residents file complaints directly with the vendor?

---

## Section 5: NIST AI RMF alignment

5.1 Has the vendor mapped this system to the NIST AI Risk Management Framework?
5.2 If yes, provide the mapping or summary.
5.3 If no, would the vendor be willing to do so as a condition of procurement?
5.4 Specifically, has the vendor evaluated against:
 - GOVERN-1.1 (regulatory requirements)
 - GOVERN-1.4 (risk management documentation)
 - MEASURE-2.1 + 2.3 (test sets and performance evaluation)
 - MEASURE-2.7 + 2.10 (security and privacy risks)
 - MEASURE-2.11 (fairness and bias evaluation)
 - MANAGE-4.1 (post-deployment monitoring)

---

## Section 6: Regional considerations for Niagara cities

6.1 Does the vendor have other Ontario municipal customers? List them.
6.2 Does the vendor have any other Niagara Region customers?
6.3 If the vendor's system is shared across multiple municipalities, what cross-municipality coordination is supported?
6.4 Does the vendor support inter-municipal coordinated PIA processes?

---

## Section 7: Council Astroturfing-specific considerations (Thorold-specific)

Given Thorold's 2024–2025 documented incident, the Town asks vendors providing communication-handling or constituent-engagement AI:

7.1 Does the system have any features that could be exploited for synthetic communication campaigns against municipal councils?
7.2 Does the system have provisions for detecting AI-generated communications received as input?
7.3 What protections exist against the system being used to amplify or coordinate communication campaigns?
7.4 Does the vendor have a position on its products' use in advocacy or lobbying contexts?

---

## Section 8: Contractual provisions required

The Town requires the following contractual provisions:

8.1 MFIPPA Bill 97-aligned Data Processing Agreement
8.2 Breach notification SLA aligned with MFIPPA Bill 97 effective dates
8.3 Audit rights for the Town or its designee
8.4 Right to require AIA / PIA documentation as the system evolves
8.5 Right to require vendor cooperation in IPC investigations involving the system
8.6 Right to terminate without penalty if vendor's AI compliance posture materially weakens
8.7 Indemnification for vendor AI-derived non-compliance affecting the Town
8.8 Survival of confidentiality, audit, and indemnification provisions post-termination

---

## Section 9: Vendor commitment

By signing below, the Vendor confirms that responses provided in Sections 1–7 are accurate and complete to the Vendor's knowledge and that the contractual provisions in Section 8 will be incorporated into any final agreement.

Vendor authorized signatory:
Name:
Title:
Date:
Signature:

---

## Section 10: Town review checklist (internal)

For Town use during vendor evaluation:

- [ ] Vendor identification complete (Section 1)
- [ ] System description satisfies MFIPPA + IPC-OHRC scoping (Section 2)
- [ ] Data handling acceptable for Town's risk tolerance (Section 3)
- [ ] IPC-OHRC principle alignment satisfactory (Section 4)
- [ ] NIST AI RMF alignment present or agreed to be added (Section 5)
- [ ] Regional Niagara coordination supported (Section 6)
- [ ] Astroturfing considerations addressed if applicable (Section 7)
- [ ] Contractual provisions accepted (Section 8)
- [ ] AI Governance Lead approval
- [ ] CAO approval (procurement value threshold dependent)
- [ ] Council approval (procurement value threshold dependent)

---

## When to engage Sentainel

Sentainel Municipal Edition includes:

- Vendor questionnaire automation (this questionnaire as a digital workflow)
- Vendor compliance tracking dashboard
- Vendor due diligence scoring against MFIPPA Bill 97 + IPC-OHRC standards
- Vendor change-monitoring (alerts when vendor compliance posture changes)

For a Town of Thorold's procurement volume, Sentainel's vendor management module is the single highest-value component of the Municipal Edition.

Contact: `web@sentainel.com`
