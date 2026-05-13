---
slug: ca-on-phipa-ai-governance-committee
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
  - GOVERNMENT_AGENCY    # for public-sector HICs (hospitals, Ministry, Ontario Health)
required_action: |
  Establish and maintain an AI governance committee with clear
  accountability for AI oversight, including authority to approve,
  pause, or decommission AI deployments, anchored in PHIPA
  accountability and integrated into existing governance
  structures.
plain_language_summary: |
  Per the IPC's AI Scribe Guidance, every Ontario health
  information custodian using AI must have a named governance
  body responsible for AI decisions. The body must have real
  authority — not advisory — to approve new AI deployments,
  pause systems showing problems, and decommission AI when
  necessary.

  For large HICs (hospitals, group practices, Ontario Health):
  this is a formal committee with documented charter.
  For solo physicians: the physician acting in that capacity
  with documented decision-making is acceptable.

  The committee anchors all other AI obligations — PIAs,
  vendor due diligence, consent workflows, breach response —
  through a single governance vehicle.
trigger_conditions:
  - condition: HIC uses or intends to use AI processing PHI
    formal: |
      PHIPA s. 10(1) requires HICs to take steps reasonable in
      the circumstances to ensure PHI is protected. The IPC
      AI Scribe Guidance interprets this to require a formal
      governance vehicle when AI is in play.
  - condition: AI scribe or other clinical AI deployment
    formal: |
      Triggered specifically at the procurement, deployment,
      or material modification of any AI handling PHI.
evidence_required:
  - Documented committee charter (or solo-physician self-
    designation memo) specifying authority to approve, pause,
    decommission
  - Member list with PHIPA roles (Privacy Officer, Clinical
    Lead, IT Security Lead, legal advisor)
  - Meeting cadence and minutes (quarterly minimum recommended)
  - Decision log (each AI system: approved / paused /
    decommissioned, with rationale)
  - Integration record showing alignment with existing
    governance (executive sign-off, board awareness)
  - Standard operating procedure for AI lifecycle decisions
deadline_type: continuous
deadline_value: "Before first AI deployment processing PHI + ongoing"
penalty_for_violation: |
  Failure to maintain a governance vehicle can support an IPC
  finding that the HIC has not taken reasonable safeguards
  under PHIPA s. 10. Consequences:
  - AMP up to $50K (individual) / $500K (organization) under
    s. 61.1
  - IPC order under PHIPA Part VI to implement governance
  - Reputational exposure via published IPC decision
  - In aggravated cases (egregious AI deployment without
    governance), criminal exposure under s. 72
ai_specific_application: |
  Sentainel implementation:

  1. Ship committee charter template configured to customer
     scale (solo / clinic / hospital)
  2. Pre-populated PHIPA role matrix with named individuals
  3. Decision log integrated into Sentainel audit trail
     (append-only via etl/migrations/0006_evidence_audit.sql)
  4. Quarterly meeting agenda templates with PHIPA-relevant
     review items
  5. Standing items: AI inventory review, vendor performance,
     incident summary, regulatory updates
  6. Annual charter review with sign-off workflow

  The same committee structure satisfies EDSTA s. 5(3)
  accountability framework requirements when both apply
  (hospitals).
sentainel_value_prop: |
  "Your AI governance committee meets the IPC's bar before its
  first meeting. Charter, members, cadence, decision log —
  all ready Day 1."
confidence_score: 0.93
confidence_tier: high
ambiguity_notes: |
  - IPC has not specified minimum committee size or composition;
    practitioner consensus calls for Privacy Officer + Clinical
    Lead + IT Security Lead + legal advisor
  - "Integrated into existing governance structures" leaves
    room for absorbing into existing privacy or risk
    committees; standalone is not strictly required
  - Solo-physician case is recognized by IPC but specific
    documentation expectations are not detailed
extraction_method: claude-opus-4-7-2026-05-13 + IPC AI Scribe Guidance (Jan 2026) + Norton Rose / BLG commentary
extracted_at: 2026-05-13
reviewed_at: 2026-05-13
reviewed_by: web@sentainel.com
---

# PHIPA + AI Scribe — AI Governance Committee

## Statutory and guidance anchor

> PHIPA s. 10(1): A health information custodian that has
> custody or control of personal health information shall
> take steps that are reasonable in the circumstances to
> ensure that the information is protected...

> IPC AI Scribe Guidance (Jan 2026): "Establish an AI
> governance committee and risk management framework
> anchored in PHIPA accountability. This should be integrated
> into existing governance structures and processes."

## Why this is the keystone

Every other PHIPA AI obligation routes through this committee.
PIAs are approved here. Vendors are vetted here. Patient
consent workflows are set here. Breach responses are
coordinated here. Without the committee, the IPC's compliance
checklist has no operational home.

## Cross-references

- Companion: All other PHIPA AI obligations
- Parallel: EDSTA s. 5(3) accountability framework (same
  governance vehicle)
- Parallel: NIST AI RMF GOVERN-1.1 through 6.2
- Parallel: CPSO Advice on AI (committee oversees physician
  use)
