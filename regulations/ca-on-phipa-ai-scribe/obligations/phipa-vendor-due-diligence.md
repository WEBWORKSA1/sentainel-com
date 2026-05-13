---
slug: ca-on-phipa-vendor-due-diligence
regulation_id: ca-on-phipa-ai-scribe
article_number: "PHIPA s. 6 + s. 17 + IPC AI Scribe Guidance"
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: in_force
effective_date: 2026-01-28
proclamation_pending: false
actors:
  - HEALTHCARE_PROVIDER
  - AI_DEPLOYER
required_action: |
  Conduct comprehensive due diligence on AI scribe vendors
  including intended use, lawful training data, model
  validation, monitoring, explainability, and incident
  reporting. Negotiate contractual safeguards including:
  contractual limits on vendor access to and use of PHI, data
  retention and destruction obligations, subcontractor controls,
  security and PHIPA-specific breach notification commitments,
  prohibition of vendor model training on HIC data, and ongoing
  performance monitoring.
plain_language_summary: |
  The IPC treats AI scribe vendors as agents under PHIPA s. 6 —
  meaning the custodian is responsible for vendor conduct.
  Vendor failures are custodian failures.

  Due diligence must cover:
  - Intended use of PHI (limited to the contracted purpose)
  - Lawful training data (vendor's own model training basis)
  - Model validation evidence (performance, accuracy, bias)
  - Monitoring practices (vendor's own internal monitoring)
  - Explainability (vendor's ability to explain outputs)
  - Incident reporting (vendor must notify HIC of breaches)

  Contract terms must include retention limits, subcontractor
  controls, breach notification commitments matching PHIPA
  timing, training-data prohibition, and performance
  monitoring rights. Standard SaaS terms of service almost
  never meet these standards — negotiated DPA-equivalent
  required.
trigger_conditions:
  - condition: Procurement of any AI vendor processing PHI
    formal: |
      PHIPA s. 6 imputes vendor conduct to custodian. The IPC
      Guidance applies this directly: "Custodians procuring
      AI scribes from third-party vendors should conduct
      thorough due diligence."
  - condition: Material vendor contract change
    formal: |
      Including ownership change, subcontractor change,
      pricing model change that affects data flows.
evidence_required:
  - Vendor due diligence questionnaire (completed)
  - Vendor architecture documentation (data flows, storage
    locations, subcontractors)
  - Executed contract with PHIPA-aligned terms (DPA, BAA-
    equivalent, or amended MSA)
  - Training-data prohibition clause
  - PHIPA breach notification clause (timing aligned to s. 12.1
    60-day clock)
  - Subcontractor list with controls
  - Vendor performance monitoring records
  - Annual vendor compliance attestation
deadline_type: continuous
deadline_value: "Pre-contract + ongoing (annual refresh minimum)"
penalty_for_violation: |
  - AMP under s. 61.1 (vendor failure imputed to custodian)
  - IPC order requiring vendor termination or contract
    renegotiation
  - Civil action exposure under s. 65 where vendor failure
    causes patient harm
  - Reputational exposure when IPC publishes vendor-related
    decisions
ai_specific_application: |
  Sentainel implementation:

  1. Vendor due diligence questionnaire (PHIPA-tailored, 47
     questions covering 8 risk domains)
  2. PHIPA-compliant contract template (red-line ready for
     vendor SaaS terms)
  3. Vendor architecture documentation template (data flows,
     storage, subcontractors, controls)
  4. Performance monitoring dashboard tracking vendor SLAs,
     incidents, contract compliance
  5. Annual vendor compliance attestation workflow with
     automated reminders
  6. Vendor risk scoring across 8 domains feeding into
     governance committee dashboard

  Maps to NIST AI RMF GOVERN-6.1, GOVERN-6.2, MAP-4.1,
  MAP-4.2, MANAGE-3.1.
sentainel_value_prop: |
  "Vendor failures aren't your failures. PHIPA-aligned contracts,
  monitored attestations, and a vendor risk score that updates
  every quarter."
confidence_score: 0.94
confidence_tier: high
ambiguity_notes: |
  - "Agent" vs. "service provider" distinction under PHIPA
    s. 6 has not been definitively resolved for AI vendors;
    practitioner default is to treat both the same way
  - Vendor breach-notification timing in contracts should be
    less than 60 days to allow custodian to meet the s. 12.1
    deadline; practitioner default is 24-72 hours from vendor
    awareness
  - Subcontractor consent and visibility requirements are
    practitioner-led rather than IPC-specified
extraction_method: claude-opus-4-7-2026-05-13 + IPC AI Scribe Guidance + Norton Rose / McCarthy Tetrault commentary
extracted_at: 2026-05-13
reviewed_at: 2026-05-13
reviewed_by: web@sentainel.com
---

# PHIPA + AI Scribe — Vendor Due Diligence + Contractual Safeguards

## Statutory and guidance anchor

> PHIPA s. 6(2): A health information custodian is responsible
> for the personal health information that is in the custody
> or control of the custodian.

> PHIPA s. 17: A health information custodian is responsible
> for personal health information held by an agent of the
> custodian.

> IPC AI Scribe Guidance (Jan 2026): "Custodians procuring
> AI scribes from third-party vendors should conduct thorough
> due diligence... a custodian should negotiate strong
> contractual safeguards and verify a vendor's commitments
> to performance and ongoing monitoring."

## Cross-references

- Anchor: PHIPA s. 6, s. 17
- Parallel: Quebec Law 25 s. 18.3 service provider agreements,
  s. 17 cross-border transfers
- Parallel: GDPR art. 28 processor obligations
- Anchor: NIST AI RMF GOVERN-6.1 (Third-party policies),
  GOVERN-6.2 (Contingency processes), MAP-4.1 (Map third-party
  legal risks)
