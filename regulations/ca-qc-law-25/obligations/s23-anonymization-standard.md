---
slug: ca-qc-law-25-s23-anonymization-standard
regulation_id: ca-qc-law-25
article_number: |
  P-39.1 s. 23 + Regulation respecting the anonymization of
  personal information, O.C. 2024-0XX (in force 2024)
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: in_force
effective_date: 2024-05-30
actors:
  - PERSON_LEGAL_ENTITY
  - PLATFORM_OPERATOR
  - EMPLOYER
required_action: |
  When the purposes for which personal information was collected
  or used are achieved, the person carrying on an enterprise must
  destroy the information, or anonymize it to use it for serious
  and legitimate purposes.

  Per the Regulation respecting the anonymization of personal
  information (effective May 30, 2024), anonymization must meet a
  specific technical standard: it must be IRREVERSIBLE. The
  individual must no longer be identifiable, directly or indirectly,
  by any reasonably foreseeable means.

  The anonymization must be carried out under the supervision of a
  person who has the necessary expertise. The methodology must be
  documented including: the techniques used, the analysis of
  re-identification risks, and the measures to maintain
  anonymization over time. The documentation must be retained.

  Reasonably foreseeable means include consideration of:
  - Available technology
  - Other information available to potential re-identifiers
  - Costs and time required for re-identification
plain_language_summary: |
  Quebec's anonymization standard, formalized by regulation in May
  2024, is the most rigorous in North America. Pseudonymization is
  NOT anonymization. K-anonymity alone is generally NOT sufficient.
  The standard requires irreversibility considering current
  technology and reasonably foreseeable advances.

  CRITICAL FOR AI:

  1. AI TRAINING DATA: If you want to use Quebec personal information
     to train AI models without ongoing consent, you must anonymize
     to this standard. Most "anonymized" training datasets fail.

  2. AI MODEL OUTPUTS: AI models themselves may memorize training
     data; if a "anonymized" training set is reconstructable from
     model outputs, anonymization fails.

  3. AI VENDOR CLAIMS: Vendor claims of "anonymized" or "de-identified"
     data must be evaluated against this standard. Most fail.

  4. SYNTHETIC DATA: Synthetic data generated from personal information
     may or may not meet the anonymization standard depending on
     reconstruction risk.

  5. RETENTION FOR ANALYTICS: If you want to retain data past purpose
     for analytics, you must either keep consent active OR truly
     anonymize.
trigger_conditions:
  - condition: Intent to retain past purpose
    formal: |
      Enterprise wants to retain data after the original purpose
      is achieved (training data analytics, model improvement,
      research, etc.).
  - condition: Use for "serious and legitimate" purpose
    formal: |
      Anonymized data may be used for serious and legitimate
      purposes; commercial purposes generally qualify if proportionate
      and documented.
evidence_required:
  - Anonymization methodology documentation
  - Expert supervision documentation (qualifications + sign-off)
  - Re-identification risk analysis
  - Ongoing monitoring plan (anonymization must remain valid over
    time)
  - For AI specifically:
    - Training data anonymization process
    - Model memorization risk assessment
    - Synthetic data reconstruction risk assessment
    - Vendor anonymization claim verification
deadline:
  type: continuous
  value: |
    Anonymization completed when retention past purpose begins;
    ongoing monitoring to maintain anonymization validity.
exceptions: []
penalty_for_violation: |
  - Administrative Monetary Penalty: up to CAD $10M or 2% of
    worldwide turnover (P-39.1 s. 90.1)
  - Penal sanction: up to CAD $25M or 4% of worldwide turnover
    (P-39.1 s. 91)
  - Treating non-anonymized data as anonymized is a serious
    Law 25 violation triggering full penalty exposure for all
    downstream uses
  - Private right of action: CAD $1,000 minimum per individual
sentainel_value_prop: |
  Sentainel provides:
  - Anonymization methodology templates per data category
  - Re-identification risk scoring tooling
  - Expert sign-off workflows
  - Training data anonymization gates (block AI training until
    anonymization verified)
  - Synthetic data evaluation tooling
  - Vendor claim verification framework

  Anonymization failures are catastrophic — the data is treated
  as fully personal information for ALL downstream uses, multiplying
  every other Law 25 violation. Sentainel's anonymization gates
  prevent the cascade.
cross_references:
  - ca-qc-law-25-s12-purpose-limitation
  - ca-qc-law-25-s23-data-minimization-retention
  - ca-qc-law-25-s3-3-mandatory-pia
  - eu-gdpr-recital-26-anonymisation
confidence_score: 0.92
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + manual review
ambiguity_notes: |
  - The "reasonably foreseeable means" standard is dynamic — what
    qualifies as anonymous today may not qualify in 2 years as AI
    re-identification capabilities advance. Ongoing monitoring
    required.
  - The regulation provides some methodological flexibility but
    requires expert supervision; what qualifies as "necessary
    expertise" is interpretive but typically requires demonstrable
    technical and legal competence.
  - The interaction with synthetic data generation (a fast-evolving
    AI use case) is unsettled. Conservative practice: treat synthetic
    data generated from PI as still subject to anonymization standard.
extracted_at: 2026-05-13T08:20:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
