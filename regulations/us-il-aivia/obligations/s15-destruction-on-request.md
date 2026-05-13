---
slug: us-il-aivia-s15-destruction-on-request
regulation_id: us-il-aivia
article_number: "820 ILCS 42/15"
parent_article: null
obligation_type: GRANT_RIGHT
status: in_force
effective_date: 2020-01-01
actors:
  - EMPLOYER
  - AI_DEPLOYER
  - SERVICE_PROVIDER
required_action: |
  Sec. 15. Destruction of videos. Upon request from the
  applicant, employers, within 30 days after receipt of the
  request, must delete an applicant's interviews and instruct
  any other persons who received copies of the applicant video
  interviews to also delete the videos, including all
  electronically generated backup copies. Any other such person
  shall comply with the employer's instructions.
plain_language_summary: |
  Applicants who interviewed via AI-analyzed video have the right
  to demand deletion of their video. The employer must:

  1. Delete the video within 30 days of the request
  2. Instruct anyone else who received copies (vendors,
     internal teams, third-party reviewers) to also delete
  3. Ensure backup copies are also deleted

  Third parties who received the videos are obligated by statute
  to comply with the employer's deletion instruction.

  This is a data-subject right of erasure scoped to applicant
  video interviews. Operationally similar to GDPR Article 17
  or Quebec Law 25's right of erasure, but narrower.
trigger_conditions:
  - condition: Applicant deletion request
    formal: |
      The request must come from the applicant — not from a
      third party (counsel, advocate, regulator) without
      applicant authorization. Form of request not specified;
      written request is best practice.
  - condition: Employer (or its vendor) holds applicant video
    formal: |
      Triggers regardless of whether the AI analysis has been
      completed. Even after a hire/no-hire decision, the
      30-day clock starts on request receipt.
evidence_required:
  - Deletion request intake process documentation
  - Per-request log with timestamp of receipt, deletion target date, completion timestamp
  - Vendor deletion instruction record (forwarded request to all third parties with video copies)
  - Vendor deletion confirmation (return-receipt from each third party)
  - Backup deletion verification (cloud storage backup, tape backup, etc.)
  - Quarterly audit confirming no orphaned copies exist for previously-deleted videos
exceptions: []
deadline:
  type: relative
  value: "30 days from receipt of applicant request"
penalty_for_violation: |
  Civil rights remedy via IHRA pathway. Per-request exposure —
  each violation of the 30-day deadline is a separate offense.
  High-volume employers with weak intake processes face
  systemic exposure.

  Cumulative risk with BIPA: if the video contained biometric
  data, BIPA's destruction requirements also attach (740 ILCS
  14/15(a) — destruction within 3 years of last interaction).
  BIPA private right of action turns this into per-applicant
  statutory damages.
ai_specific_application: |
  Sentainel:

  1. Deletion request intake portal hooks into customer ATS so
     applicants can self-serve
  2. 30-day deadline tracker with automated reminders
  3. Vendor deletion orchestration — Sentainel sends the
     deletion instruction to all third parties identified in
     vendor inventory
  4. Vendor confirmation tracking — captures return receipts
  5. Backup verification workflow with periodic spot-checks
  6. Audit log for evidence repository
cross_references:
  - regulation: ca-qc-law-25
    article: ca-qc-law-25-s28-1-deindexation
    relationship: companion
    notes: |
      Quebec's de-indexation/erasure right is a functional analog.
      Different scope and trigger, but same operational pattern
      (rights request intake, third-party propagation, deletion
      verification).
  - regulation: us-il-bipa
    article: us-il-bipa-s15-destruction-policy
    relationship: companion
    notes: |
      BIPA s. 15(a) requires a written retention/destruction
      policy for biometric data; AIVIA s. 15 requires per-request
      destruction. The two layer: BIPA mandates the policy
      framework, AIVIA mandates the per-applicant response.
confidence_score: 0.95
confidence_tier: high
ambiguity_notes: |
  - The 30-day clock starts on "receipt" — what counts as
    receipt for emailed requests to a generic HR inbox is
    unsettled. Sentainel default: timestamp of first system
    log of the email as receipt date.
  - "Electronically generated backup copies" includes
    incremental backups, snapshots, and disaster-recovery
    copies. Operationally, customers often cannot delete from
    individual backup snapshots without compromising the
    backup. Best practice: document the deletion request and
    confirm that the next full backup cycle will not include
    the deleted video.
  - Whether the destruction obligation extends to MODEL
    OUTPUTS derived from the video (transcripts, scores,
    embeddings) is undecided. Conservative reading: derived
    artifacts containing identifiable information about the
    applicant are within scope.
  - Third-party non-compliance: AIVIA places the obligation on
    third parties to comply with the employer's instruction,
    but does not specify a remedy if they fail. The employer
    likely retains liability and must select vendors that
    contractually commit to deletion.
sentainel_value_prop: |
  Deletion-request orchestration is operationally complex when
  multiple vendors and backup systems are involved. Sentainel
  centralizes the workflow, provides automated reminders, and
  produces the audit trail. Without Sentainel, customers
  typically rely on ad-hoc email chains that fail to capture
  vendor compliance evidence.
extraction_method: claude-opus-4-7-2026-05-13 + direct statute review
extracted_at: 2026-05-13
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---

# 820 ILCS 42/15 — Destruction of Videos on Applicant Request

## Statutory Anchor

> Sec. 15. Destruction of videos. Upon request from the applicant, employers, within 30 days after receipt of the request, must delete an applicant's interviews and instruct any other persons who received copies of the applicant video interviews to also delete the videos, including all electronically generated backup copies. Any other such person shall comply with the employer's instructions.

— **820 ILCS 42/15**, Public Act 101-260, eff. January 1, 2020.

## Why This Obligation Matters

This is the data-subject right baked into AIVIA. It is functionally analogous to GDPR Article 17, CCPA's right to delete, and Quebec Law 25's right of erasure — but uniquely applies to applicant video interviews specifically.

Most enterprise users of video-interview AI lack a clean operational answer to deletion requests. Vendor architectures often retain videos indefinitely for model training; customer ATS systems often retain applicant records for years; backup tapes retain everything for 7+ years. Cleanly executing the 30-day deletion across this stack is operationally difficult.

## Sentainel as the Operational Answer

This is precisely where Sentainel's platform value compounds: deletion-request orchestration is repetitive, multi-system, and requires audit trail. Manual execution scales poorly. Sentainel automates and documents.

## Practical Compliance Posture

1. **Intake portal**: applicant-facing form that creates a tracked deletion ticket
2. **30-day SLA tracker**: automated reminders at day 7, day 21, day 28
3. **Vendor orchestration**: deletion instruction sent to every third party in the customer's video-handling vendor list
4. **Confirmation collection**: vendors return deletion receipts; ticket closes only when all confirmations received
5. **Backup attestation**: written confirmation that next full backup cycle excludes the deleted video
6. **Evidence repository**: complete ticket history preserved for IDHR inquiry
