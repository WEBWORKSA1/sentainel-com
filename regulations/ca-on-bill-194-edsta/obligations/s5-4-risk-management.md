---
slug: ca-on-bill-194-edsta-s5-4-risk-management
regulation_id: ca-on-bill-194-edsta
article_number: "EDSTA s. 5(4)"
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: enacted_not_in_force
effective_date: null
proclamation_pending: true
actors:
  - GOVERNMENT_AGENCY
  - PUBLIC_BODY
  - MUNICIPAL_INSTITUTION
required_action: |
  A public sector entity to which section 5 applies shall take
  such steps as may be prescribed to manage risks associated with
  the use of the artificial intelligence system.
plain_language_summary: |
  This obligation requires Ontario public sector entities to
  follow prescribed risk management steps for their in-scope AI
  uses. The "such steps as may be prescribed" formulation defers
  the entire operational content to s. 7(e) regulations, which
  may include reporting and record-keeping requirements.

  Until regulations issue, the obligation is dormant. Sentainel
  positioning: build the customer's risk management process now
  on NIST AI RMF MANAGE function lines, which is the practitioner-
  recognized baseline.
trigger_conditions:
  - condition: Entity prescribed under section 5
    formal: EDSTA s. 5(1) standard trigger
  - condition: Regulations under s. 7(e) prescribing steps
    formal: |
      EDSTA s. 7(e): regulations may prescribe "steps to be taken
      for the purposes of subsection 5(4), including reporting
      and record-keeping."
evidence_required:
  - Documented risk management procedure tied to AI inventory
  - Per-system risk assessments at deployment and at refresh
    cadence
  - Risk register with assigned owners, mitigation actions,
    and status
  - Reporting outputs (form and recipient per regulation)
  - Record-keeping audit trail
exceptions:
  - exception: Regulations may exempt or tier obligations
    formal: |
      No statutory exemptions. Regulations are expected to tier
      requirements by AI consequentiality and population scope.
deadline_type: continuous
deadline_value: "Upon proclamation + ongoing operational cadence"
penalty_for_violation: |
  No direct statutory penalty (EDSTA s. 12). Risk management
  failure can cascade into:
  - Code complaints if mitigation gaps lead to discriminatory
    outcomes
  - FIPPA s. 49.0.1 IPC investigation if risk failures touch
    personal information practices
  - Procurement / contractual exposure where flow-down terms
    require risk management
ai_specific_application: |
  Sentainel's risk management module for Ontario customers:

  1. Standardized risk assessment template aligned with NIST AI
     RMF MAP-5.1, MAP-5.2 (impact and probability)
  2. Risk register integrated with the customer's GRC platform
     or standalone Sentainel module
  3. Mitigation action tracking with owner and due date
  4. Quarterly risk review cycle
  5. Pre-built reporting templates for likely regulatory recipients
     (Minister of Public and Business Service Delivery and
     Procurement; entity-level executive)
  6. Audit-ready record-keeping via the append-only audit log
     (see `etl/migrations/0006_evidence_audit.sql`)

  Risk taxonomy aligned with NIST AI RMF and Trustworthy AI
  Framework categories: validity, safety, security, accountability,
  explainability, privacy, fairness.
sentainel_value_prop: |
  "Your AI risk register is live, monitored, and audit-ready before
  the regulations even tell you what shape to take."
confidence_score: 0.90
confidence_tier: high
ambiguity_notes: |
  - "Steps as may be prescribed" is the broadest possible
    delegation — could range from minimal to extensive
  - Reporting recipients (Minister? IPC? Both?) are undefined
  - Reporting cadence is undefined — likely annual + on
    incident
  - Record-keeping retention is undefined — assume 7 years
    aligned with FIPPA standards until regulations specify
  - Whether risk management documentation is public is undefined
extraction_method: claude-opus-4-7-2026-05-13 + ola.org primary source
extracted_at: 2026-05-13
reviewed_at: 2026-05-13
reviewed_by: web@sentainel.com
---

# EDSTA s. 5(4) — Take Steps to Manage Risks

## Statutory text

> A public sector entity to which this section applies shall take
> such steps as may be prescribed to manage risks associated with
> the use of the artificial intelligence system.

## Operational read

This is a placeholder obligation pending regulation. The statute
gives the LGIC essentially unlimited authority to specify what
"steps" mean under s. 7(e) — including the catch-all "reporting
and record-keeping."

Sentainel positions risk management as the operational expression
of the accountability framework (s. 5(3)). One framework, one risk
process, one record-keeping system.

## Cross-references

- Parent: EDSTA s. 5(3) accountability framework
- Anchor: NIST AI RMF MANAGE function (MANAGE-1.3 risk-informed
  decisions, MANAGE-2.2 mechanisms sustain value, MANAGE-4.1
  post-deployment monitoring, MANAGE-4.3 incidents communicated)
- Supporting: NIST AI RMF MAP-5.1, MAP-5.2 (likelihood and
  magnitude, risk assessment practices)
- Parallel: FIPPA Bill 194 Sched. 2 mandatory PIA (Sched. 2 s.
  38(3)) — risk steps in para. 9 of the PIA feed risk management
