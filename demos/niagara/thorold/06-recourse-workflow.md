# Recourse Workflow — Town of Thorold
## Public AI-Decision Challenge Mechanism per IPC-OHRC p7

**Prepared by Sentainel Compliance · Implementation-ready procedure**
**Date: May 2026**

---

## Why this exists

IPC-OHRC Joint Principle 7 (Accountable):

> "Institutions must establish a mechanism to receive and respond to privacy, transparency, or human rights questions or concerns, as well as freedom of information requests, or to any challenges concerning how the AI system arrived at a decision or was used during a decision-making process."

The Town of Thorold currently has no public-facing AI-specific recourse mechanism. General FOI requests under MFIPPA exist but are slow, formal, and unsuited to AI-specific concerns. This workflow fills the gap.

---

## Scope

This workflow handles four categories of resident or visitor concerns:

1. **Suspected false output from an AI system** — e.g., "I think the ALPR misread my plate"
2. **Suspected discriminatory AI use** — Human Rights Code-protected ground concerns
3. **Suspected undisclosed AI in Town communications** — "This council report seems AI-generated"
4. **General AI transparency questions** — "Does the Town use AI to decide [X]?"

**Thorold-specific category 5:**

5. **Concerns about AI-driven communication campaigns to Council** — the precedent-incident-derived category, residents flagging suspected synthetic campaigns

Category 5 is unique to Thorold among Ontario municipalities, derived from the 2024–2025 incident pattern.

---

## Channel design

### Public-facing entry point

Add to thorold.com: a single page at `/ai-concerns` with intake form:

- Name (optional for anonymous reports)
- Contact email or phone (optional)
- Category (dropdown: 1–5 above)
- AI system referenced (dropdown of public inventory + "unknown / not listed")
- Description (free text, 2000 char limit)
- Date of concern
- Supporting documents (file upload, max 10 MB)

For Thorold's administrative scale, a simple Microsoft Forms or Google Forms instance is sufficient until volume warrants more dedicated case management.

### Backend routing

Incoming concern is immediately routed to:

| Category | Primary owner | Secondary review |
|---|---|---|
| 1 — False output | AI Governance Lead | System owner (e.g., NRPS for ALPR) |
| 2 — Discrimination | AI Governance Lead | Diversity advisor + OHRC notice if substantiated |
| 3 — Undisclosed AI | Town Clerk | Communications + AI Governance Lead |
| 4 — Transparency | Communications | AI Governance Lead |
| 5 — Astroturfing concern | AI Governance Lead | Mayor + CAO + Clerk |

### Service-level commitments

| Action | Deadline |
|---|---|
| Acknowledge receipt | 2 business days |
| Initial substantive response | 10 business days |
| Full resolution | 30 business days for categories 1, 3, 4; 60 business days for categories 2 and 5 |
| Escalation to IPC if not resolved | Resident notified of right to file IPC complaint at any point |

---

## Documentation requirements (audit trail)

For every recourse intake, the Town logs:

- Intake timestamp + unique ID
- Routing decision + timestamp
- Internal review notes
- Response sent to resident + timestamp
- Resolution disposition (resolved / referred / unsubstantiated)
- Any action taken on the underlying AI system or procedure (pause / retrain / decommission / procedural update)

This log is the IPC-OHRC p6 audit trail.

---

## Public reporting

Quarterly the AI Governance Lead publishes an aggregate summary on thorold.com:

- Total concerns received
- Breakdown by category (with special prominence for category 5)
- Substantiation rate
- Average resolution time
- Actions taken on AI systems or procedures as a result

For Thorold specifically, the quarterly category-5 reporting becomes a regional indicator of AI-driven communication campaign activity — a public service of regional interest.

---

## Interaction with MFIPPA FOI process

This workflow does **not** replace the formal MFIPPA FOI process. Where a concern involves access to specific personal information records, the Town must:

1. Inform the resident of their MFIPPA s. 36–37 access rights
2. Offer to convert the concern into an FOI request if the resident wishes
3. Continue to handle the AI-specific concern in parallel

---

## Interaction with whistleblower channel

This workflow handles **resident or visitor** concerns. Staff concerns about AI non-compliance go through the **whistleblower procedure** in `08-whistleblower-procedure.md`.

---

## Technology requirements

Minimal:

- A page on thorold.com with a web form
- A dedicated email inbox
- A shared Microsoft Lists or Google Sheets tracking spreadsheet

Total implementation: 1 week of Clerk + IT time. Sentainel Municipal Edition includes production-grade case management for this purpose.

---

## NIST AI RMF mapping

- **GOVERN-5.1**: Stakeholder feedback channels (recourse mechanism)
- **GOVERN-5.2**: Mechanisms collect, manage feedback (case management)
- **MEASURE-3.3**: Stakeholder feedback (input to AI improvement)
- **MANAGE-4.3**: Incidents communicated (to IPC if escalated)

---

## Approval pathway

This workflow does not require council approval to implement — it falls within standard administrative authority. The CAO can authorize the AI Governance Lead to operationalize this within 30 days of role designation. Council endorsement is recommended but not gating.

For Thorold specifically, given the public visibility of the 2024–2025 incident, Council endorsement is recommended to demonstrate political commitment to the procedural protections.
