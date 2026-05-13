---
slug: ca-qc-law-25-s8-2-privacy-policy
regulation_id: ca-qc-law-25
article_number: "P-39.1 s. 8.2 (added by Law 25)"
parent_article: null
obligation_type: DISCLOSE
status: in_force
effective_date: 2023-09-22
actors:
  - PERSON_LEGAL_ENTITY
  - PLATFORM_OPERATOR
required_action: |
  Any person carrying on an enterprise who collects personal
  information through technological means must publish a
  confidentiality policy on its website or, if it does not have
  a website, make it accessible to the public by any appropriate
  means. The policy must be drafted in clear and simple language.

  The policy must include, in particular, the means by which the
  person concerned may exercise their rights, the name and contact
  information of the person in charge of personal information
  protection, and a description of the categories of personal
  information collected and the purposes of collection.

  Any change to the policy must be brought to the attention of the
  persons concerned by any appropriate means.
plain_language_summary: |
  Section 8.2 requires a publicly-available confidentiality policy
  written in clear, simple language. This is distinct from Section
  3.2 governance documentation — the s. 8.2 policy is consumer-
  facing.

  CRITICAL FOR AI: The confidentiality policy must specifically
  describe AI processing. Generic "we may use data for analytics
  and service improvement" is insufficient. The policy must
  identify:
  - That AI is used
  - Categories of personal information processed by AI
  - Specific AI purposes (each as a distinct purpose per s. 14)
  - Cross-border AI processing flows (per s. 17)
  - Automated decision-making (per s. 12.1)
  - How to exercise AI-related rights
trigger_conditions:
  - condition: Personal information collected through technological means
    formal: |
      Web forms, mobile apps, IoT, AI interfaces — essentially any
      modern data collection method.
evidence_required:
  - Published confidentiality policy
  - Version history showing updates
  - Notification records for material changes
  - Plain-language assessment (Grade 8 reading level standard)
  - Bilingual versions (French + English, per Quebec linguistic
    requirements)
  - For AI specifically:
    - AI processing descriptions in policy
    - AI purpose disclosures
    - AI cross-border flow disclosures
    - AI rights exercise procedures
deadline:
  type: continuous
  value: |
    Policy maintained continuously; material updates trigger
    notification obligation.
exceptions: []
penalty_for_violation: |
  - Administrative Monetary Penalty: up to CAD $10M or 2% of
    worldwide turnover (P-39.1 s. 90.1)
  - Common CAI compliance audit finding
sentainel_value_prop: |
  Sentainel's policy generator produces s. 8.2-compliant
  confidentiality policies with AI-specific sections in French
  and English. Updates automatically when AI vendor or processing
  changes are detected.
cross_references:
  - ca-qc-law-25-s3-2-privacy-governance
  - ca-qc-law-25-s14-consent
  - ca-qc-law-25-s12-1-automated-decision-making
confidence_score: 0.95
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + manual review
ambiguity_notes: |
  - "Clear and simple language" is interpretive; CAI guidance
    suggests Grade 8 reading level as a practical baseline.
extracted_at: 2026-05-13T07:45:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
