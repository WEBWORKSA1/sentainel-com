---
slug: ca-on-phipa-pia-pre-deployment
regulation_id: ca-on-phipa-ai-scribe
article_number: "PHIPA s. 10 + IPC AI Scribe Guidance"
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: in_force
effective_date: 2026-01-28
proclamation_pending: false
actors:
  - HEALTHCARE_PROVIDER
  - AI_DEPLOYER
  - GOVERNMENT_AGENCY
required_action: |
  Complete a Privacy Impact Assessment (PIA) before introducing
  any AI system that handles personal health information, and
  update the PIA at material changes through the AI system's
  lifecycle.
plain_language_summary: |
  The IPC AI Scribe Guidance treats the PIA as the foundational
  artifact for every AI deployment touching PHI. Although PHIPA
  does not statutorily mandate the PIA, the IPC's expectation is
  that a HIC unable to produce a current PIA has not taken
  reasonable safeguards under s. 10.

  The PIA must cover purposes, data flows, lawful authority,
  vendor architecture, retention, risks, mitigation, and
  monitoring. It must be refreshed when the system or its
  context changes materially.

  The PIA is also a CPSO-recognized evidentiary artifact for
  physicians demonstrating they have considered AI risks before
  deploying.
trigger_conditions:
  - condition: Pre-deployment of any AI system processing PHI
    formal: |
      IPC AI Scribe Guidance: "Complete PIAs before introducing
      any AI system that handles personal information. Update
      them throughout the system lifecycle."
  - condition: Material change in AI system, vendor, or use
    formal: |
      Including model upgrades, scope expansion, new data
      categories, vendor consolidation, or material vendor
      contract changes.
evidence_required:
  - Written PIA document per AI system in scope
  - PIA approval sign-off (from governance committee)
  - Version history with date stamps
  - Refresh triggers and refresh records
  - Mitigation tracker linking PIA-identified risks to
    operational controls
  - Cross-reference to vendor due diligence (incorporated by
    reference)
deadline_type: continuous
deadline_value: "Before deployment + on material change + annual review"
penalty_for_violation: |
  IPC may treat absence of PIA as failure of s. 10 reasonable
  safeguards:
  - AMP up to $50K / $500K
  - IPC order requiring PIA completion or AI suspension
  - Aggravating factor in breach enforcement
  - Class action exposure for affected patients
ai_specific_application: |
  Sentainel PIA module:

  1. PHIPA-aligned PIA template specifically structured for
     AI deployments (10 sections: purpose, lawful authority,
     data flows, vendor architecture, retention, security,
     accuracy/bias, oversight, breach response, monitoring)
  2. Pre-filled vendor sections from vendor due diligence
     module
  3. Risk register integration: PIA-identified risks flow to
     risk register with owner and mitigation plan
  4. Refresh triggers: 12-month default + automatic flag on
     vendor contract change, system upgrade, or use expansion
  5. Audit-ready export package for IPC inspection

  Maps to NIST AI RMF MAP-1.1, MAP-1.5, MAP-3.1, MAP-3.2,
  MAP-5.1, MEASURE-2.7, MEASURE-2.10, MANAGE-1.3.
sentainel_value_prop: |
  "The PIA the IPC asks for is already in your audit log. We
  refresh it automatically when your vendor pushes an update."
confidence_score: 0.94
confidence_tier: high
ambiguity_notes: |
  - PIA depth tiered by AI consequentiality is practitioner
    consensus but not IPC-quantified
  - Whether PIA must be submitted to IPC (vs. retained internally
    and produced on request) is not specified; default is
    retained-and-available
  - Cross-jurisdictional reach: a US-hosted vendor processing
    Ontario PHI requires PIA coverage of cross-border transfer
extraction_method: claude-opus-4-7-2026-05-13 + IPC AI Scribe Guidance + McCarthy Tetrault commentary
extracted_at: 2026-05-13
reviewed_at: 2026-05-13
reviewed_by: web@sentainel.com
---

# PHIPA + AI Scribe — Pre-Deployment Privacy Impact Assessment

## Guidance anchor

> IPC AI Scribe Guidance (Jan 2026): "A PIA can assist
> custodians in identifying, analyzing, and addressing key
> privacy risks when developing, changing, procuring,
> implementing, or using technology or programs that involve
> PHI."

## Cross-references

- Anchor: PHIPA s. 10 reasonable safeguards
- Parallel: MFIPPA Bill 97 mandatory PIA (municipal entities)
- Parallel: FIPPA Bill 194 s. 38(3) mandatory PIA (provincial
  entities)
- Parallel: Quebec Law 25 s. 3.3 mandatory PIA
- Anchor: NIST AI RMF MAP function
