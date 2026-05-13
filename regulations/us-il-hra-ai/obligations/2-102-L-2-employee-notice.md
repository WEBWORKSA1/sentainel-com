---
slug: us-il-hra-ai-2-102-l-2-employee-notice
regulation_id: us-il-hra-ai
article_number: "775 ILCS 5/2-102(L)(2)"
parent_article: null
obligation_type: DISCLOSE
status: in_force
effective_date: 2026-01-01
actors:
  - EMPLOYER
  - AI_DEPLOYER
required_action: |
  It is a civil rights violation for an employer to fail to
  provide notice to an employee that the employer is using
  artificial intelligence for the purposes described in
  paragraph (1).

  The Department [IDHR] shall adopt any rules necessary for the
  implementation and enforcement of this subdivision, including,
  but not limited to, rules on the circumstances and conditions
  that require notice, the time period for providing notice, and
  the means for providing notice.
plain_language_summary: |
  Illinois employers must tell employees when AI is being used to
  make decisions about them in any of the covered categories:
  recruitment, hiring, promotion, renewal, training, discharge,
  discipline, tenure, or terms/conditions of employment.

  The exact format and timing of the notice has NOT been spelled
  out by the statute — IDHR is rule-making this now. Until IDHR
  publishes final rules, employers should adopt reasonable
  practices: written notice, in advance of the AI-driven
  decision, in plain language, describing the AI system and its
  role.

  Failure to provide notice is itself a civil rights violation,
  separate from any underlying discrimination claim. An employer
  could face liability for the notice failure even if the AI did
  not produce discriminatory outcomes.
trigger_conditions:
  - condition: Employer scope
    formal: |
      Same as 2-102(L)(1) — 15+ employees in Illinois threshold.
  - condition: Use of AI in covered employment decision
    formal: |
      Same scope as 2-102(L)(1). Critical: the notice duty
      attaches to "use" of AI, not to whether the AI produced
      discriminatory output. Compliant AI still requires notice.
  - condition: Employee in scope of decision
    formal: |
      "Notice to an employee" — the employee being subjected to
      the AI-influenced decision. Includes job applicants per
      statutory context (recruitment and hiring expressly named).
evidence_required:
  - Notice template(s) used (per deployment, per decision type)
  - Notice delivery log per employee/applicant per AI deployment
  - Acknowledgment receipts where used (not statutorily required but evidentiary best practice)
  - Documentation of notice timing (pre-decision is safest interpretation)
  - Translation/accessibility documentation if employee population requires non-English notice
  - Updated notice versions following IDHR rule publication
exceptions: []
deadline:
  type: relative
  value: "Before or contemporaneous with AI-influenced decision (statute is silent; conservative reading is pre-decision)"
penalty_for_violation: |
  Civil rights violation. Same remedies framework as 2-102(L)(1).
  Notice failures are likely to generate per-violation exposure
  because each employee or applicant who was not properly
  notified is potentially a separate violation. High-volume
  hiring systems face multiplied exposure.

  Practitioner consensus: IDHR is likely to treat systemic
  notice failure (no template, no delivery process) as more
  serious than isolated process failures (template exists but
  one applicant missed).
ai_specific_application: |
  This is a high-volume, automatable obligation. Sentainel's role:

  1. Documentation layer generates notice templates per
     deployment, drafted to satisfy proposed IDHR rule language
     and revised on publication of finals
  2. Integration layer hooks into customer ATS/HRIS to deliver
     notice at the right moment in the decision flow
  3. Evidence repository captures delivery logs with timestamps
  4. Audit trail demonstrates notice was issued before the
     AI-influenced decision
  5. Multi-language template library for diverse workforces

  Pricing: this is the kind of obligation that justifies
  Operations tier ($2,499/mo) for a single Illinois deployment
  or Continuous tier ($4,999/mo) when paired with disparate-impact
  monitoring.
