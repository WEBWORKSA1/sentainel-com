---
slug: ca-qc-law-25-s3-2-privacy-governance
regulation_id: ca-qc-law-25
article_number: "P-39.1 s. 3.2 (added by Law 25)"
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: in_force
effective_date: 2022-09-22
actors:
  - PERSON_LEGAL_ENTITY
  - PLATFORM_OPERATOR
  - EMPLOYER
required_action: |
  The person carrying on an enterprise must establish and implement
  governance policies and practices regarding personal information
  that ensure the protection of such information. The policies and
  practices must, in particular, provide a framework for the
  keeping and destruction of personal information, define the roles
  and responsibilities of the members of its personnel throughout
  the life cycle of personal information, and provide a process for
  dealing with complaints regarding the protection of personal
  information.

  Detailed information about the policies and practices must be
  published on the enterprise's website in clear and simple language.
plain_language_summary: |
  Section 3.2 requires a documented privacy governance framework
  covering the full lifecycle of personal information. Generic
  privacy policies are insufficient — Law 25 requires actual
  internal governance with assigned roles, lifecycle procedures,
  and complaint handling.

  CRITICAL FOR AI: AI governance is a subset of privacy governance
  under Law 25. AI-specific policies must cover:
  - AI vendor selection and approval process
  - AI PIA workflow ownership
  - AI incident response roles
  - AI consent management responsibility
  - AI training data lifecycle (retention, destruction)
  - AI output retention and destruction
  - Complaint handling for AI-driven decisions
trigger_conditions:
  - condition: Enterprise scope
    formal: Any person carrying on an enterprise.
evidence_required:
  - Documented privacy governance policy
  - Lifecycle procedures for personal information
  - Role and responsibility matrix
  - Complaint handling process
  - Public-facing summary of policies
  - For AI specifically:
    - AI governance policy
    - AI vendor approval workflow
    - AI lifecycle procedures (data ingestion → model deployment
      → output handling → retention → destruction)
    - AI-driven decision complaint handling procedure
deadline:
  type: continuous
  value: |
    Governance framework maintained and updated on material changes;
    annual review recommended.
exceptions: []
penalty_for_violation: |
  - Administrative Monetary Penalty: up to CAD $10M or 2% of
    worldwide turnover (P-39.1 s. 90.1)
  - Absence of governance is an aggravating factor in essentially
    all Law 25 violations
sentainel_value_prop: |
  Sentainel's Quebec governance pack includes pre-built Section 3.2-
  compliant policies templates specifically for AI use. The
  governance documentation is the foundation that supports all
  other Law 25 compliance activities.
cross_references:
  - ca-qc-law-25-s3-1-privacy-officer
  - ca-qc-law-25-s3-3-mandatory-pia
  - ca-qc-law-25-s8-2-privacy-policy
confidence_score: 0.93
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + manual review
ambiguity_notes: |
  - The required level of detail in public-facing governance
    summaries is interpretive. CAI guidance: sufficient for
    individuals to understand how their data is handled.
extracted_at: 2026-05-13T07:35:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
