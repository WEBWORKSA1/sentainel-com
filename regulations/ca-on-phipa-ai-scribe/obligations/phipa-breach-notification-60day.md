---
slug: ca-on-phipa-breach-notification-60day
regulation_id: ca-on-phipa-ai-scribe
article_number: "O. Reg. 329/04 s. 12.1 + PHIPA s. 12(2)"
parent_article: null
obligation_type: NOTIFY_AUTHORITY
status: in_force
effective_date: 2018-10-01
proclamation_pending: false
actors:
  - HEALTHCARE_PROVIDER
  - AI_DEPLOYER
  - GOVERNMENT_AGENCY
required_action: |
  Notify the Information and Privacy Commissioner of Ontario
  and affected individuals at the first reasonable opportunity
  upon awareness of a privacy breach involving personal health
  information, and in any event within 60 days of awareness.
  The notification clock starts at custodian awareness and does
  NOT pause for vendor investigation, third-party forensics, or
  weekend timing.
plain_language_summary: |
  O. Reg. 329/04 s. 12.1 imposes a strict 60-day clock for
  breach notification to the IPC. PHIPA s. 12(2) requires
  notification of affected individuals at the first reasonable
  opportunity.

  Critical operational facts (from Decision 298, upheld in
  2025 ONSC 5208):
  - The clock runs from custodian AWARENESS, not from
    confirmation of harm or completion of forensics
  - Vendor delays do NOT pause the clock
  - Email account compromise for even one hour triggers the
    duty to notify
  - Both unauthorized USE and unauthorized DISCLOSURE are
    notifiable; you don't need to prove data exfiltration

  For AI scribe contexts, breach triggers include:
  - Vendor system compromise
  - Unauthorized AI joining a meeting (per Otter.ai
    incident)
  - Misrouting of AI-generated transcripts
  - Unauthorized vendor model training using PHI
  - Subcontractor incidents
trigger_conditions:
  - condition: Custodian awareness of privacy breach
    formal: |
      PHIPA s. 12(2): "The custodian shall notify the
      individual at the first reasonable opportunity..."
      O. Reg. 329/04 s. 12.1: 60-day IPC notification window
      from custodian awareness.
  - condition: Theft, loss, or unauthorized use/disclosure of PHI
    formal: |
      Includes unauthorized access without exfiltration
      (per Decision 298).
evidence_required:
  - Breach intake log (incident detected, classified, escalated)
  - Awareness-to-notification timeline showing 60-day
    compliance
  - IPC notification letter and acknowledgment
  - Affected individual notification records
  - Vendor incident reports incorporated into breach record
  - Root-cause analysis and remediation plan
  - Post-incident review and policy/procedure updates
deadline_type: relative_event
deadline_value: "Within 60 days of custodian awareness for IPC notification; at first reasonable opportunity for individual notification"
penalty_for_violation: |
  - AMP under s. 61.1 (late or missing notification is
    AMP-eligible)
  - Aggravating factor in any subsequent IPC enforcement
  - Civil action exposure under s. 65 enhanced by notification
    failure
  - Public IPC decision creating reputational exposure
ai_specific_application: |
  Sentainel implementation:

  1. AI-aware breach intake checklist with AI-specific triggers
     (vendor compromise, unauthorized AI access, transcript
     misrouting, model training violation)
  2. 60-day countdown timer from awareness event
  3. Vendor SLA monitoring with auto-escalation for delayed
     vendor reports
  4. IPC notification template (form, recipients, contents)
  5. Affected individual notification template with mass-mail
     workflow
  6. Audit log integration: every breach event timestamped
     and chained
  7. Post-incident review template with remediation tracking

  Maps to NIST AI RMF GOVERN-4.3 (Testing and incident
  sharing), MANAGE-2.3 (Superseded systems response),
  MANAGE-4.1 (Post-deployment monitoring), MANAGE-4.3
  (Incidents communicated).
sentainel_value_prop: |
  "When a vendor calls you on day 45, you've already started the
  IPC notification process. No clock surprises. No vendor-induced
  AMPs."
confidence_score: 0.95
confidence_tier: high
ambiguity_notes: |
  - "First reasonable opportunity" for individual notification
    is fact-specific; practitioner default is within 30 days
    of awareness unless investigation requires more time
  - Whether ransomware events without exfiltration must be
    notified is settled by Decision 298 (yes, unauthorized
    access alone triggers)
  - Multi-jurisdictional breaches (Ontario PHIPA + Quebec Law
    25 + federal PIPEDA) require coordinated notification
    with strictest-clock alignment
extraction_method: claude-opus-4-7-2026-05-13 + PHIPA + O. Reg. 329/04 + Decision 298 + Hospital for Sick Children v. Ontario (IPC) 2025 ONSC 5208
extracted_at: 2026-05-13
reviewed_at: 2026-05-13
reviewed_by: web@sentainel.com
---

# PHIPA — 60-Day Breach Notification to IPC

## Statutory anchor

> O. Reg. 329/04 s. 12.1: A health information custodian shall
> notify the Commissioner in writing of a contravention of
> [PHIPA Part IV] within 60 days after becoming aware of the
> contravention.

> PHIPA s. 12(2): A health information custodian shall notify
> the individual to whom personal health information relates
> at the first reasonable opportunity if the information is
> stolen, lost, or used or disclosed without authority.

## Case law anchor

Decision 298 (Hospital for Sick Children, upheld in
2025 ONSC 5208) established that:
- Email account compromise for even one hour triggers
  notification
- Both unauthorized use AND unauthorized disclosure are
  notifiable
- Evidence of data exfiltration is NOT required
- The duty arises at custodian awareness, not confirmation
  of harm

## Cross-references

- Companion: FIPPA Bill 194 s. 40.1 RROSH breach notification
  (different threshold, different statute, but same custodian
  may face both)
- Parallel: Quebec Law 25 s. 3.5 confidentiality incident
  notification (no fixed clock but "promptly")
- Parallel: PIPEDA breach notification (federal, where
  applicable)
- Anchor: NIST AI RMF MANAGE-2.3, MANAGE-4.3, GOVERN-4.3
