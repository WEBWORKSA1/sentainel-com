---
slug: ca-qc-law-25-s23-data-minimization-retention
regulation_id: ca-qc-law-25
article_number: "P-39.1 s. 10, 23 (amended by Law 25)"
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: in_force
effective_date: 2023-09-22
actors:
  - PERSON_LEGAL_ENTITY
  - PLATFORM_OPERATOR
  - EMPLOYER
required_action: |
  Section 10: A person carrying on an enterprise must take the
  security measures necessary to ensure the protection of personal
  information that is collected, used, communicated, kept, or
  destroyed and that are reasonable given the sensitivity of the
  information, the purposes for which it is to be used, the
  quantity and distribution of the information, and the medium
  in which it is stored.

  Section 23: When the purposes for which personal information was
  collected or used are achieved, the person carrying on an
  enterprise must destroy the information, or anonymize it to use
  it for serious and legitimate purposes, subject to any preservation
  period provided by a law.
plain_language_summary: |
  Quebec requires DATA DESTRUCTION OR ANONYMIZATION when collection
  purposes are achieved. Sections 10 and 23 together create a
  lifecycle obligation: collect only what's necessary, secure it
  proportionate to sensitivity, and destroy or anonymize when
  done.

  CRITICAL FOR AI: AI systems often default to data retention for
  model improvement, debugging, or analytics. Under s. 23, this
  data must be destroyed when the original purpose is achieved
  unless retention is anonymized.

  Operational implications for AI:
  - Prompt logs containing PI must be deleted on purpose completion
  - AI training data that has served its training purpose may need
    destruction
  - Model outputs retained for analytics must be either anonymized
    or destroyed
  - AI vendor data retention policies must align with s. 23
trigger_conditions:
  - condition: Purpose achievement
    formal: |
      The purpose for which personal information was collected has
      been achieved (e.g., transaction completed, service delivered,
      contract performed).
  - condition: No legal retention requirement
    formal: |
      No law requires longer retention (e.g., tax records, employment
      records have statutory retention periods).
evidence_required:
  - Retention schedule by data category
  - Destruction procedures and records
  - Anonymization methodology and records
  - Security measures documentation
  - For AI specifically:
    - AI training data retention policy
    - AI inference log retention policy
    - AI model output retention policy
    - AI vendor data retention terms
    - Destruction verification records
deadline:
  type: continuous
  value: |
    Destroy or anonymize promptly after purpose achievement;
    retention only for statutory periods.
exceptions:
  - description: |
      Statutory retention requirements (tax, employment, regulatory
      records) override the s. 23 destruction obligation for the
      mandated period.
  - description: |
      Anonymization for "serious and legitimate purposes" permits
      ongoing use of anonymized data.
penalty_for_violation: |
  - Administrative Monetary Penalty: up to CAD $10M or 2% of
    worldwide turnover (P-39.1 s. 90.1)
  - Penal sanction: up to CAD $25M or 4% of worldwide turnover
    (P-39.1 s. 91)
sentainel_value_prop: |
  Sentainel's retention module manages AI data lifecycle: tags
  collection purposes, monitors purpose completion, triggers
  destruction or anonymization workflows, verifies vendor
  destruction, and maintains audit trail.
cross_references:
  - ca-qc-law-25-s3-3-mandatory-pia
  - ca-qc-law-25-s12-purpose-limitation
  - eu-gdpr-art-5-storage-limitation
confidence_score: 0.93
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + manual review
ambiguity_notes: |
  - "Anonymization" standard under Law 25 is rigorous; pseudonymization
    is NOT sufficient. The data must be irreversibly de-identifiable.
  - The threshold for "purpose achieved" can be unclear in ongoing
    customer relationships; best practice is per-transaction or
    per-service-instance purpose specification.
extracted_at: 2026-05-13T08:05:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
