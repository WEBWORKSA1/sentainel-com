---
slug: us-il-hra-ai-2-102-l-1-no-discrimination
regulation_id: us-il-hra-ai
article_number: "775 ILCS 5/2-102(L)(1) (first clause)"
parent_article: null
obligation_type: PROHIBIT
status: in_force
effective_date: 2026-01-01
actors:
  - EMPLOYER
  - AI_DEPLOYER
required_action: |
  It is a civil rights violation, with respect to recruitment,
  hiring, promotion, renewal of employment, selection for training
  or apprenticeship, discharge, discipline, tenure, or the terms,
  privileges, or conditions of employment, for an employer to use
  artificial intelligence that has the effect of subjecting
  employees to discrimination on the basis of protected classes
  under this Article.

  Protected classes (per 775 ILCS 5/1-103(Q) and 5/2-101): race,
  color, religion, national origin, ancestry, age, sex, marital
  status, order of protection status, disability, military
  status, sexual orientation, pregnancy, unfavorable discharge
  from military service, citizenship status, work authorization
  status, family responsibilities, and reproductive health
  decisions.
plain_language_summary: |
  Illinois employers cannot use AI in hiring, promotion, firing,
  or any other employment decision if the AI causes
  discrimination against people in protected groups — like race,
  religion, age, sex, disability, sexual orientation, or
  pregnancy. The law uses an "effect" test, not an "intent" test:
  if your AI produces discriminatory outcomes, you are liable
  even without intent to discriminate.

  This is a critical difference from Texas TRAIGA, which requires
  proof of intent. Illinois is closer to federal Title VII
  disparate-impact analysis than to TRAIGA.

  Operational implication: vendors must run pre-deployment
  fairness testing AND ongoing disparate-impact monitoring across
  all 19 Illinois protected classes (more classes than federal
  Title VII).
trigger_conditions:
  - condition: Employer scope
    formal: |
      Employer per 775 ILCS 5/2-101(B)(1)(a): "any person
      employing 15 or more employees within Illinois during 20
      or more calendar weeks within the calendar year." Lower
      thresholds apply for sexual harassment and pregnancy
      discrimination claims (5/2-101(B)(1)(d)).
  - condition: Use of AI in covered employment decision
    formal: |
      "Use" is undefined but read broadly. Includes deploying,
      relying on, or being meaningfully informed by AI output.
      AI per 5/2-101(M) is "a machine-based system that, for
      explicit or implicit objectives, infers, from the input it
      receives, how to generate outputs such as predictions,
      content, recommendations, or decisions that can influence
      physical or virtual environments. Artificial intelligence
      includes generative artificial intelligence."
  - condition: Covered employment decision
    formal: |
      Recruitment, hiring, promotion, renewal of employment,
      selection for training or apprenticeship, discharge,
      discipline, tenure, or the terms, privileges, or conditions
      of employment. The phrase "terms, privileges, or
      conditions" is broad — encompasses scheduling, pay,
      assignment, performance review, leave decisions, etc.
  - condition: Discriminatory effect on protected class
    formal: |
      "Has the effect of subjecting employees to discrimination
      on the basis of protected classes." Disparate-impact
      standard — no intent required. Statistical disparities
      sufficient for prima facie case.
evidence_required:
  - Pre-deployment fairness/bias testing report covering all 19 Illinois protected classes
  - Ongoing disparate-impact monitoring logs (recommend quarterly)
  - Training data documentation showing absence of proxy variables
  - Adverse-impact ratio (4/5ths rule) calculations for each protected class
  - Vendor due diligence documentation if third-party AI
  - Periodic re-testing schedule and results
  - Remediation actions taken in response to identified disparities
  - Business necessity justification documentation (for any retained variables with disparate impact)
exceptions:
  - exception: Business necessity defense
    formal: |
      The IHRA generally allows business-necessity rebuttal of
      disparate-impact claims (parallel to Title VII analysis).
      Employer bears burden of proving the challenged practice
      is job-related and consistent with business necessity.
      Even where established, plaintiff may prevail by showing
      a less-discriminatory alternative exists.
  - exception: Bona fide occupational qualifications
    formal: |
      Where a protected characteristic is a BFOQ for the
      position (narrow exception, typically religious
      institutions for religion-based hiring, etc.).
deadline:
  type: continuous
  value: ongoing
penalty_for_violation: |
  Civil rights violation under IHRA. Remedies via IDHR + Illinois
  Human Rights Commission OR direct circuit court action:
  cease-and-desist orders, back pay, reinstatement, restoration
  of seniority, compensatory damages, attorney's fees and costs.
  No statutory cap. Aggravated/willful violations: additional
  civil penalty up to $100,000 (775 ILCS 5/8A-104(F)).
