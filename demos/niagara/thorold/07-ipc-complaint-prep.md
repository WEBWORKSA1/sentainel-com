# Town of Thorold — IPC Complaint Preparation Pack
## What to do when the Office of the Information and Privacy Commissioner of Ontario begins an investigation

**Prepared by Sentainel Compliance for the Town of Thorold**
**Date: May 2026 · Confidential when activated**

---

## Purpose

This document is the Town's standing playbook for responding to an IPC investigation about the Town's use of AI. It is intended to be read **before** an investigation begins and activated immediately when one does.

---

## Trigger conditions

Activate this playbook when any of the following occur:

1. The Town receives written notice from the IPC of an investigation, complaint, or inquiry under MFIPPA
2. A media outlet contacts the Town about AI use and refers to IPC scrutiny
3. The AI Governance Lead becomes aware of a complaint involving the Town's AI use that has been or is likely to be escalated to the IPC
4. The Town's Astroturfing Response Procedure (03-aia-template.md § 5) is activated in connection with a council vote and there is reason to believe IPC scrutiny will follow

---

## Immediate actions (Days 0–3)

### Day 0 (within 24 hours of trigger)

1. **Notify CAO and Mayor** in writing of the trigger event
2. **Convene an internal response team** consisting of:
 - AI Governance Lead (response coordinator)
 - Clerk
 - IT Director
 - Mayor or designated council member
 - External counsel (retain at this point if not already on retainer)
3. **Preserve all relevant records.** This is the highest-priority action. The Town must not delete, modify, or alter:
 - AI system logs and audit trails for the affected period
 - Email correspondence about the affected decision or AI system
 - Vendor contracts, data processing agreements, and vendor communications
 - Council meeting records related to the issue
 - Public-facing AI inventory entries and disclosure pages as they existed at the time of the complaint
4. **Issue a litigation hold** to all staff involved in the relevant AI system or decision

### Day 1

5. **Acknowledge the IPC's communication** within 24 hours
6. **Identify the IPC investigator** assigned and obtain their contact information
7. **Review the complaint** to determine:
 - Which AI system or decision is at issue
 - Which IPC-OHRC principles are implicated
 - Which MFIPPA Bill 97 obligations are implicated
 - The complainant's stated remedy

### Day 2–3

8. **Prepare initial evidence packet** including:
 - Relevant AI Inventory entry (from `01-ai-inventory.md`)
 - Applicable PIA (from `02-pia-template.md`)
 - Applicable AIA (from `03-aia-template.md`)
 - IPC-OHRC alignment scorecard entry (from `04-ipc-ohrc-alignment.md`)
 - Vendor due-diligence record (from `09-vendor-questionnaire.md`)
 - Recourse workflow documentation (from `06-recourse-workflow.md`)
 - NIST AI RMF mapping (extract relevant rows from `coverage-matrix.csv`)
9. **Engage counsel** for review of evidence packet before submission
10. **Identify any privilege concerns** for documents that may be subject to solicitor-client or council-deliberation privilege

---

## Investigation phase (Days 4–60)

### Standard IPC investigation pattern

IPC investigations typically proceed through:

1. **Initial information request** — the IPC asks the Town to produce specified documents within a defined timeframe (typically 30 days)
2. **Interviews** — the IPC may interview staff involved in the AI system or decision
3. **Site visit** — in some cases, the IPC may visit the Town's offices
4. **Mediation offer** — the IPC often offers mediation to resolve the matter without a formal order
5. **Formal order or dismissal** — if mediation fails or is declined, the IPC may issue a binding order under MFIPPA Bill 97

### Town response priorities

**Produce requested documents within the IPC's timeframe.** Late or incomplete production is the most common reason for adverse IPC outcomes.

**Cooperate transparently.** The IPC views cooperation favorably. Documented adversarial posture is generally counterproductive.

**Lean on the NIST AI RMF safe-harbor matrix.** When asked "how did the Town know it was complying?", the answer is: the Town aligned its AI use with the NIST AI Risk Management Framework, which is the recognized international standard. The matrix at `cross-references/coverage-matrix.csv` is the documented basis for this alignment.

