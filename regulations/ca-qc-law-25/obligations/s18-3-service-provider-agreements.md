---
slug: ca-qc-law-25-s18-3-service-provider-agreements
regulation_id: ca-qc-law-25
article_number: "P-39.1 s. 18.3 (added by Law 25)"
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: in_force
effective_date: 2023-09-22
actors:
  - PERSON_LEGAL_ENTITY
  - PLATFORM_OPERATOR
  - EMPLOYER
required_action: |
  When a person carrying on an enterprise entrusts a person or
  body with the task of collecting, using, communicating, or
  keeping personal information on its behalf, the mandate or
  contract must be in writing and include the following:

  (1) measures the contractor must take to ensure the
      confidentiality of the personal information;
  (2) the contractor's obligation to use the personal information
      only for the purposes set out in the mandate or contract
      and not retain it after expiry of the mandate or contract;
  (3) the contractor's obligation to notify the enterprise of any
      breach or attempted breach by any person of the
      confidentiality of the personal information and to allow
      the enterprise to conduct any verification it deems
      necessary; and
  (4) any other obligation imposed on the contractor by this Act.

  The contractor may not use the personal information for any
  other purpose, communicate or retain it after expiry of the
  contract.
plain_language_summary: |
  Section 18.3 requires WRITTEN AGREEMENTS with all service
  providers handling Quebec personal information — including all
  AI vendors. Verbal agreements, generic terms of service, or
  click-through licenses are INSUFFICIENT.

  CRITICAL FOR AI: Every AI vendor processing Quebec personal
  information must have a written agreement covering:
  1. Confidentiality safeguards (technical + administrative)
  2. Use limited to specified purposes — NO secondary use
  3. Breach notification to the enterprise
  4. Audit rights for the enterprise
  5. Data deletion on contract termination
  6. Subcontractor restrictions

  Standard AI vendor ToS rarely meet these requirements without
  enterprise-specific addenda. The Sentainel value-add: pre-built
  s. 18.3-compliant DPA addenda for major AI vendors.
trigger_conditions:
  - condition: Entrusting personal information to a third party
    formal: |
      Any arrangement where a third party processes personal
      information on behalf of the enterprise. Includes:
      - AI SaaS vendors
      - Cloud hosts
      - Customer support outsourcing
      - Marketing automation vendors
      - Analytics providers
      - Backup providers
evidence_required:
  - Written agreement for each service provider
  - Section 18.3 compliance verification per agreement
  - Vendor inventory with agreement status
  - Annual review of agreements
  - For AI specifically:
    - AI vendor agreements with mandatory clauses
    - Subprocessor disclosure and approval workflow
    - Breach notification mechanism testing
    - Data deletion verification on contract termination
deadline:
  type: continuous
  value: |
    Written agreement in place before processing begins;
    refreshed on material change; reviewed annually.
exceptions: []
penalty_for_violation: |
  - Administrative Monetary Penalty: up to CAD $10M or 2% of
    worldwide turnover (P-39.1 s. 90.1)
  - Penal sanction: up to CAD $25M or 4% of worldwide turnover
    (P-39.1 s. 91)
  - Joint liability for vendor breaches if agreement deficient
sentainel_value_prop: |
  Sentainel maintains a library of s. 18.3-compliant DPA addenda
  for the top 30 AI vendors. Drop-in templates eliminate the
  $5K-$15K per-vendor legal spend. Continuous monitoring of
  vendor terms updates alerts on s. 18.3 deficiencies.
cross_references:
  - ca-qc-law-25-s17-cross-border-transfers
  - ca-qc-law-25-s3-5-confidentiality-incident-notification
  - ca-qc-law-25-s12-purpose-limitation
  - eu-gdpr-art-28-processors
confidence_score: 0.94
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + manual review
ambiguity_notes: |
  - "Mandate" vs. "contract" distinction is largely formal under
    Quebec civil law; both require the same content.
  - Subprocessor chain disclosure depth is interpretive; conservative
    practice is full disclosure with approval rights.
extracted_at: 2026-05-13T08:15:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
