---
slug: ca-qc-law-25-biometric-database-disclosure
regulation_id: ca-qc-law-25
article_number: |
  Act to establish a legal framework for information technology,
  CQLR c. C-1.1, s. 45 (amended by Law 25)
parent_article: null
obligation_type: NOTIFY_AUTHORITY
status: in_force
effective_date: 2022-09-22
actors:
  - PERSON_LEGAL_ENTITY
  - PLATFORM_OPERATOR
  - EMPLOYER
required_action: |
  Any person creating a database of biometric characteristics or
  measurements must disclose the database to the Commission d'accès
  à l'information AT LEAST 60 DAYS BEFORE its commissioning. The
  disclosure must specify the purposes of the database and the
  reasons justifying its creation.

  Use of biometric characteristics or measurements to verify or
  confirm a person's identity requires the express consent of the
  person concerned. Refusal to consent must not result in the denial
  of a service or product unless biometric verification is the only
  way to fulfill the legal or contractual purpose.
plain_language_summary: |
  Quebec is unique in North America in requiring PRE-NOTIFICATION
  to the regulator before establishing any biometric database. The
  CAI must be informed at least 60 days before the database goes
  live.

  CRITICAL FOR AI: This applies to AI systems that:
  - Use facial recognition (employee access, customer ID, fraud)
  - Use voice biometrics (call center authentication)
  - Use behavioral biometrics (typing patterns, mouse movements
    used for identity verification)
  - Use fingerprint or iris scanning
  - Train models on biometric data

  The 60-day pre-notification effectively gives the CAI veto power
  via inquiry and order, even though there's no formal pre-approval
  requirement.
trigger_conditions:
  - condition: Biometric database creation
    formal: |
      Any system that systematically collects, stores, and uses
      biometric characteristics or measurements for the purpose of
      identification or verification.
  - condition: Use for identity verification or confirmation
    formal: |
      Express consent required; cannot be conditioned on receiving
      service (unless biometric is sole means).
evidence_required:
  - CAI pre-notification submission (60 days before commissioning)
  - Database purpose documentation
  - Justification documentation
  - Express consent records
  - Refusal accommodation evidence (alternatives to biometric)
  - For AI specifically:
    - AI model documentation if biometric AI used
    - Training data biometric disclosures
    - Vendor confirmation if biometric AI SaaS used
deadline:
  type: relative
  value: |
    Pre-notification: at least 60 days before database commissioning.
    Consent: before each biometric collection event.
exceptions:
  - description: |
      Sole-means exception: where biometric verification is the only
      way to fulfill a legal or contractual purpose, consent refusal
      may justify service denial.
penalty_for_violation: |
  - Administrative Monetary Penalty: up to CAD $10M or 2% of
    worldwide turnover (P-39.1 s. 90.1)
  - Penal sanction: up to CAD $25M or 4% of worldwide turnover
    (P-39.1 s. 91)
  - CAI compliance orders to cease biometric processing
  - Specific public attention given to biometric violations in CAI
    annual reports
sentainel_value_prop: |
  Sentainel's biometric module flags any AI vendor using biometric
  data, manages the 60-day pre-notification workflow, and maintains
  express consent records. This is the highest-stakes Law 25
  category because biometric incidents receive disproportionate
  CAI attention.
cross_references:
  - ca-qc-law-25-s3-3-mandatory-pia
  - ca-qc-law-25-s14-consent
  - ca-qc-law-25-s17-cross-border-transfers
  - eu-gdpr-art-9-special-categories
confidence_score: 0.95
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + manual review
ambiguity_notes: |
  - Behavioral biometrics (typing patterns, mouse dynamics) are
    captured by the broad definition but CAI has not extensively
    enforced this against behavioral biometric uses.
  - The boundary between "biometric used as authentication factor"
    (clearly captured) and "biometric used as analytic signal"
    (less clear) is unsettled.
extracted_at: 2026-05-13T07:55:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
