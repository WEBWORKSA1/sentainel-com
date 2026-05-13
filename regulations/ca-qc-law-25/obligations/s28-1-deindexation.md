---
slug: ca-qc-law-25-s28-1-deindexation
regulation_id: ca-qc-law-25
article_number: "P-39.1 s. 28.1 (added by Law 25)"
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: in_force
effective_date: 2023-09-22
actors:
  - PERSON_LEGAL_ENTITY
  - PLATFORM_OPERATOR
required_action: |
  A person whose personal information is held by another person who
  carries on an enterprise may require the latter to cease
  disseminating the information or to de-index any hyperlink attached
  to the person's name that provides access to the information by a
  technological means, or to re-index it, in cases where the
  dissemination of the information contravenes the law or a court
  order.

  The same right applies where the following conditions are met:
  (1) the dissemination of the information causes the person serious
      injury in relation to their right to the respect of their
      reputation or privacy;
  (2) the injury is clearly greater than the interest of the public
      in knowing the information or the interest of any person in
      expressing themselves freely; and
  (3) the cessation of dissemination, re-indexation, or de-indexation
      requested does not exceed what is necessary for preventing the
      perpetuation of the injury.
plain_language_summary: |
  Section 28.1 is Quebec's "right to be forgotten." Individuals
  may require enterprises to:
  - Stop disseminating their information
  - De-index search results pointing to their information
  - Re-index information (e.g., remove from prominent positions)

  Two triggers: (a) dissemination violates law or court order, OR
  (b) the dissemination causes serious injury to reputation or
  privacy AND that injury outweighs public interest.

  CRITICAL FOR AI: De-indexation requests have AI implications:
  - AI search/recommendation systems must respect de-indexation
  - AI-generated content about individuals may be subject to
    de-indexation
  - AI training data may need to be scrubbed if it propagates
    de-indexed information
  - AI outputs reproducing de-indexed content trigger fresh
    obligations
trigger_conditions:
  - condition: Personal information held by enterprise
    formal: |
      Enterprise holds personal information about the requester.
  - condition: One of two grounds met
    formal: |
      (a) Unlawful dissemination, OR
      (b) Serious injury outweighing public interest.
evidence_required:
  - Request handling procedure
  - Three-prong test analysis (injury, public interest, proportionality)
  - Implementation evidence (cessation, de-indexation, re-indexation)
  - For AI specifically:
    - Search/recommendation AI filtering implementation
    - AI training data scrubbing where applicable
    - AI output filtering for de-indexed content
deadline:
  type: relative
  value: |
    30 days from request, per general Law 25 rights-request
    timeline (s. 32).
exceptions:
  - description: |
      Where public interest in knowing the information outweighs
      injury to the requester.
  - description: |
      Where the dissemination is necessary to exercise freedom of
      expression and the injury does not outweigh this interest.
penalty_for_violation: |
  - Administrative Monetary Penalty: up to CAD $10M or 2% of
    worldwide turnover (P-39.1 s. 90.1)
  - Private right of action: CAD $1,000 minimum per individual
    (P-39.1 s. 93.1)
sentainel_value_prop: |
  Sentainel's de-indexation workflow handles the three-prong test
  analysis, implements technical de-indexation across AI systems
  (search, recommendations, training data), and maintains audit
  trail for proportionality defense.
cross_references:
  - ca-qc-law-25-s27-data-portability
  - ca-qc-law-25-s12-1-automated-decision-making
  - eu-gdpr-art-17-right-to-erasure
confidence_score: 0.90
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + manual review
ambiguity_notes: |
  - The proportionality test (injury vs. public interest) is highly
    fact-specific; CAI is developing jurisprudence.
  - AI training data scrubbing is technically complex; the threshold
    for "reasonable efforts" is not yet established.
extracted_at: 2026-05-13T07:50:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
