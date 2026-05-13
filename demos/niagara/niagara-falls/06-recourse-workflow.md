# Recourse Workflow — City of Niagara Falls
## Public AI-Decision Challenge Mechanism per IPC-OHRC p7

**Prepared by Sentainel Compliance · Implementation-ready procedure**
**Date: May 2026**

---

## Why this exists

IPC-OHRC Joint Principle 7 (Accountable):

> "Institutions must establish a mechanism to receive and respond to privacy, transparency, or human rights questions or concerns, as well as freedom of information requests, or to any challenges concerning how the AI system arrived at a decision or was used during a decision-making process."

The City of Niagara Falls currently has no public-facing AI-specific recourse mechanism. General FOI requests under MFIPPA exist but are slow, formal, and unsuited to AI-specific concerns. This workflow fills the gap.

---

## Scope

This workflow handles four categories of resident or visitor concerns:

1. **Suspected false output from an AI system** — e.g., "I think the ALPR misread my plate"
2. **Suspected discriminatory AI use** — Human Rights Code-protected ground concerns
3. **Suspected undisclosed AI in city communications** — "This council report seems AI-generated"
4. **General AI transparency questions** — "Does the City use AI to decide [X]?"

---

## Channel design

### Public-facing entry point

Add to niagarafalls.ca: a single page at `/ai-concerns` with the following intake:

- Name (optional for anonymous reports)
- Contact email or phone (optional, for follow-up)
- Category (dropdown: 1 of 4 above)
- AI system referenced (dropdown of public inventory + "unknown / not listed")
- Description (free text, 2000 char limit)
- Date of concern
- Supporting documents (file upload, max 10 MB)

### Backend routing

Incoming concern is immediately routed to:

| Category | Primary owner | Secondary review |
|---|---|---|
| 1 — False output | AI Governance Lead | System owner (e.g., NRPS for ALPR) |
| 2 — Discrimination | AI Governance Lead | Diversity & Inclusion Officer + OHRC notice if substantiated |
| 3 — Undisclosed AI | City Clerk | Communications + AI Governance Lead |
| 4 — Transparency | Communications | AI Governance Lead |

### Service-level commitments

| Action | Deadline |
|---|---|
| Acknowledge receipt | 2 business days |
| Initial substantive response | 10 business days |
| Full resolution | 30 business days for categories 1, 3, 4; 60 business days for category 2 |
| Escalation to IPC if not resolved | Resident notified of right to file IPC complaint at any point |

---

## Documentation requirements (audit trail)

For every recourse intake, the City must log:

- Intake timestamp + unique ID
- Routing decision + timestamp
- Internal review notes
- Response sent to resident + timestamp
- Resolution disposition (resolved / referred / unsubstantiated)
- Any action taken on the underlying AI system (pause / retrain / decommission)

This log is the IPC-OHRC p6 (Accountable Governance) audit trail and is what an IPC investigator will request during inquiry.

---

## Public reporting

Quarterly the AI Governance Lead publishes an aggregate summary on niagarafalls.ca:

- Total concerns received
- Breakdown by category
- Substantiation rate
- Average resolution time
- Actions taken on AI systems as a result

This demonstrates IPC-OHRC p5 (Transparent) — visible, understandable, traceable.

---

## Interaction with MFIPPA FOI process

This recourse workflow is **not** a replacement for the formal MFIPPA FOI process. Where a concern involves access to specific personal information records, the City must:

1. Inform the resident of their MFIPPA s. 36–37 access rights
2. Offer to convert the concern into an FOI request if the resident wishes
3. Continue to handle the AI-specific concern in parallel

This dual-track approach satisfies both MFIPPA and IPC-OHRC p7.

---

## Interaction with whistleblower channel

This workflow handles **resident or visitor** concerns. Staff concerns about AI non-compliance go through the **whistleblower procedure** documented in `08-whistleblower-procedure.md`. The two channels share the AI Governance Lead as a common reviewer but are operationally distinct to protect whistleblower confidentiality.

---

## Technology requirements

Minimal — this can be implemented as:

- A page on niagarafalls.ca with a web form (Drupal/Wordpress form module sufficient)
- A dedicated email inbox routed via existing email infrastructure
- A shared SharePoint / Microsoft Lists tracking spreadsheet for case management

No specialized software required. Total implementation cost: 1–2 weeks of City Clerk + IT time. Sentainel Municipal Edition includes a production-grade case management workflow for this purpose, but cities can implement the policy without procuring the platform.

---

## NIST AI RMF mapping

- **GOVERN-5.1**: Stakeholder feedback channels (recourse mechanism)
- **GOVERN-5.2**: Mechanisms collect, manage feedback (case management)
- **MEASURE-3.3**: Stakeholder feedback (input to AI improvement)
- **MANAGE-4.3**: Incidents communicated (to IPC if escalated)

---

## Approval pathway

This workflow does **not** require council approval to implement — it falls within standard administrative authority. The CAO can authorize the AI Governance Lead to operationalize this within 30 days of role designation.

Optionally, the City may seek council endorsement to demonstrate political commitment to AI accountability, but the procedure can be active before that endorsement.
