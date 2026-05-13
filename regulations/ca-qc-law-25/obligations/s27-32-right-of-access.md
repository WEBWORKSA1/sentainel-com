---
slug: ca-qc-law-25-s27-32-right-of-access
regulation_id: ca-qc-law-25
article_number: "P-39.1 s. 27, 32 (amended by Law 25)"
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: in_force
effective_date: 2023-09-22
actors:
  - PERSON_LEGAL_ENTITY
  - PLATFORM_OPERATOR
  - EMPLOYER
required_action: |
  Every person carrying on an enterprise who holds a file on another
  person must, on request, confirm the existence of the file,
  communicate to the person the personal information concerning him,
  and inform him of any breach of an obligation.

  Requests must be processed within 30 days. Where extensions are
  required, the requester must be notified within 30 days with
  reasons for the extension and the time required.

  When personal information has been used to render a decision
  based on automated processing, the person concerned may request
  to be informed of the personal information used, the reasons,
  the principal factors and parameters, and the right to have the
  information corrected.
plain_language_summary: |
  Section 27 grants Quebec residents broad access rights — they can
  request to know what personal information you hold about them,
  receive a copy, and learn the parameters of any AI-driven decision.

  Section 32 establishes the 30-day response timeline for all rights
  requests.

  CRITICAL FOR AI: AI systems must support data subject access
  requests (DSARs) including:
  - All raw personal information stored
  - All AI-derived data (this is accessible but not portable per
    s. 27 portability distinction)
  - For automated decisions: factors, parameters, and basis
  - Information about cross-border AI processing
  - Information about secondary uses, training inclusion, etc.

  Most AI vendor stacks do NOT support clean DSARs. Custom
  engineering is typically required.
trigger_conditions:
  - condition: Request from individual
    formal: |
      Any request from a Quebec resident regarding their personal
      information held by the enterprise.
evidence_required:
  - DSAR intake procedure
  - 30-day response tracking
  - Response content (information provided + format)
  - Identity verification procedure (proportionate, not excessive)
  - Denial documentation if request refused (s. 38-39 grounds)
  - For AI specifically:
    - AI-system inventory enabling cross-system data discovery
    - Section 12.1 explanation generation for automated decisions
    - AI vendor coordination procedures
deadline:
  type: relative
  value: |
    30 days from receipt of request. Extension permitted with notice
    and reason. CAI penalizes systemic late responses.
exceptions:
  - description: |
      Section 38: refusal grounds include legal privilege, third-
      party privacy, and certain investigations.
penalty_for_violation: |
  - Administrative Monetary Penalty: up to CAD $10M or 2% of
    worldwide turnover (P-39.1 s. 90.1)
  - Late responses are a frequent CAI complaint subject
  - Private right of action: CAD $1,000 minimum per individual
sentainel_value_prop: |
  Sentainel's DSAR module aggregates personal information across
  all AI systems, generates s. 12.1-compliant explanations for
  automated decisions, manages the 30-day SLA with automated
  escalation, and produces formatted response documents.
cross_references:
  - ca-qc-law-25-s12-1-automated-decision-making
  - ca-qc-law-25-s27-data-portability
  - eu-gdpr-art-15-right-of-access
confidence_score: 0.95
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + manual review
ambiguity_notes: |
  - Identity verification proportionality is interpretive; excessive
    verification requirements can themselves be Law 25 violations.
extracted_at: 2026-05-13T08:10:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
