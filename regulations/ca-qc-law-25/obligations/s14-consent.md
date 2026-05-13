---
slug: ca-qc-law-25-s14-consent
regulation_id: ca-qc-law-25
article_number: "P-39.1 s. 14 (amended by Law 25)"
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: in_force
effective_date: 2023-09-22
actors:
  - PERSON_LEGAL_ENTITY
  - PLATFORM_OPERATOR
  - EMPLOYER
required_action: |
  Consent to the collection, use, or communication of personal
  information must be MANIFEST, FREE, and ENLIGHTENED. It must be
  given for SPECIFIC PURPOSES, and granted for ONE PURPOSE AT A TIME.

  Consent must be requested for each purpose, in clear and simple
  language. Where the request for consent is made in writing, it
  must be presented separately from any other information provided
  to the person concerned.

  If the request does not meet these conditions, the consent is not
  valid.

  Consent is valid only for the time necessary to achieve the
  purposes for which it was requested.
plain_language_summary: |
  Section 14 transforms consent from a checkbox exercise into a
  granular, purpose-by-purpose process. Under Law 25, generic
  "I agree to data processing" consent is INVALID.

  Each distinct purpose requires its own consent request, in
  clear language, separated from other terms.

  CRITICAL FOR AI: AI processing of personal information requires
  consent specifically for AI processing — generic data processing
  consent obtained pre-AI deployment is invalid for AI processing.

  Examples of insufficient consent (invalid under Law 25):
  - "I consent to data processing including AI" (bundled with
    other purposes)
  - "I consent to AI processing as described in our privacy policy"
    (consent must be specific, not by reference)
  - Pre-checked AI processing boxes (consent must be manifest)
  - Consent to use of AI for "service improvement" (too vague —
    must be specific purpose)

  Examples of sufficient consent (valid under Law 25):
  - Separate consent request: "Do you consent to your CV being
    analyzed by AI to generate a skills profile? This profile will
    be used solely to recommend jobs in our system."
  - Granular consent for each AI feature: separate consent for
    AI scoring vs. AI categorization vs. AI training
trigger_conditions:
  - condition: Personal information processing
    formal: |
      Any collection, use, or communication of personal information
      requires Section 14-compliant consent unless an exception
      applies (e.g., performance of a contract, legal obligation,
      vital interest, public information).
  - condition: AI processing as a distinct purpose
    formal: |
      CAI guidance: AI processing is a distinct purpose requiring
      its own consent. AI processing for hiring, for marketing,
      for product recommendations, for fraud detection, etc. are
      each distinct purposes requiring separate granular consent.
  - condition: Cross-border AI processing (s. 17 interaction)
    formal: |
      Cross-border AI processing requires consent that covers both
      the AI processing AND the cross-border element. Both must be
      manifest, free, enlightened, and specific.
evidence_required:
  - Consent management platform records
  - Per-purpose consent timestamps
  - Consent text used (versioned)
  - Evidence consent was presented separately from other terms
  - Evidence consent text was in clear and simple language
  - Consent renewal records (consent expires when purpose achieved)
  - Consent withdrawal records and downstream data handling
  - For AI specifically:
    - AI-purpose consent text distinct from other purposes
    - Records of AI feature activation by consent status
    - Evidence that AI processing ceased on consent withdrawal
    - Training data consent records (if Quebec data used for
      model training)
deadline:
  type: continuous
  value: |
    Consent obtained before processing. Granular consent must be
    refreshed for each new purpose. Consent expires when purpose
    is achieved.
exceptions:
  - description: |
      Consent not required where processing is necessary for the
      performance of a contract (s. 18.1) — but the contractual
      necessity must be genuine, not pretextual.
  - description: |
      Consent not required for processing necessary to comply with
      a legal obligation.
  - description: |
      Consent not required for processing of publicly accessible
      personal information meeting prescribed criteria.
  - description: |
      Consent not required to safeguard a person's life, health,
      or safety.
penalty_for_violation: |
  - Administrative Monetary Penalty: up to CAD $10M or 2% of
    worldwide turnover (P-39.1 s. 90.1) — invalid consent is a
    common AMP basis in CAI casework
  - Penal sanction: up to CAD $25M or 4% of worldwide turnover
    (P-39.1 s. 91) for serious or systemic violations
  - All downstream processing based on invalid consent is itself
    unlawful, multiplying violations
  - Private right of action: CAD $1,000 minimum per individual
    (P-39.1 s. 93.1)
  - CAI compliance orders may require ceasing processing pending
    re-consent
ai_specific_application: |
  Sentainel's consent module operationalizes Section 14 for AI:

  1. PURPOSE DECOMPOSITION: Auto-decomposes data flows into
     distinct purposes; flags any bundled consent as invalid
  2. CONSENT TEMPLATE GENERATOR: Produces Section 14-compliant
     consent text in French + English with separated purposes
  3. AI-PURPOSE TAXONOMY: Pre-built consent purposes for common
     AI uses (hiring AI, marketing AI, fraud-detection AI, product-
     recommendation AI, training data inclusion, etc.)
  4. CONSENT-LINKED FEATURE FLAGS: AI features activate/deactivate
     based on consent status; withdrawal triggers automatic
     processing cessation
  5. EXPIRY MANAGEMENT: Tracks purpose completion; prompts re-consent
     or data deletion
  6. CROSS-BORDER INTEGRATION: Coordinates with s. 17 PIA when AI
     processing crosses borders
cross_references:
  - ca-qc-law-25-s3-3-mandatory-pia
  - ca-qc-law-25-s12-1-automated-decision-making
  - ca-qc-law-25-s17-cross-border-transfers
  - ca-qc-law-25-s27-data-portability
  - ca-on-mfippa-pia-mandatory-bill97
  - ca-federal-pipeda-consent
  - eu-gdpr-art-6-7
ai_system_types_affected:
  - all-ai-systems-processing-personal-info
  - ai-training-pipelines
  - ai-personalization-engines
  - ai-recommendation-systems
  - ai-marketing-tools
  - ai-hiring-tools
confidence_score: 0.92
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + manual review
ambiguity_notes: |
  - The boundary between "specific purpose" and "overly granular"
    is interpretive. CAI guidance: purposes that a reasonable
    person would distinguish as different uses require separate
    consent.
  - For AI systems that evolve (model retraining, new features),
    the consent refresh trigger is not statutorily defined. Best
    practice: refresh consent on material changes to AI processing.
  - "Free" consent in employment contexts is challenging given
    power imbalance. CAI scrutiny is heightened for employer-
    employee data flows.
sentainel_value_prop: |
  Section 14 consent failures are the most common Law 25 violation
  pattern in CAI casework. Most Quebec enterprises have generic
  privacy policy consent that fails s. 14's specificity requirement.

  Sentainel's consent generator produces audit-defensible, Section
  14-compliant consent flows specifically designed for AI use cases.
  This single feature can prevent the most-litigated category of
  Law 25 violations.
extracted_at: 2026-05-13T07:15:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
