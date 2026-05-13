---
slug: ca-on-phipa-human-oversight-clinical-accountability
regulation_id: ca-on-phipa-ai-scribe
article_number: "CPSO Advice + IPC AI Scribe Guidance + PHIPA s. 10"
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: in_force
effective_date: 2025-08-01
proclamation_pending: false
actors:
  - HEALTHCARE_PROVIDER
  - AI_DEPLOYER
required_action: |
  Physicians retain ultimate clinical accountability for any
  AI-assisted record. Each AI-generated note must be verified
  by the responsible physician before it enters the chart. The
  custodian must maintain a documented use policy and meaningful
  human oversight aligned with the IPC guidance and CPSO Advice.
plain_language_summary: |
  The CPSO Advice on AI in Clinical Practice (August 2025)
  establishes that AI is a tool — not a substitute for clinical
  judgment. Every AI-generated clinical note must be reviewed
  and verified by the responsible physician before chart entry.

  The IPC AI Scribe Guidance separately calls for human
  oversight as a core PHIPA expectation: AI outputs must be
  reviewed, errors flagged, and patterns of failure escalated
  to the AI governance committee.

  This is the TWO-LAYER stack:
  - Per-note verification by the treating physician (CPSO)
  - System-level oversight by the AI governance committee (IPC)

  Failure of either layer creates exposure under BOTH PHIPA
  and the CPSO professional-conduct regime.
trigger_conditions:
  - condition: AI-generated clinical note before chart entry
    formal: |
      CPSO Advice (Aug 2025): Physicians must verify every
      AI-generated note before it enters the chart.
  - condition: System-level oversight of AI scribe operation
    formal: |
      IPC AI Scribe Guidance: HICs must maintain human
      oversight of AI scribe operation at the system level,
      not just per-note.
evidence_required:
  - Documented AI use policy (clinic-wide)
  - Per-note verification record (chart annotation
    confirming physician review)
  - System-level oversight cadence (governance committee
    review of AI outputs sample, error patterns)
  - Physician training records on AI verification
    responsibility
  - Error and override tracking with feedback to vendor
  - Annual review of oversight effectiveness
deadline_type: continuous
deadline_value: "Per-note verification + ongoing system oversight"
penalty_for_violation: |
  TWO-LAYER exposure:
  - PHIPA: AMP under s. 61.1 if oversight failure leads to PHI
    misuse or accuracy failure; civil action under s. 65
  - CPSO: College discipline against individual physician
    including potential license restriction, suspension, or
    revocation
  - Civil/CMPA: malpractice exposure where unverified AI
    output causes patient harm
ai_specific_application: |
  Sentainel implementation:

  **Per-note layer (CPSO):**
  1. Chart-note attachment template (5 fields: date, AI scribe
     vendor, consent type, alternative offered, physician
     verification status)
  2. EMR integration prompting verification before chart entry
     (where vendor supports it)
  3. Verification log per physician feeding into CPSO audit
     readiness

  **System layer (IPC):**
  4. Sample-based quality review by governance committee
     (default: 5% of AI notes per quarter)
  5. Error pattern tracking with vendor escalation workflow
  6. Override decision log (notes the physician rejected or
     materially modified)
  7. Annual AI performance review

  Maps to NIST AI RMF MAP-3.5 (Human oversight), GOVERN-2.1
  (Roles & responsibilities), GOVERN-2.3 (Executive
  accountability), MEASURE-3.3 (Stakeholder feedback),
  MANAGE-4.3 (Incidents communicated).
sentainel_value_prop: |
  "Every note has a physician's verification stamp. Every
  override is logged. CPSO audits, IPC inspections, and CMPA
  claims files all see the same evidence package."
confidence_score: 0.94
confidence_tier: high
ambiguity_notes: |
  - CPSO Advice is professional-conduct guidance, not statute;
    it interprets existing CPSO policies in the AI context
  - "Meaningful" verification depth is not quantified;
    practitioner default is line-by-line read with attention
    to facts and prescriptions
  - System-level oversight cadence (quarterly committee review)
    is practitioner consensus, not IPC-specified
extraction_method: claude-opus-4-7-2026-05-13 + CPSO Advice (Aug 2025) + IPC AI Scribe Guidance (Jan 2026) + Fusion Computing CPSO playbook
extracted_at: 2026-05-13
reviewed_at: 2026-05-13
reviewed_by: web@sentainel.com
---

# PHIPA + CPSO — Human Oversight + Clinical Accountability

## Anchors

> CPSO Advice to the Profession — Using Artificial Intelligence
> in Clinical Practice (Aug 2025): Ontario physicians retain
> ultimate clinical accountability for any AI-assisted record.
> The College expects a documented use policy, patient
> transparency, and verification of every AI-generated note
> before it enters the chart.

> IPC AI Scribe Guidance (Jan 2026): "Increasing regulatory
> scrutiny and expectations for governance, transparency, and
> human oversight."

## Cross-references

- Anchor: PHIPA s. 10 reasonable safeguards
- Anchor: CPSO Consent to Treatment Policy + Medical Records
  Management Policy
- Parallel: Quebec Law 25 s. 12.1 right to human review
- Parallel: EU AI Act art. 14 human oversight
- Parallel: EDSTA s. 6(2)(b) designated human oversight
  (overlapping for hospitals)
- Anchor: NIST AI RMF MAP-3.5 (Human oversight)
