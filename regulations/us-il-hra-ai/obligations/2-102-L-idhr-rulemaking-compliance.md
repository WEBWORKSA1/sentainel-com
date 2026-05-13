---
slug: us-il-hra-ai-2-102-l-idhr-rulemaking-compliance
regulation_id: us-il-hra-ai
article_number: "775 ILCS 5/2-102(L) (final paragraph)"
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: in_force
effective_date: 2026-01-01
actors:
  - EMPLOYER
  - AI_DEPLOYER
required_action: |
  The Department [IDHR] shall adopt any rules necessary for the
  implementation and enforcement of this subdivision, including,
  but not limited to, rules on the circumstances and conditions
  that require notice, the time period for providing notice, and
  the means for providing notice.

  Once promulgated, IDHR rules under this subdivision are
  binding on employers using AI in covered employment decisions.
plain_language_summary: |
  Illinois Department of Human Rights (IDHR) has the authority
  to write detailed rules implementing the AI law. As of May
  2026, those rules are pending — proposed rules issued in late
  2025 are in public comment digestion. Once IDHR finalizes,
  employers must update their AI compliance programs to track the
  rules.

  This is not a one-time obligation. It is a continuous monitoring
  duty: employers must track IDHR rulemaking activity and respond
  to new rules as they publish.

  Sentainel's regulatory monitoring is the operational answer to
  this duty.
trigger_conditions:
  - condition: Employer scope
    formal: Same as 2-102(L)(1) — 15+ employee threshold.
  - condition: Publication or amendment of IDHR rules under 775 ILCS 5/2-102(L)
    formal: |
      Any IDHR rule promulgated under the rulemaking authority
      granted in 2-102(L), including proposed rules issued for
      public comment that may signal final-rule language.
evidence_required:
  - Regulatory-monitoring program documentation (who tracks, what cadence)
  - Log of IDHR rulemaking notices received and reviewed
  - Compliance gap analysis for each new rule
  - Remediation plan and execution log
  - Updated policies, notices, and procedures reflecting current IDHR rules
  - Workforce communications about rule changes
exceptions: []
deadline:
  type: continuous
  value: ongoing
penalty_for_violation: |
  Failure to comply with binding IDHR rules constitutes a civil
  rights violation. Same penalty structure as direct statutory
  violations: cease-and-desist, compensatory damages,
  attorney's fees + potential $100K aggravated penalty.

  Practitioner consensus: IDHR will provide a transition period
  (likely 60–90 days) between rule publication and enforcement.
  Sentainel customers should monitor for this transition window.
ai_specific_application: |
  This is precisely the Sentainel value proposition expressed
  as a regulatory obligation. Sentainel:

  1. Monitors IDHR rulemaking activity continuously (regulatory
     watch service)
  2. Analyzes proposed and final rules for gap impact
  3. Updates notice templates, fairness-testing protocols, and
     documentation requirements within rules' transition windows
  4. Pushes alerts to customers when rule changes affect their
     deployments
  5. Maintains an audit trail of all rule changes the customer
     responded to

  Without Sentainel: customer would need a dedicated compliance
  analyst monitoring IDHR (and equivalent agencies in every
  jurisdiction), costing $80K–$120K/year in headcount alone.
cross_references:
  - regulation: us-tx-traiga
    article: us-tx-traiga-552-104-cure-period
    relationship: companion
    notes: |
      Both jurisdictions allow agency-driven rule evolution. TRAIGA
      has the Texas AI Council (Ch. 554) but rulemaking authority
      is limited; IDHR has plenary rulemaking authority under
      this provision. Illinois is more rules-driven.
  - regulation: ca-qc-law-25
    article: ca-qc-law-25-s3-2-privacy-governance
    relationship: companion
    notes: |
      Quebec CAI publishes guidance and rules continuously
      (e.g., 2024 anonymization regulation). Same compliance-
      monitoring discipline applies.
confidence_score: 0.90
confidence_tier: high
ambiguity_notes: |
  - The exact scope of IDHR rulemaking is undefined beyond the
    illustrative list (notice circumstances, timing, means).
    IDHR could theoretically expand rulemaking to cover
    fairness-testing methodology, documentation requirements,
    or vendor due diligence standards. Treat IDHR rulemaking
    authority as broad.
  - Whether IDHR rules will retroactively apply to AI deployed
    before the rule's effective date is unsettled. Conservative
    practice: assume they apply to ongoing use of any AI on or
    after the rule's effective date.
  - Federal preemption arguments are unlikely to succeed —
    civil rights laws are concurrent jurisdiction with Title VII
    and IDHR rules apply alongside federal frameworks.
sentainel_value_prop: |
  Continuous regulatory monitoring is core Sentainel infrastructure.
  This obligation maps directly to the moat: customers pay
  Sentainel precisely because tracking IDHR (and CAI and IPC and
  Texas AG) themselves is uneconomic. Mapped to the Continuous
  tier ($4,999/mo).
extraction_method: claude-opus-4-7-2026-05-13 + direct statute review
extracted_at: 2026-05-13
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---

# 775 ILCS 5/2-102(L) (final paragraph) — IDHR Rulemaking Compliance

## Statutory Anchor

> The Department shall adopt any rules necessary for the implementation and enforcement of this subdivision, including, but not limited to, rules on the circumstances and conditions that require notice, the time period for providing notice, and the means for providing notice.

— **775 ILCS 5/2-102(L)**, as added by Public Act 103-804, eff. January 1, 2026.

## Why This Obligation Matters

This isn't a duty in the same sense as the prohibition and notice clauses — it's a delegation of rulemaking authority to IDHR. But it creates a downstream continuous obligation on employers: they must track and respond to IDHR rules as they evolve.

For an in-scope Illinois employer, this is structurally identical to Quebec Law 25's open-ended CAI rulemaking authority and Texas TRAIGA's AG enforcement guidance issuance. The Sentainel platform's regulatory-watch capability is the only commercially viable answer to these obligations.

## Sentainel Implementation Approach

See `ai_specific_application` in frontmatter.

## Regulatory Tracking Cadence

- IDHR website monitoring: daily
- Illinois Register: weekly  
- IDHR guidance publications: continuous (alert-driven)
- Public comment period monitoring: per-rulemaking docket basis
- Federal-state alignment monitoring: monthly (EEOC + DOL guidance affecting state interpretations)
