# Vendor Due Diligence Questionnaire — City of St. Catharines
## For HSO + Microsoft + Other AI Vendors

**Prepared by Sentainel Compliance · May 2026**
**Note:** This questionnaire is structured for retrospective application to HSO + Microsoft regarding Catharine (where the procurement happened before this questionnaire existed) AND for prospective application to future AI vendors.

---

## How to use this questionnaire

For retrospective HSO + Microsoft application:

- This questionnaire is issued as a vendor compliance attestation request, not a procurement gate (procurement is already complete)
- HSO + Microsoft are asked to provide attestations regarding Catharine's current state and any compliance gaps
- Responses become the foundation of MFIPPA Bill 97 vendor record before July 1, 2026 effective date
- Gaps identified become remediation items

For prospective application (future Catharine extensions, future AI procurement):

- Standard procurement gate questionnaire
- Responses inform AI Governance Lead approval before procurement proceeds

---

## Section 1: Vendor identification

1.1 Vendor legal name:
1.2 Vendor principal business address:
1.3 Vendor contact for AI compliance questions:
1.4 Vendor primary regulator (if any):
1.5 Vendor incorporation jurisdiction:
1.6 Vendor's most recent independent audit:

---

## Section 2: System description (Catharine-specific)

2.1 Name of the AI system: **Catharine** (for retrospective HSO + Microsoft application)
2.2 What AI techniques does the system use? Specifically:
 - Underlying model (e.g., Microsoft Azure OpenAI Service GPT-4 family, etc.):
 - Microsoft Copilot Studio version and configuration:
 - RAG vs. fine-tuning architecture:
 - Multi-turn conversation handling:
2.3 Is Catharine on the Microsoft Copilot Studio standard tier or Custom Copilot tier?
2.4 Has Catharine been customized beyond Copilot Studio's standard capabilities? Describe.
2.5 Where is the AI processing performed? **Specifically: which Microsoft Azure region(s)? This is the highest-priority question.**
2.6 Where is conversation data stored at rest? Specify region.
2.7 Is any St. Catharines resident personal information transferred outside Canada?
 - If yes, describe the legal mechanism (Microsoft Online Services DPA + EU SCCs equivalent + MFIPPA assessment)

---

## Section 3: Data handling

3.1 What personal information of St. Catharines residents will Catharine process?
 - Stated collection: name, email, phone (per City press release)
 - Inferred processing: conversation transcripts, IP-derived geolocation, browser fingerprint, time patterns
 - Confirm what is actually processed beyond stated collection
3.2 What data minimization measures are in place?
3.3 What is the retention period for conversation data?
3.4 **Is Catharine conversation data used to train, fine-tune, or otherwise modify the underlying Azure OpenAI model?**
 - This question is critical. The City press release says Catharine "learns with every interaction." What does this mean technically?
 - Option A: RAG context accumulation that does not modify the base model — acceptable
 - Option B: Fine-tuning of a customer-specific model that uses St. Catharines resident data — requires explicit consent + IPC-OHRC p3 analysis
 - Option C: Fine-tuning of a shared model used across multiple customers — not acceptable under MFIPPA
3.5 Can the City request deletion of specific resident conversation data? Specify procedure and SLA.
3.6 Does the vendor have a Data Processing Agreement compatible with MFIPPA Bill 97? Provide copy.
3.7 What is the breach notification procedure and SLA?
3.8 What encryption standards are used for data in transit and at rest?
3.9 **What audit logs are available to the City regarding Microsoft, HSO, or vendor staff access to Catharine conversation data?**
3.10 What audit logs are available to the City regarding model behavior changes over time?

---

## Section 4: IPC-OHRC Joint Principles compliance

Standard principle-by-principle questionnaire (see other city versions) with Catharine-specific emphases:

### p1 Valid and Reliable

4.1 What validation testing has Catharine undergone specifically for St. Catharines municipal context?
 - Generic Microsoft model validation does not satisfy IPC-OHRC p1 for municipal-specific use
4.2 What accuracy rate metrics are reported and tracked?
4.3 Are validation results available to the City for IPC investigation purposes?
4.4 How does HSO monitor for output drift over time?
4.5 What is the procedure for re-validation when Catharine knowledge base is updated?

### p2 Safe

4.6 What harm-prevention measures are in place specifically for emergency information delivery (e.g., winter storm response)?
4.7 What is the procedure for emergency decommissioning if Catharine produces dangerous content?
4.8 What is the SLA for Catharine availability during peak load (e.g., emergencies)?
4.9 Has Catharine ever been paused for safety reasons since deployment? Describe.

### p3 Privacy Protective

4.10 What privacy-by-design principles informed Catharine's deployment?
4.11 What is the smallest data Catharine requires for routine operation?
4.12 Does Catharine offer opt-out for residents who do not want AI-mediated interactions?
4.13 How is the "learns with every interaction" pattern reconciled with MFIPPA s. 32 purpose limitation?

### p4 Human Rights Affirming

4.14 Has Catharine been audited for disparate impact across Ontario Human Rights Code-protected grounds?
4.15 Specifically, what is Catharine's response quality across:
 - English (baseline)
 - French (Ontario bilingual + significant local population)
 - Spanish (significant local + visitor population)
 - Arabic (significant local population)
 - Punjabi (significant local population)
 - Mandarin (significant local + tourist population)
 - Italian (significant local population)
4.16 What remediation procedure exists if disparate impact is identified?
4.17 Does Catharine have specific provisions for international students at Brock University and Niagara College?

