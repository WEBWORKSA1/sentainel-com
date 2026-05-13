---
slug: ca-qc-law-25-s27-data-portability
regulation_id: ca-qc-law-25
article_number: "P-39.1 s. 27 (amended by Law 25)"
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: in_force
effective_date: 2024-09-22
actors:
  - PERSON_LEGAL_ENTITY
  - PLATFORM_OPERATOR
required_action: |
  Unless doing so raises serious practical difficulties, computerized
  personal information collected from the applicant, and not created
  or inferred using personal information concerning him, must, at
  the request of the person concerned, be communicated to that
  person in a structured, commonly used technological format. The
  information must also be communicated, at the request of the
  person concerned, to any person or body authorized by law to
  collect such information.
plain_language_summary: |
  Section 27 grants Quebec residents the right to receive their
  personal data in a structured, machine-readable format and to
  have it transmitted to another organization. This is Quebec's
  GDPR-style data portability right.

  CRITICAL FOR AI: Data portability rights extend to data USED BY
  AI systems but NOT to data INFERRED OR CREATED BY AI systems.
  This distinction matters operationally:

  PORTABLE (must be exported on request):
  - Personal information the individual provided (form inputs,
    uploaded documents, communications)
  - Personal information collected from their behavior with
    explicit consent
  - Personal information from authorized third parties

  NOT PORTABLE (creator-controlled):
  - AI-generated profiles, scores, classifications
  - AI inferences (e.g., "predicted churn risk: 73%")
  - AI recommendations
  - Aggregated/derived data the individual did not provide

  This boundary is operationally complex because AI systems often
  mix portable and non-portable data.
trigger_conditions:
  - condition: Request by person concerned
    formal: |
      Quebec resident requests portability of their data.
  - condition: Computerized personal information
    formal: |
      Information stored electronically (essentially all modern
      data systems).
  - condition: Collected from the applicant
    formal: |
      Information originally provided by or collected from the
      individual themselves; does NOT include AI inferences or
      created data.
  - condition: Not "serious practical difficulty"
    formal: |
      Exception narrowly construed; technical complexity alone is
      not "serious practical difficulty" if the data is
      meaningfully recoverable.
evidence_required:
  - Data portability request handling procedure
  - Request intake log with timestamps
  - Data classification (portable vs. inferred/created)
  - Export format specifications (JSON, CSV, XML, etc.)
  - Recipient transmission logs
  - Response time tracking (30-day standard, s. 32)
  - Decision documentation if portability denied
  - For AI specifically:
    - Data lineage documentation distinguishing source data from
      AI-derived data
    - Export tooling for AI training datasets where individual
      contributed data
    - Coordination with AI vendor for vendor-held portable data
deadline:
  type: relative
  value: |
    Response within 30 days of request (general Law 25 rights-
    request timeline, s. 32). Extension possible for complex
    requests with notice to requestor.
exceptions:
  - description: |
      "Serious practical difficulties" — narrowly construed; mere
      inconvenience or technical complexity insufficient. Must
      demonstrate disproportionate burden.
  - description: |
      Information CREATED OR INFERRED by the enterprise (including
      AI outputs, derived analytics, scores) is NOT subject to
      portability.
  - description: |
      Information that would reveal trade secrets or affect a third
      party's privacy may be redacted.
penalty_for_violation: |
  - Administrative Monetary Penalty: up to CAD $10M or 2% of
    worldwide turnover (P-39.1 s. 90.1)
  - Penal sanction: up to CAD $25M or 4% of worldwide turnover
    (P-39.1 s. 91)
  - Compliance orders requiring portability fulfillment
  - Private right of action: CAD $1,000 minimum per individual
    (P-39.1 s. 93.1)
  - Class action exposure for systematic portability failures
ai_specific_application: |
  Sentainel's portability module:

  1. DATA LINEAGE TRACKING: Maps which data is portable (source)
     vs. non-portable (inferred/created) for each AI system
  2. EXPORT FORMAT GENERATION: Auto-generates JSON/CSV/XML exports
     of portable data per individual on request
  3. AI INFERENCE EXCLUSION: Auto-excludes AI-derived data from
     portability exports
  4. THIRD-PARTY TRANSMISSION: Handles transmission to receiving
     organization on individual's authorization
  5. SLA MANAGEMENT: 30-day response clock with auto-escalation
cross_references:
  - ca-qc-law-25-s14-consent
  - ca-qc-law-25-s12-1-automated-decision-making
  - eu-gdpr-art-20-data-portability
  - ca-federal-pipeda-access-rights
confidence_score: 0.91
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + manual review
ambiguity_notes: |
  - The boundary between "collected from" and "inferred" can be
    operationally fuzzy. Conservative interpretation: when in doubt,
    treat as portable.
  - Hybrid AI outputs (e.g., AI categorization of user-provided text)
    raise novel portability questions. Best practice: export the
    user-provided text but not the AI categorization.
  - Cross-AI-vendor portability (transferring AI-relevant data from
    one vendor to another) is not specifically addressed but emerging
    in CAI guidance.
sentainel_value_prop: |
  Most enterprises lack the technical infrastructure to fulfill
  s. 27 portability requests cleanly. Sentainel's lineage-aware
  export tooling reduces a multi-month engineering project to a
  subscription feature.
extracted_at: 2026-05-13T07:25:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
