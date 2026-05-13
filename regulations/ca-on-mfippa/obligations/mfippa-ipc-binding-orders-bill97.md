---
slug: ca-on-mfippa-ipc-binding-orders-bill97
regulation_id: ca-on-mfippa
article_number: "MFIPPA s. 35.1 (as amended by Bill 97, Sch. 11)"
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: enacted_pending_force
effective_date: 2027-01-01
actors:
  - GOVERNMENT_AGENCY
required_action: |
  Municipal institutions shall maintain information practices that
  comply with MFIPPA and shall cooperate with the Information and
  Privacy Commissioner of Ontario in reviews of those practices.
  Where the IPC initiates a review, the institution shall produce
  records, policies, procedures, and other documentation as required
  by the Commissioner. The IPC has express authority to issue binding
  orders requiring corrective action and to enforce those orders.
plain_language_summary: |
  Bill 97 transforms the IPC from an advisory body (relative to
  municipalities) into a regulator with teeth. Effective January 1,
  2027, the IPC can:

  1. Initiate reviews of municipal information practices
  2. Compel production of records and documentation
  3. Issue BINDING orders for corrective action
  4. Enforce non-compliance with binding orders through the courts
  5. Receive whistleblower reports from municipal staff
  6. Publish reports identifying non-compliant institutions

  This brings MFIPPA institutions into the same regulatory posture
  as provincial institutions under FIPPA (in force since July 2025).
trigger_conditions:
  - condition: IPC-initiated review
    formal: |
      The IPC may initiate a review of an institution's information
      practices: (a) upon receiving a complaint, (b) upon receiving
      a breach notification, (c) upon a whistleblower report, or
      (d) on the Commissioner's own motion where there is reasonable
      basis.
  - condition: IPC binding order issued
    formal: |
      Following a review, the IPC may issue an order requiring
      corrective action: process changes, technical safeguards,
      policy updates, staff training, third-party audits, or
      specific remediation of identified deficiencies.
evidence_required:
  - Information practice documentation (PIAs, breach logs, retention
    schedules, access logs, training records)
  - Cooperation with IPC inquiries
  - Implementation evidence for any binding orders issued
  - Audit trail demonstrating order compliance
  - For AI systems: complete obligation evidence per Sentainel's
    full Ontario AI compliance package
deadline:
  type: relative
  value: As specified in each binding order; typically 30-180 days
exceptions: []
penalty_for_violation: |
  - Non-compliance with binding orders enforceable through Ontario
    Superior Court
  - Public IPC reports identifying non-compliant institutions
  - Whistleblower-driven scrutiny
  - Reputational damage to elected officials and senior staff
  - Parallel Code, PHIPA, and civil exposure where AI-related

  Practical reality: most municipalities will comply rather than
  litigate. The cost of compliance with a binding order is typically
  10-50x the cost of having complied proactively.
cross_references:
  - ca-on-mfippa-pia-mandatory-bill97
  - ca-on-mfippa-breach-reporting-bill97
  - ca-on-mfippa-whistleblower-bill97
  - ca-on-fippa-ipc-binding-orders
confidence_score: 0.87
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + manual review
ambiguity_notes: |
  - The scope of "information practices" subject to review is
    broadly drawn but specifics will develop through IPC casework
  - Cost recovery (whether IPC can recover review costs from
    non-compliant institutions) is unclear in Bill 97 text
  - Coordination with overlapping reviews under EDSTA (when those
    regulations land) is unspecified
sentainel_value_prop: |
  Sentainel's audit log is purpose-built to satisfy this obligation.
  Every action — PIA completion, breach assessment, vendor review,
  AI model change, training delivery, policy update — is hash-chained
  and timestamped. When the IPC initiates a review, customers export
  the relevant period's audit trail in IPC-defensible format.

  This is the "in case of audit, push button" feature that converts
  a Sentainel subscription from cost center to insurance.
extracted_at: 2026-05-13T05:40:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
