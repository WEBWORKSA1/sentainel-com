---
slug: us-il-aivia-s10-sharing-limited
regulation_id: us-il-aivia
article_number: "820 ILCS 42/10"
parent_article: null
obligation_type: PROHIBIT
status: in_force
effective_date: 2020-01-01
actors:
  - EMPLOYER
  - AI_DEPLOYER
  - SERVICE_PROVIDER
required_action: |
  An employer may not share applicant videos, except with
  persons whose expertise or technology is necessary in order to
  evaluate an applicant's fitness for a position.
plain_language_summary: |
  Illinois employers cannot share applicant video interviews
  with anyone whose expertise or technology isn't needed to
  evaluate the applicant. The "expertise or technology
  necessary" carve-out is narrow: HR reviewers, the AI vendor's
  technology, hiring managers who will make the decision —
  yes. Marketing teams, executives outside the hiring process,
  external auditors, training datasets, model improvement
  feedback loops — typically no without separate authorization.

  Operational implication: vendor contracts must restrict
  downstream use of applicant videos. Training data uses
  (where the video is used to improve the model for future
  applicants) require explicit applicant authorization beyond
  the AIVIA s. 5 consent.
trigger_conditions:
  - condition: Employer has applicant video in possession or control
    formal: |
      Includes videos hosted by third-party vendors on the
      employer's behalf. Vendor possession of customer data on
      customer's instruction is treated as customer possession
      for AIVIA scope.
  - condition: Sharing event
    formal: |
      Any transmission, copying, access grant, or disclosure of
      the video — including making it available via dashboard
      access to additional internal users beyond those
      necessary for evaluation.
evidence_required:
  - Access control documentation per video (who can view)
  - Vendor data processing agreements restricting downstream use
  - Internal access policy specifying who is authorized
  - Access log per video showing each access event
  - Training data exclusion documentation (where vendor would otherwise use video for model improvement)
  - Quarterly access audit reports
exceptions:
  - exception: Persons with necessary expertise
    formal: |
      HR professionals, hiring managers, interviewers,
      compliance reviewers, legal counsel where evaluating
      AI fitness for the position.
  - exception: Persons with necessary technology
    formal: |
      The AI vendor processing the video; cloud infrastructure
      providers hosting the video; cybersecurity tools scanning
      the video for malware. Read narrowly — generic SaaS
      vendors are not within this exception unless their
      technology is part of the evaluation.
deadline:
  type: continuous
  value: ongoing
penalty_for_violation: |
  Same enforcement framework as s. 5 — IDHR pathway most likely.
  Stacking risk: if shared with parties who then use the video
  for biometric analysis without separate BIPA consent, BIPA
  exposure attaches.
ai_specific_application: |
  Sentainel:

  1. Vendor due diligence module audits video-interview AI
     vendor contracts for downstream-use restrictions
  2. Access control review identifies non-evaluation users with
     access to applicant videos
  3. Training data audit identifies vendor model-improvement
     pipelines that may use customer applicant videos
  4. Generates DPA/MSA amendment language restricting downstream
     use to evaluation-only purposes
  5. Quarterly access audit report for evidence repository
cross_references:
  - regulation: us-il-aivia
    article: us-il-aivia-s5-pre-interview-notice-consent
    relationship: companion
    notes: |
      Pre-interview consent (s. 5) and sharing limitation (s. 10)
      together form AIVIA's procedural backbone. Together they
      implement the implicit principle that applicant videos
      are sensitive data with limited authorized use.
  - regulation: ca-qc-law-25
    article: ca-qc-law-25-s12-purpose-limitation
    relationship: companion
    notes: |
      Quebec Law 25's purpose-limitation principle is the
      conceptual cousin: data collected for a purpose may not
      be used for other purposes without consent.
confidence_score: 0.94
confidence_tier: high
ambiguity_notes: |
  - The "expertise or technology necessary" standard is fact-
    specific. Sentainel default: any access by a person whose
    role does not directly involve evaluation of THIS applicant
    for THIS position should be restricted.
  - Model improvement / training data use is the highest-risk
    ambiguity. Vendor contracts typically include broad data
    use rights that would violate AIVIA's sharing limitation
    if exercised. Sentainel customers should audit DPAs and
    seek narrow drafting.
  - Whether DELETED videos can be "shared" via residual training
    data is unsettled. Best practice: ensure training data does
    not contain identifiable applicant content.
sentainel_value_prop: |
  Vendor DPA audit is a high-confidence finding generator for
  Sentainel. Most enterprise video-interview AI contracts
  include broad data use rights that, if exercised, violate
  AIVIA. Sentainel produces the amendment language and tracks
  vendor sign-off.
extraction_method: claude-opus-4-7-2026-05-13 + direct statute review
extracted_at: 2026-05-13
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---

# 820 ILCS 42/10 — Sharing Limitation

## Statutory Anchor

> Sec. 10. Sharing videos limited. An employer may not share applicant videos, except with persons whose expertise or technology is necessary in order to evaluate an applicant's fitness for a position.

— **820 ILCS 42/10**, Public Act 101-260, eff. January 1, 2020.

## Why This Obligation Matters

This is the AIVIA provision most often violated unintentionally — typically through vendor contracts that include broad data use rights for "service improvement" or "training data" purposes. Most enterprise users of video-interview AI have not audited their vendor DPAs against AIVIA's narrow exception.

The exception is "persons whose expertise or technology is necessary" — a strict-necessity standard. Vendors arguing that "model improvement is necessary to maintain service quality" do not fit this standard, because the necessity must relate to evaluating THIS applicant for THIS position.

## Practical Audit Approach

Sentainel performs three audits per customer:

1. **Internal access audit**: who in the customer's HRIS has access to applicant video files?
2. **Vendor contract audit**: what downstream uses do vendor DPAs permit?
3. **Training data audit**: does the vendor use customer videos to train models for other customers?

The first finds curable access issues. The second produces DPA amendment recommendations. The third reveals whether the customer needs to switch vendors or negotiate explicit carve-outs.
