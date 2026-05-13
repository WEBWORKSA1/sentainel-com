# Recourse Workflow — City of St. Catharines
## Catharine-Specific AI-Decision Challenge Mechanism

**Prepared by Sentainel Compliance · May 2026**

---

## Why this exists

IPC-OHRC Joint Principle 7 (Accountable) requires institutions to establish recourse mechanisms for AI-related concerns. The City of St. Catharines currently has a public-facing AI system — Catharine — in active production processing thousands of resident interactions, with no AI-specific recourse mechanism for residents who receive incorrect, misleading, or inappropriate Catharine outputs.

This is the highest-priority p7 gap in the four-city Niagara bundle.

---

## Scope

This workflow handles five categories of concerns, structured around Catharine as the flagship system:

1. **Suspected false output from Catharine** — incorrect information, misleading routing, factually wrong response
2. **Suspected discriminatory Catharine response** — different response quality based on language, name, location, or other Code-protected ground signal
3. **Suspected undisclosed AI in other City communications** — not just Catharine, any City communication that may have been AI-generated
4. **General AI transparency questions** — "How does Catharine work?" "Where is my data processed?"
5. **Concerns about other AI systems** — NRPS ALPR, future Catharine extensions, etc.

---

## Channel design

### Public-facing entry point

Add to stcatharines.ca: a single page at `/ai-concerns` linked prominently from any page hosting Catharine (every public-facing page on the City website).

**Critical placement:** A direct link to `/ai-concerns` should appear in Catharine's response template itself: "If you have a concern about this response, you can submit it here." This is IPC-OHRC p5 + p7 integrated.

Intake form includes:

- Name (optional)
- Contact email or phone (optional)
- Category (1–5 above)
- AI system referenced (default: Catharine; dropdown for other systems)
- Catharine session reference (if applicable) — the City must implement session IDs to make this useful
- Description (free text, 2000 char limit)
- Date of concern
- Language of original interaction (multi-language support)
- Supporting documents (file upload, max 10 MB)

### Backend routing

| Category | Primary owner | Secondary review |
|---|---|---|
| 1 — False Catharine output | AI Governance Lead (or Jonathan Wright) | HSO vendor escalation if pattern emerges |
| 2 — Discriminatory response | AI Governance Lead | DEI advisor + OHRC notice if substantiated |
| 3 — Undisclosed AI in communications | City Clerk | Communications + AI Governance Lead |
| 4 — Transparency | Communications | AI Governance Lead |
| 5 — Other AI systems | AI Governance Lead | System owner |

---

## Catharine-specific service-level commitments

Given Catharine's high volume, faster SLAs may be needed:

| Action | Standard SLA | Catharine-specific |
|---|---|---|
| Acknowledge receipt | 2 business days | Same |
| Initial substantive response | 10 business days | 5 business days for Category 1 (false output) |
| Full resolution | 30 business days | 30 business days for most; 15 business days for emergency Catharine output errors |
| Escalation to IPC | Notified of right at any point | Same |

The accelerated Category 1 SLA reflects that incorrect Catharine outputs can affect resident service delivery in real-time (emergency information during winter storms, snow clearing priorities, etc.).

---

## Documentation requirements

For every recourse intake, the AI Governance Lead logs:

- Intake timestamp + unique ID
- Catharine session reference if applicable
- Routing decision + timestamp
- HSO vendor notification + timestamp if Category 1 pattern detected
- Internal review notes
- Response sent + timestamp
- Resolution disposition
- Catharine retraining or output adjustment if applicable
- Pattern analysis (5+ similar Category 1 complaints in 30 days triggers HSO + Microsoft vendor escalation)

---

## Vendor escalation pathway

Unique to St. Catharines among the four Niagara cities, Catharine has named external vendors (HSO + Microsoft). The recourse workflow includes a documented escalation pathway:

