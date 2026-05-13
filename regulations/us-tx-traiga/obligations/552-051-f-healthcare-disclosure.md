---
slug: us-tx-traiga-552-051-f-healthcare
regulation_id: us-tx-traiga
article_number: "Tex. Bus. & Comm. Code § 552.051(f)"
parent_article: null
obligation_type: DISCLOSE
status: in_force
effective_date: 2026-01-01
actors:
  - HEALTHCARE_PROVIDER
required_action: |
  If an artificial intelligence system is used in relation to a
  health care service or treatment, the provider of the service or
  treatment shall provide the disclosure under § 552.051(b) to the
  recipient of the service or treatment or the recipient's personal
  representative not later than the date the service or treatment
  is first provided.

  In the case of emergency, the provider shall provide the required
  disclosure as soon as reasonably possible.

  "Health care services" means services related to human health or
  to the diagnosis, prevention, or treatment of a human disease or
  impairment provided by an individual licensed, registered, or
  certified under applicable state or federal law to provide those
  services (§ 552.051(a)).
plain_language_summary: |
  Texas healthcare providers using AI in care delivery — whether
  they are private practices, hospitals, or telehealth platforms —
  must disclose AI use to the patient (or their personal
  representative) by the date care is first provided. In emergencies,
  disclosure can be delayed but must happen as soon as reasonably
  possible.

  This applies to:
  - AI diagnostic systems (radiology AI, dermatology AI, pathology
    AI)
  - AI clinical decision support
  - AI scribes/documentation tools used during clinical encounters
  - AI triage systems
  - AI treatment recommendation engines
  - AI used in mental health services (where licensed under state
    or federal law)

  CRITICAL: Unlike § 552.051(b)'s governmental-only scope, the
  healthcare subsection (f) applies to ANY healthcare provider using
  AI in care delivery — private and public. This is the
  broadest-reach disclosure obligation in TRAIGA for private-sector
  entities.

  Healthcare AI vendors selling to Texas providers should know
  their customers face this disclosure burden and may need vendor
  support (model cards, plain-language descriptions of AI function)
  to satisfy it.
trigger_conditions:
  - condition: Healthcare provider scope
    formal: |
      "Health care services" require services from an individual
      licensed, registered, or certified under applicable state or
      federal law to provide those services. Captures licensed
      physicians, nurses, dentists, pharmacists, mental health
      professionals, allied health, etc. Probably also captures
      hospitals and clinics as employers of licensed providers.
  - condition: AI used in relation to health care service or treatment
    formal: |
      Broadly worded "in relation to" suggests any AI material to
      the service or treatment decision — diagnostic AI, treatment
      recommendation AI, AI clinical decision support, AI scribes
      capturing PHI during encounters, AI risk stratification, etc.
      Pure administrative AI (scheduling, billing) likely not
      captured.
  - condition: First provision of service or treatment
    formal: |
      Disclosure deadline tied to when service is first provided to
      that patient. For continuing care relationships, the
      disclosure obligation arises at the initial point.
evidence_required:
  - Healthcare AI inventory (every AI system used in patient care)
  - Patient-facing disclosure documents (intake forms, consent
    forms, point-of-care notices)
  - Personal representative designations and notification protocols
    where the patient cannot receive disclosure directly
  - Emergency disclosure protocol (post-emergency notification
    procedure)
  - Vendor-provided plain-language descriptions of AI function
  - Training records for clinical staff on disclosure delivery
  - EMR integration showing disclosure prompts at first encounter
  - PHIPA-equivalent / HIPAA-aligned consent documentation
    integration
deadline:
  type: relative
  value: |
    Not later than the date the service or treatment is first
    provided. Emergency cases: as soon as reasonably possible after
    the emergency.
exceptions:
  - description: |
      Emergency cases delay (but do not eliminate) the disclosure
      duty. Provider must disclose as soon as reasonably possible
      after emergency stabilization.
  - description: |
      The Health Insurance Portability and Accountability Act
      (HIPAA) carveout in § 552.054 (biometric) does NOT apply to
      this disclosure obligation. Even where the AI handles
      HIPAA-protected information, the disclosure duty under
      § 552.051(f) stands.