cross_references:
  - regulation: us-tx-traiga
    article: us-tx-traiga-552-051-gov-disclosure
    relationship: companion
    notes: |
      Functionally analogous — both require disclosure of AI use
      to affected individuals. TRAIGA applies to government
      agencies + consumers; HRA AI to employers + employees.
      Sentainel notice templates differ slightly per jurisdiction
      but share the same architectural pattern.
  - regulation: ca-on-bill-149
    article: ca-on-bill-149-esa-8-4
    relationship: companion
    notes: |
      Ontario Bill 149 requires AI disclosure in job postings;
      HRA AI requires notice to employees more broadly. Together
      they form the "AI hiring disclosure" sub-vertical Sentainel
      anchors around.
  - regulation: us-il-aivia
    article: us-il-aivia-s5-disclosure
    relationship: sectoral_overlay
    notes: |
      AIVIA notice (for video-interview AI specifically) is more
      detailed and pre-dates HRA AI notice. Employers using
      video-interview AI must satisfy both — AIVIA's three-part
      notice/consent procedure substantially covers HRA AI's
      generic notice requirement for that decision type, but
      generic AI hiring (e.g., resume screeners without video)
      requires the new HRA AI notice.
confidence_score: 0.93
confidence_tier: high
ambiguity_notes: |
  - The biggest open question is WHAT THE NOTICE MUST SAY. The
    statute is silent. IDHR's proposed rules (issued late 2025)
    suggest content requirements including: (a) description of
    the AI system, (b) categories of input data used,
    (c) decisions made or informed by the AI, (d) the
    employee's right to file a charge with IDHR. Final rules
    pending.
  - TIMING: statute is silent. Conservative practice is
    pre-decision notice. Proposed IDHR rules suggest "before or
    at the time" the AI is used. Sentainel default: deliver
    notice before AI is used in the decision flow.
  - FORM: statute is silent. Likely acceptable: posting on
    employee portal, inclusion in employee handbook, separate
    written notice. Email-only may be insufficient if employee
    population includes non-English-primary speakers.
  - APPLICANT NOTICE: as in 2-102(L)(1), the term "employee" is
    used but recruitment and hiring are expressly within scope,
    so applicants must be notified. Form may differ from
    employee notice (typically a step in the application flow).
  - INCUMBENT EMPLOYEE NOTICE FOR PRE-EXISTING AI: if AI was
    deployed before January 1, 2026, must existing employees
    receive retroactive notice? Conservative reading: yes, on or
    before first AI-influenced decision after January 1, 2026.
    IDHR rulemaking will clarify.
sentainel_value_prop: |
  Notice automation is one of the highest-leverage features
  Sentainel delivers. Drafting jurisdiction-specific notices,
  delivering them at the right point in the decision flow,
  logging delivery, and updating templates on rule changes is
  exactly the kind of repetitive compliance work that customers
  cannot scale internally. Sentainel does it across Illinois,
  Ontario, and Texas in a single configuration.
extraction_method: claude-opus-4-7-2026-05-13 + direct statute review
extracted_at: 2026-05-13
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---

# 775 ILCS 5/2-102(L)(2) — Notice to Employees

## Statutory Anchor

> (2) For an employer to fail to provide notice to an employee that the employer is using artificial intelligence for the purposes described in paragraph (1).

— **775 ILCS 5/2-102(L)(2)**, as added by Public Act 103-804, eff. January 1, 2026.

## Why This Obligation Matters

This is a standalone civil rights violation — failure to notify is itself the violation, regardless of whether the underlying AI produced discriminatory outcomes. An employer that runs a perfectly fair AI hiring tool but fails to disclose AI use to applicants still has Illinois civil rights exposure.

This makes notice the most easily-prevented and most-frequently-cited HRA AI violation. Sentainel customers should expect IDHR's first wave of enforcement actions in 2026–2027 to focus heavily on notice failures because they are easy to identify and prove.

## Sentainel Implementation Approach

See `ai_specific_application` in frontmatter.

## Open Interpretive Questions

The statute delegates the operational details (content, form, timing) entirely to IDHR rulemaking. Until final rules publish, Sentainel-generated notices target the proposed-rule language and refresh on publication.

## Related NIST Controls

Heavily mapped to MEASURE-2.8 (transparency), MAP-2.2 (knowledge limits / explainability inputs), and GOVERN-1.1 (legal & regulatory requirements managed).