### p5 Transparent

4.18 Is the AI's existence disclosed to end users by default? (Yes — "Hi! I'm Catharine" — confirm.)
4.19 What plain-language documentation is available for residents?
4.20 Are model card or system datasheet documents available?
4.21 What inference traceability is available? Can the City reconstruct why Catharine gave a specific response?

### p6 Accountable Governance

4.22 What human-in-the-loop provisions exist for high-stakes Catharine interactions?
4.23 Who at HSO is responsible for Catharine governance?
4.24 Who at Microsoft is responsible for Azure OpenAI Service supporting Catharine?
4.25 What is the vendor's procedure for escalating AI-related concerns from the City?

### p7 Accountable Recourse

4.26 Does HSO have a public recourse mechanism for individuals affected by Copilot Studio products?
4.27 What is HSO's whistleblower protection for vendor staff observing AI non-compliance?
4.28 Can St. Catharines residents file complaints directly with HSO or Microsoft regarding Catharine?

---

## Section 5: NIST AI RMF alignment

5.1 Has HSO mapped Catharine to the NIST AI Risk Management Framework?
5.2 Has Microsoft mapped Azure OpenAI Service to NIST AI RMF?
5.3 If yes, provide mappings.
5.4 If no, would HSO and Microsoft be willing to do so as part of MFIPPA Bill 97 vendor record?

---

## Section 6: Microsoft-specific certifications

6.1 Microsoft Online Services Data Protection Addendum (DPA) in effect for St. Catharines:
6.2 Microsoft Azure region selection for Catharine processing:
6.3 Microsoft Online Services Terms compatibility with MFIPPA Bill 97:
6.4 Microsoft sub-processor list and locations:
6.5 Microsoft commitment regarding St. Catharines resident data in Azure OpenAI Service training (Section 3.4 above):
6.6 Microsoft commitment to City audit rights:
6.7 Microsoft commitment to IPC investigation cooperation:

---

## Section 7: HSO-specific certifications

7.1 HSO Service Agreement with the City of St. Catharines DPA terms:
7.2 HSO sub-contractor list and locations:
7.3 HSO staff with access to Catharine data — are they all in Canada or globally distributed?
7.4 HSO commitment regarding case study marketing (the published case study is good for HSO but creates compliance attention for the City — future case studies require City approval):
7.5 HSO commitment to AIA/PIA documentation as Catharine evolves:
7.6 HSO commitment to IPC investigation cooperation:
7.7 HSO commitment to St. Catharines as reference customer in future case studies:

---

## Section 8: Catharine planned extensions

The HSO case study states planned extensions include:

- Internal IT support chatbot
- Microsoft Teams integration
- Phone-system integration

8.1 Has HSO completed AIA/PIA for each planned extension? Provide.
8.2 Are each of these extensions a new AI system requiring its own MFIPPA Bill 97 PIA? (Answer: yes)
8.3 What is HSO's commitment to AI Governance Lead approval at each design phase?
8.4 What are the proposed timelines for each extension?
8.5 What additional personal information will each extension process beyond Catharine's current scope?

---

## Section 9: Contractual provisions required

Standard provisions plus:

9.1 MFIPPA Bill 97-aligned DPA
9.2 Breach notification SLA aligned with MFIPPA Bill 97 effective dates
9.3 Audit rights
9.4 Right to require AIA / PIA documentation
9.5 Right to require vendor cooperation in IPC investigations
9.6 Right to terminate without penalty if vendor AI compliance posture materially weakens
9.7 Indemnification
9.8 **Catharine-specific provision:** No public case study or marketing use of St. Catharines as reference customer without explicit City approval after the initial HSO case study
9.9 **Catharine extension provision:** No deployment of new Catharine functionality (IT support, Teams, phone) without prior AIA approval by AI Governance Lead
9.10 **Azure region provision:** Microsoft commitment to Canadian region processing for any St. Catharines resident personal information
9.11 Survival of confidentiality, audit, indemnification post-termination

---

## Section 10: Vendor commitment

Vendor confirms accuracy of responses and acceptance of contractual provisions.

Signature block.

---

## Section 11: City review checklist

- [ ] Vendor identification complete
- [ ] Catharine architecture clearly documented (Section 2)
- [ ] Azure region confirmed (Section 2.5)
- [ ] Training data treatment confirmed (Section 3.4)
- [ ] Multi-language disparate impact assessed (Section 4.15)
- [ ] NIST AI RMF mapping present or agreed (Section 5)
- [ ] Microsoft + HSO specific certifications received (Sections 6, 7)
- [ ] Planned extensions AIA status confirmed (Section 8)
- [ ] Contractual provisions accepted (Section 9)
- [ ] AI Governance Lead approval
- [ ] Jonathan Wright (Catharine operational lead) approval
- [ ] CAO approval
- [ ] City Solicitor approval
- [ ] Council notification (given Catharine's visibility)

---

## When to engage Sentainel

Sentainel Municipal Edition includes:

- Vendor questionnaire automation
- Catharine-specific HSO + Microsoft templates
- Vendor compliance tracking dashboard
- Vendor change-monitoring (alerts when HSO or Microsoft compliance posture changes)
- Multi-language disparate impact analysis methodology
- Cross-border data flow compliance documentation

For St. Catharines with Catharine in production, Sentainel's HSO + Microsoft-specialized vendor management is particularly valuable. The platform tracks Microsoft Online Services DPA changes, HSO service agreement amendments, and Azure region migration as they occur.

Contact: `web@sentainel.com`