penalty_for_violation: |
  - Curable violation (or breach of cure statement): $10,000 -
    $12,000 per violation (§ 552.105(a)(1))
  - Uncurable violation: $80,000 - $200,000 per violation
    (§ 552.105(a)(2))
  - Continuing violation: $2,000 - $40,000 per day (§ 552.105(a)(3))
  - Per-violation basis: high-volume providers (large health
    systems with thousands of patients) face significant exposure
  - State licensing agency sanctions under § 552.106 add up to
    $100,000 plus license action (Texas Medical Board, Texas Board
    of Nursing, etc.) — particularly relevant for healthcare
  - NO private right of action (§ 552.101(b))
  - 60-day cure window under § 552.104

  Rebuttable presumption of reasonable care under § 552.105(c).
  NIST AI RMF substantial compliance affirmative defense under
  § 552.105(e)(2)(D).
ai_specific_application: |
  Sentainel's healthcare AI module for TRAIGA:

  1. CLINICAL AI INVENTORY: Specialized scanner for healthcare AI
     in EMR/EHR systems (Epic, Cerner, Athenahealth integrations),
     PACS systems, clinical decision support tools, AI scribes
     (Abridge, Suki, DAX Copilot, etc.).
  2. DISCLOSURE TEMPLATE LIBRARY: Pre-built disclosure language
     for common clinical AI applications, integrated with EMR
     intake workflows.
  3. PERSONAL REPRESENTATIVE TRACKER: For patients unable to
     receive disclosure directly (minors, incapacitated adults),
     tracks the legal representative requiring disclosure.
  4. EMERGENCY EXCEPTION WORKFLOW: Documents emergency rationale
     and post-emergency disclosure delivery; defensible against
     AG inquiry.
  5. NIST AI RMF + HEALTHCARE OVERLAY: Cross-references obligation
     to NIST AI RMF healthcare-specific guidance and FDA AI/ML
     pre-market guidance.
  6. PHIPA / HIPAA INTEGRATION: Where the Sentainel customer
     operates cross-border (Ontario + Texas), the disclosure
     workflow harmonizes PHIPA (Ontario) and TRAIGA (Texas)
     requirements.
cross_references:
  - us-tx-traiga-552-051-gov-disclosure
  - us-tx-traiga-552-104-cure-period
  - us-tx-traiga-552-105-penalties
  - us-tx-traiga-552-105-nist-safe-harbor
  - ca-on-phipa-ai-disclosure
  - ca-qc-law-25-s12-1-automated-decision-making
  - us-federal-fda-ai-ml-action-plan
ai_system_types_affected:
  - radiology-ai-diagnostic
  - pathology-ai-diagnostic
  - dermatology-ai-diagnostic
  - clinical-decision-support-ai
  - ai-scribe-clinical-documentation
  - ai-triage-emergency-department
  - ai-treatment-recommendation
  - mental-health-ai-therapist
  - ai-medication-management
  - ai-risk-stratification-population-health
confidence_score: 0.93
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + direct statute review
ambiguity_notes: |
  - "In relation to a health care service or treatment" is broadly
    worded. Whether AI used only for population health analytics
    or quality improvement (no individual patient decision) triggers
    disclosure is unsettled. Conservative reading: if the AI's
    output flows into individual patient care decisions in any way,
    disclosure required.
  - Whether AI scribes (passive documentation tools that don't
    influence clinical decisions) trigger this disclosure is
    interpretive. Best practice: disclose to patient that an AI
    scribe is documenting the encounter, regardless.
  - The personal representative concept is borrowed from existing
    healthcare law (HIPAA personal representative rules typically
    apply by analogy) but not statutorily defined for TRAIGA
    purposes specifically.
  - Cross-border telehealth (a provider in another state seeing a
    Texas resident) almost certainly falls within TRAIGA scope
    via § 551.002(2) ("produces a product or service used by
    residents of this state").
sentainel_value_prop: |
  This is one of TRAIGA's most operationally significant private-
  sector obligations. Healthcare is also one of the highest-
  enforcement-priority sectors for any state AG. Texas Medical
  Board has demonstrated willingness to coordinate with the AG
  on healthcare compliance issues.

  Sentainel value:
  - Healthcare providers face per-patient disclosure obligation
    that scales rapidly (a 500-bed hospital seeing 30,000+ patients
    annually = 30,000+ potential disclosure events)
  - Penalty exposure: $80K-$200K per uncurable violation × volume
    = enterprise-level exposure
  - Sentainel's EMR integration + disclosure template library
    converts a manual workflow burden into automated compliance
  - Cross-jurisdiction reuse with Ontario PHIPA (when extracted)
    multiplies the value for hospitals operating across the
    Canada-US corridor

  ACV impact: Healthcare segment justifies premium pricing
  ($4,999/mo Continuous tier minimum, custom enterprise tiers
  for large health systems).
extracted_at: 2026-05-13T09:10:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
