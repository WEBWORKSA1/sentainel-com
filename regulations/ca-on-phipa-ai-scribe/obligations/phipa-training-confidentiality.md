---
slug: ca-on-phipa-training-confidentiality
regulation_id: ca-on-phipa-ai-scribe
article_number: "PHIPA s. 12 + s. 17 + IPC AI Scribe Guidance"
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: in_force
effective_date: 2026-01-28
proclamation_pending: false
actors:
  - HEALTHCARE_PROVIDER
  - AI_DEPLOYER
  - GOVERNMENT_AGENCY
required_action: |
  Conduct comprehensive training and awareness programs before
  agents (physicians, staff, contractors) are given access to
  PHI through an AI system. Require agents to sign
  confidentiality agreements acknowledging privacy obligations
  and expectations specific to AI systems. Establish end-user
  agreements setting out roles and responsibilities of all
  parties who use AI systems.
plain_language_summary: |
  The IPC AI Scribe Guidance treats agent training and
  confidentiality agreements as foundational to PHIPA
  compliance when AI is in play. Generic privacy training is
  insufficient — training must address AI-specific risks
  (shadow AI, vendor secondary use, output errors, consent
  capture, breach indicators).

  Three documentation layers:
  1. Training records per agent showing completion of
     AI-specific training before PHI access
  2. Confidentiality agreements explicitly covering AI use
  3. End-user agreements clarifying roles when multiple
     parties (HIC, vendor, subcontractor) touch the data
trigger_conditions:
  - condition: Agent granted access to PHI through AI system
    formal: |
      IPC AI Scribe Guidance: "Custodians must conduct
      comprehensive training and awareness programs before
      agents are given access to PHI through an AI system.
      Confidentiality agreements should require agents to
      acknowledge privacy obligations and expectations
      related to AI systems."
  - condition: New agent onboarding
    formal: |
      PHIPA s. 12 ensures agents handle PHI per custodian
      direction. Training is the operationalization of this
      duty.
evidence_required:
  - Training curriculum (AI-specific content)
  - Per-agent training completion records with date stamps
  - Signed confidentiality agreements (AI-acknowledging
    version)
  - End-user agreement signed at deployment
  - Annual refresh training records
  - Onboarding gate enforcing training before PHI access
deadline_type: relative_event
deadline_value: "Before PHI access + annual refresh"
penalty_for_violation: |
  - AMP under s. 61.1 (untrained agent causing breach is an
    AMP-aggravating factor)
  - IPC order requiring training program implementation
  - Civil action exposure when untrained agent causes patient
    harm
  - College discipline against responsible physician under
    CPSO Advice (failure to supervise)
ai_specific_application: |
  Sentainel implementation:

  1. AI-specific training curriculum (8 modules, ~3 hours):
     - PHIPA refresher with AI context
     - AI scribe operation and consent
     - Shadow AI risks (Otter.ai lesson)
     - Vendor data flows
     - Error detection and override
     - Breach indicators and reporting
     - Patient inquiry handling
     - Documentation requirements
  2. LMS integration or standalone delivery (clinic-scale)
  3. AI-acknowledging confidentiality agreement template
  4. End-user agreement template
  5. Onboarding gate enforcing training completion before
     vendor account activation
  6. Annual refresh workflow with calendar reminders

  Maps to NIST AI RMF GOVERN-2.2 (Workforce training),
  GOVERN-3.1 (Diversity in risk management), MAP-1.2
  (Interdisciplinary actors).
sentainel_value_prop: |
  "Your staff are trained before they touch AI. Your
  confidentiality agreements explicitly cover AI. The IPC
  inspection finds the documentation in the same place every
  time."
confidence_score: 0.92
confidence_tier: high
ambiguity_notes: |
  - IPC has not specified minimum training hours or curriculum
    structure; practitioner default is ~3 hours initial + 1
    hour annual refresh
  - "Comprehensive" is undefined; practitioner consensus
    addresses 8 core topics above
  - End-user agreement format is undefined; some HICs use a
    consolidated agent agreement covering all PHIPA + CPSO +
    AI duties
extraction_method: claude-opus-4-7-2026-05-13 + IPC AI Scribe Guidance + PHIPA s. 12 + s. 17
extracted_at: 2026-05-13
reviewed_at: 2026-05-13
reviewed_by: web@sentainel.com
---

# PHIPA + AI Scribe — Agent Training + Confidentiality Agreements

## Anchors

> PHIPA s. 12(1): A health information custodian shall ensure
> that the agents of the custodian are properly informed of
> their duties under this Act.

> PHIPA s. 17(1): A health information custodian is
> responsible for personal health information held by an
> agent of the custodian.

> IPC AI Scribe Guidance (Jan 2026): "Custodians must conduct
> comprehensive training and awareness programs before agents
> are given access to PHI through an AI system. Confidentiality
> agreements should require agents to acknowledge privacy
> obligations and expectations related to AI systems."

## Cross-references

- Anchor: PHIPA s. 12, s. 17
- Parallel: Quebec Law 25 s. 3.2 governance policies including
  training
- Parallel: EDSTA s. 5(3) accountability framework (training
  is part of framework implementation)
- Anchor: NIST AI RMF GOVERN-2.2 (Workforce training)