**Vendor escalation triggers:**
- 5+ Category 1 (false output) complaints in 30 days on similar topics → HSO investigation request
- Single Category 2 (discrimination) complaint substantiated → immediate HSO + Microsoft notification + potential Catharine pause
- Any complaint suggesting data residency issue → immediate Microsoft Azure region confirmation request
- Any complaint suggesting Catharine training data exposure → immediate HSO + Microsoft notification under MFIPPA breach notification framework

**Vendor obligations** (to be documented in HSO + Microsoft DPA):
- 5 business day response SLA on AI Governance Lead escalation requests
- Immediate cooperation with IPC investigations involving Catharine
- Annual attestation of continued IPC-OHRC alignment

---

## Public reporting

Quarterly the AI Governance Lead publishes aggregate summary on stcatharines.ca:

- Total Catharine interactions during quarter (volume context)
- Total concerns received
- Breakdown by category
- Catharine-specific issue rate (concerns / total interactions)
- Substantiation rate
- Average resolution time
- Actions taken (Catharine adjustments, vendor escalations, etc.)
- Vendor responsiveness metrics

This reporting is unique among the four cities because Catharine generates enough volume to support meaningful quantitative public reporting.

---

## Multi-language support

St. Catharines' resident population includes substantial French, Italian, Punjabi, Arabic, Spanish, and Mandarin speakers. The recourse intake should support at minimum:

- English (primary)
- French (Ontario bilingual requirements + significant local population)
- Spanish (significant local + visitor population)
- Arabic (significant local population)
- Punjabi (significant local population)

Multi-language support is itself an IPC-OHRC p4 commitment.

---

## Interaction with MFIPPA FOI process

Where a concern involves access to specific records of resident's prior Catharine interactions, the City must:

1. Inform the resident of their MFIPPA s. 36–37 access rights
2. Offer to convert the concern into an FOI request
3. Catharine session logs must be retrievable for FOI purposes (this requires technical infrastructure the City should confirm)

For Catharine specifically: residents may request their entire interaction history with Catharine. The City must be able to produce this. Working with HSO + Microsoft to ensure session log retrievability is a Phase 1 priority.

---

## Interaction with whistleblower channel

Staff concerns about Catharine non-compliance go through `08-whistleblower-procedure.md`. Particular attention to:

- Staff who observe Catharine providing inappropriate responses
- Staff who observe HSO or Microsoft data handling inconsistent with the DPA
- Staff who observe Catharine training data including non-consented information

---

## NIST AI RMF mapping

- **GOVERN-5.1, GOVERN-5.2**: Stakeholder feedback channels
- **MEASURE-3.3**: Stakeholder feedback to AI improvement
- **MEASURE-4.1, MEASURE-4.2**: Continuous improvement based on feedback
- **MANAGE-4.1**: Post-deployment monitoring
- **MANAGE-4.3**: Incidents communicated to IPC if escalated

---

## Approval pathway

This workflow does not require Council approval to implement — it falls within standard administrative authority. However, given Catharine's public visibility, Council endorsement at adoption demonstrates political commitment.

Recommended sequence:

1. CAO authorizes AI Governance Lead to operationalize
2. Catharine-specific session ID infrastructure implemented (HSO coordination)
3. Multi-language intake form deployed on stcatharines.ca
4. Vendor escalation pathway documented in HSO + Microsoft contract amendments
5. Council endorsement at next regular meeting
6. Public launch with press release

Total implementation timeline: 60–90 days.

---

## Technology requirements

More substantial than peer cities due to Catharine integration:

- Recourse intake form: standard (Microsoft Forms or equivalent sufficient)
- Session ID integration with Catharine: requires HSO coordination (estimated 2–4 weeks)
- Multi-language intake support: standard
- Case management with vendor escalation workflow: Sentainel Municipal Edition provides this; alternative is Microsoft Lists + workflow automation

For St. Catharines specifically, Sentainel's vendor-aware case management is the most valuable component because Catharine has named external vendors with specific compliance obligations.