**Use the public AI inventory as the framing document.** If the Town has a public AI inventory at the time of the complaint, that inventory becomes the centerpiece of the Town's defense. If the inventory does not yet exist when the complaint arrives, expedite its publication; the IPC views recent publication positively as evidence of good-faith remediation.

**Consider mediation.** The IPC's mediation track is significantly less costly than formal proceedings and typically results in agreed remediation that the Town would have done anyway.

---

## Mediation track (typical outcome)

IPC mediation under MFIPPA typically results in the Town agreeing to:

- Publish the AI Inventory entry (if not already published)
- Complete the PIA and AIA for the relevant system
- Adopt or publish a public recourse mechanism
- Implement specific accuracy reporting or monitoring procedures
- In some cases, pay reasonable costs to the complainant

The Town's pre-existing Sentainel artifacts (this entire bundle) are typically sufficient to satisfy 80% of mediation outcomes without additional work.

---

## Formal order phase (Days 60+)

If mediation is unsuccessful or declined, the IPC may issue a formal order under MFIPPA Bill 97 (effective January 1, 2027). Formal orders may direct the Town to:

- Implement specific compliance measures with deadlines
- Pay administrative monetary penalties (the framework for these is being developed under MFIPPA Bill 97 + EDSTA)
- Cease specified AI use until remediation is complete
- Provide annual compliance reports to the IPC
- Publicly disclose the order and the Town's response

Formal orders are enforceable through the Ontario Superior Court of Justice.

**The Town's best defense against a formal order is to have done the work in advance.** The Sentainel platform's value proposition is that the Town's compliance documentation exists before any complaint arrives, which dramatically reduces the probability that mediation fails or that a formal order is necessary.

---

## Communications strategy

### Internal communications

Within the Town:

- Brief council in closed session when a complaint is received
- Brief department heads on the scope of the investigation
- Brief affected staff on litigation hold requirements and interview protocols
- Provide regular status updates to the CAO and Mayor

### External communications

With the IPC:

- Maintain professional cooperative tone
- Acknowledge all communications promptly
- Designate AI Governance Lead as primary point of contact
- Refer technical questions to IT Director with AI Governance Lead present

With media (if approached):

- Designate the Mayor or Mayor's designate as media contact
- Statement template: "The Town is cooperating with an inquiry from the Office of the Information and Privacy Commissioner. The Town takes its obligations under MFIPPA seriously. We will not comment on the specifics of an ongoing inquiry but will share findings publicly when the inquiry is complete."
- Do not speculate about outcomes
- Do not characterize the complainant
- Do not disclose the complainant's identity

With the public:

- If the matter is publicly known, post a brief statement on thorold.ca within 5 business days of the trigger event
- Statement should acknowledge the inquiry, confirm cooperation, and indicate when an update will be provided
- Do not promise specific outcomes

---

## NIST AI RMF mapping

| NIST control | Coverage by this complaint prep |
|---|---|
| GOVERN-1.4 | Risk management documented across lifecycle including complaint response |
| GOVERN-4.3 | Incident sharing across organizational boundaries |
| MANAGE-1.3 | Risk mitigation decisions documented |
| MANAGE-2.3 | Superseded systems response (when complaint involves a deprecated AI) |
| MANAGE-4.1 | Post-deployment monitoring informs complaint response |
| MANAGE-4.3 | Incidents communicated to oversight bodies (IPC) |

---

## Pre-positioned evidence checklist

For an IPC investigation to be successfully defended, the following should already exist when the complaint arrives:

- [ ] Public AI inventory on thorold.ca
- [ ] Designated AI Governance Lead (named publicly)
- [ ] Adopted Generative AI Staff Use Policy
- [ ] Adopted Council Astroturfing Response Procedure
- [ ] Published recourse mechanism
- [ ] Quarterly status reports to council
- [ ] Vendor compliance attestations for all AI-touching procurements
- [ ] NIST AI RMF mapping for each significant AI exposure

Thorold currently has none of these in public-record form. Adopting them within 90 days is the central recommendation of this bundle.

---

## Reviewer + sign-off

**Prepared by:** Sentainel Compliance Platform, May 2026
**Intended reviewer:** Town of Thorold CAO + Clerk + AI Governance Lead + external counsel
