---
slug: ca-qc-law-25-s12-purpose-limitation
regulation_id: ca-qc-law-25
article_number: "P-39.1 s. 12 (amended by Law 25)"
parent_article: null
obligation_type: PROHIBIT
status: in_force
effective_date: 2023-09-22
actors:
  - PERSON_LEGAL_ENTITY
  - PLATFORM_OPERATOR
  - EMPLOYER
required_action: |
  A person who carries on an enterprise may use personal information
  only for the purposes for which it was collected, except with the
  consent of the person concerned. Subject to the exceptions provided
  by law, only personal information that is necessary for the
  purposes of the application of a law or for carrying out a mandate
  or contract may be used.

  Personal information may, however, be used for another purpose,
  without the consent of the person concerned, only in the following
  cases:
  (1) the use is for purposes consistent with those for which it
      was collected;
  (2) the use is clearly for the benefit of the person concerned;
  (3) the use is necessary for the application of a law in Québec
      whether or not the law expressly provides for such use;
  (4) the use is necessary for the prevention and detection of
      fraud or for the evaluation and improvement of protective
      and security measures;
  (5) the use is necessary for the supply or the delivery of a
      product or the provision of a service requested by the
      person concerned; or
  (6) the use is for study or research purposes or for the
      production of statistics.
plain_language_summary: |
  Section 12 is the purpose limitation principle. Personal information
  collected for Purpose A cannot be used for Purpose B without
  consent unless one of six narrow exceptions applies.

  CRITICAL FOR AI: Personal information collected for customer
  service CANNOT be used to train AI models without explicit
  consent or a clear exception. Common compliance failures:
  - Using customer chat logs to train AI without consent
  - Using employee performance data for AI predictive modeling
    without consent
  - Sharing data with AI vendors who use it for vendor's own
    model improvement
  - Using analytics data for new AI personalization purposes

  The "secondary use" prohibition is strict in Quebec and is a
  common CAI enforcement target.
trigger_conditions:
  - condition: Secondary use of personal information
    formal: |
      Use of personal information for a purpose distinct from the
      original collection purpose.
evidence_required:
  - Purpose specification documented at time of collection
  - Use restriction enforcement in data systems
  - Consent records for any non-original-purpose use
  - Exception applicability documentation (if relying on s. 12
    exceptions)
  - For AI specifically:
    - AI training data sourcing documentation
    - AI vendor contract restrictions on secondary use
    - Internal AI training pipeline controls
    - Documentation that AI use was either consented or falls
      within a s. 12 exception
deadline:
  type: continuous
  value: |
    Purpose limitation enforced continuously; each new AI use
    requires fresh consent or exception analysis.
exceptions:
  - description: |
      Six statutory exceptions in s. 12. AI training generally
      does NOT fit cleanly into these exceptions; consent is the
      typical compliance path.
penalty_for_violation: |
  - Administrative Monetary Penalty: up to CAD $10M or 2% of
    worldwide turnover (P-39.1 s. 90.1)
  - Penal sanction: up to CAD $25M or 4% of worldwide turnover
    (P-39.1 s. 91) — secondary use violations are CAI enforcement
    priorities
  - Private right of action: CAD $1,000 minimum per individual
sentainel_value_prop: |
  Sentainel's purpose-tracking module enforces s. 12 by tagging
  every data element with its collection purpose, blocking
  cross-purpose use without consent or exception, and maintaining
  an audit trail of purpose-consistent processing.
cross_references:
  - ca-qc-law-25-s14-consent
  - ca-qc-law-25-s3-3-mandatory-pia
  - eu-gdpr-art-6-lawfulness
confidence_score: 0.94
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + manual review
ambiguity_notes: |
  - "Consistent purposes" exception is interpretive. Conservative
    reading: secondary purpose must be reasonably anticipatable by
    the individual at the time of original collection.
extracted_at: 2026-05-13T08:00:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