ai_specific_application: |
  This is the load-bearing obligation for Illinois AI hiring tool
  deployers. Sentainel's role:

  1. Discovery layer flags hiring/promotion/discipline AI
     deployments with Illinois user nexus.
  2. Classification engine tags deployments as in-scope for HRA
     AI based on intended-decision-type metadata.
  3. Documentation layer generates the disparate-impact testing
     protocol covering all 19 Illinois protected classes (more
     than Title VII or TRAIGA require).
  4. Runtime monitoring tracks adverse-impact ratios per class
     in production, alerting when 4/5ths rule is breached.
  5. Evidence repository stores all fairness-testing artifacts
     for IDHR investigation or affirmative-defense use.

  Pricing implication: HRA AI is most-aligned with Continuous tier
  ($4,999/mo) because the disparate-impact monitoring is
  inherently ongoing — point-in-time documentation under the
  Operations tier is insufficient.
cross_references:
  - regulation: us-tx-traiga
    article: us-tx-traiga-552-056-discrimination
    relationship: companion
    notes: |
      Both prohibit AI-driven employment discrimination but
      Illinois uses disparate-impact standard while Texas uses
      intent standard. Sentainel customers in both states must
      comply with the stricter Illinois rule.
  - regulation: ca-on-human-rights-code
    article: ca-on-human-rights-code-s9-no-infringement-via-tech
    relationship: companion
    notes: |
      Ontario s. 9 also reaches AI discrimination via technological
      infringement of Code rights. Functional analog though
      enforcement and damages frameworks differ.
  - regulation: us-il-aivia
    article: us-il-aivia-s10-sharing-limited
    relationship: sectoral_overlay
    notes: |
      AIVIA layers procedural requirements on top of HRA AI when
      video-interview AI is used; both apply concurrently.
confidence_score: 0.95
confidence_tier: high
ambiguity_notes: |
  - "Has the effect of subjecting employees to discrimination"
    has not been judicially construed in the AI-specific context.
    Whether plaintiff must show statistical disparity meeting the
    4/5ths rule or some lower threshold is not yet settled.
  - "Use" of AI is undefined. Whether a manager who reviews AI
    suggestions but makes the final call independently is "using
    AI" remains open. IDHR rulemaking may address.
  - The interaction with federal Title VII (which also reaches
    disparate impact) creates dual-track exposure. Federal
    enforcement requires EEOC filing within 300 days; Illinois
    extends to 2 years.
  - "Employees" in s. 2-102(L) text may or may not include
    applicants. Statutory context (recruitment, hiring expressly
    listed) clearly intends to cover applicants, but the term
    used is "employees." IDHR rulemaking will clarify; treat
    applicants as covered for compliance posture.
sentainel_value_prop: |
  Disparate-impact monitoring is the single most-asked-about
  capability in Illinois mid-market sales conversations.
  Sentainel's value here: turnkey monitoring of all 19 protected
  classes per deployment, with quarterly fairness reports and
  real-time alerts when 4/5ths rule breaches. The alternative —
  hiring outside counsel + a fairness-testing vendor — runs
  $80K–$150K annually per deployment. Sentainel does it for the
  Continuous tier ($60K/yr) and covers Texas and Quebec in the
  same workstream.
extraction_method: claude-opus-4-7-2026-05-13 + direct statute review
extracted_at: 2026-05-13
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---

# 775 ILCS 5/2-102(L)(1) (first clause) — AI Anti-Discrimination

## Statutory Anchor

> It is a civil rights violation: ... (L) Use of artificial intelligence. (1) With respect to recruitment, hiring, promotion, renewal of employment, selection for training or apprenticeship, discharge, discipline, tenure, or the terms, privileges, or conditions of employment, for an employer to use artificial intelligence that has the effect of subjecting employees to discrimination on the basis of protected classes under this Article ...

— **775 ILCS 5/2-102(L)(1)**, as added by Public Act 103-804, eff. January 1, 2026.

## Why This Obligation Matters

This is Illinois's substantive AI discrimination prohibition. Unlike Texas TRAIGA (intent-based), Illinois reaches disparate impact — discriminatory outcomes are sufficient even without discriminatory intent. The phrase "has the effect of subjecting employees to discrimination" is the operative language.

## Sentainel Implementation Approach

See `ai_specific_application` in frontmatter.

## Defensive Posture

Customers facing potential HRA AI exposure should be ready to demonstrate:

1. **Pre-deployment fairness testing**: adverse-impact ratio calculations per protected class, with documentation of methodology (typically 4/5ths rule application)
2. **Ongoing monitoring**: production data showing the AI continues to perform within acceptable disparity ranges
3. **Business necessity documentation**: if disparities exist, evidence the AI is job-related and no less-discriminatory alternative is reasonably available
4. **Vendor due diligence**: if AI is third-party, contractual + technical evidence of vendor's fairness practices

## Related NIST Controls

Mapped in `cross-references/mappings/nist-to-us-il-hra-ai.yaml`. High-leverage controls: GOVERN-1.1, GOVERN-3.1 (diversity in risk management), MAP-1.2 (interdisciplinary actors), MEASURE-2.11 (fairness & bias), MANAGE-1.3.
