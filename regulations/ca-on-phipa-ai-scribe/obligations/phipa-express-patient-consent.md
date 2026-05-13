---
slug: ca-on-phipa-express-patient-consent
regulation_id: ca-on-phipa-ai-scribe
article_number: "PHIPA s. 18 + IPC AI Scribe Guidance"
parent_article: null
obligation_type: DISCLOSE
status: in_force
effective_date: 2026-01-28
proclamation_pending: false
actors:
  - HEALTHCARE_PROVIDER
  - AI_DEPLOYER
required_action: |
  Obtain informed express consent from each patient before
  using an AI scribe (or comparable AI tool that records or
  processes the clinical encounter). The consent must include
  disclosure that the encounter will be recorded using AI, what
  information is collected, the involvement and identity of
  vendors, the key risks and benefits, and the patient's right
  to opt out without penalty.
plain_language_summary: |
  The IPC's position is unequivocal: HICs deploying AI scribes
  cannot rely on PHIPA's deemed-consent framework for circle-
  of-care information sharing. Express, informed, patient
  consent is required.

  The disclosure must cover:
  - That an AI scribe will record the encounter
  - What information is collected (audio, transcript, derived
    notes)
  - Who the vendor is and what they do with the data
  - Key risks (re-identification, vendor incidents, secondary-
    use limits) and benefits (administrative burden reduction)
  - The patient's real right to decline without penalty
    (alternative non-AI documentation)

  Oral consent is permitted but must be documented in the
  chart. Written consent is the safer default for high-risk
  contexts.
trigger_conditions:
  - condition: Use of AI scribe or comparable AI tool processing PHI
    formal: |
      IPC AI Scribe Guidance: "Consent of individuals would
      generally be required. Patients must understand that
      the encounter will be recorded using AI, what
      information is collected, the involvement of vendors,
      and the key risks and benefits of using AI scribes."
  - condition: Patient encounter
    formal: |
      Express consent must be obtained per patient per
      encounter (or under a documented standing-consent
      arrangement with refresh).
evidence_required:
  - Patient consent script (clinic-specific)
  - Per-encounter consent record (chart note + AI scribe log
    entry)
  - Opt-out tracking and alternative documentation workflow
  - Standing consent arrangements (if applicable) with
    refresh schedule
  - Annual audit sampling actual consent capture for
    compliance
exceptions:
  - exception: Emergency situations
    formal: |
      Standard medical emergency exception applies under
      PHIPA; AI scribe use should be paused in emergency
      and resumed with consent post-event where possible.
deadline_type: event_triggered
deadline_value: "Per patient encounter"
penalty_for_violation: |
  - AMP up to $50K / $500K under s. 61.1
  - Civil action under s. 65 ($10K mental anguish per
    affected patient)
  - College discipline against physician under CPSO Advice
  - Class action exposure given multi-patient impact
ai_specific_application: |
  Sentainel implementation:

  1. PHIPA-compliant consent script library (English, French,
     additional languages by request)
  2. Chart-note attachment template (the CPSO 5-field default:
     date, AI scribe vendor, consent type, alternative offered,
     physician verification)
  3. Standing consent arrangement workflow for established
     patients with annual refresh prompt
  4. Opt-out tracking dashboard showing rates by clinician,
     vendor, encounter type
  5. Integration with EMR consent capture (where vendor
     supports it)
  6. Audit-ready evidence package per IPC inspection request

  Maps to NIST AI RMF MEASURE-2.8 (Transparency), MEASURE-2.9
  (Explainability), MEASURE-3.3 (Stakeholder feedback).
sentainel_value_prop: |
  "Every patient encounter has a documented, IPC-compliant
  consent record. Opt-outs route automatically to non-AI
  documentation. Audit-ready in real time."
confidence_score: 0.95
confidence_tier: high
ambiguity_notes: |
  - IPC says express consent "would generally be required" —
    the "generally" leaves room for edge cases but practitioner
    consensus is to default to express consent universally
  - Standing-consent arrangements are permitted but not
    detailed; default to annual refresh
  - Treatment of incapable patients follows standard PHIPA
    substitute-decision-maker framework
extraction_method: claude-opus-4-7-2026-05-13 + IPC AI Scribe Guidance + BLG, Norton Rose commentary
extracted_at: 2026-05-13
reviewed_at: 2026-05-13
reviewed_by: web@sentainel.com
---

# PHIPA + AI Scribe — Express Informed Patient Consent

## Guidance anchor

> IPC AI Scribe Guidance (Jan 2026): "Patients must understand
> that the encounter will be recorded using AI, what
> information is collected, the involvement of vendors, and
> the key risks and benefits of using AI scribes."

## Cross-references

- Anchor: PHIPA s. 18 consent framework
- Parallel: CPSO Consent to Treatment Policy
- Parallel: Quebec Law 25 s. 14 consent + s. 12.1 automated
  decision-making notice
- Parallel: EDSTA s. 6(2)(a) individual-facing disclosure (when
  hospital is also covered by EDSTA)
- Anchor: NIST AI RMF MEASURE-2.8, MEASURE-2.9
