---
slug: us-il-aivia-s30-dceo-demographic-reporting
regulation_id: us-il-aivia
article_number: "820 ILCS 42/30"
parent_article: null
obligation_type: REPORT
status: in_force
effective_date: 2022-01-01
actors:
  - EMPLOYER
  - AI_DEPLOYER
required_action: |
  An employer that relies solely upon artificial intelligence to
  determine whether an applicant will qualify for an in-person
  interview shall collect and report to the Department of
  Commerce and Economic Opportunity the following data:

  (1) the race and ethnicity of applicants who are and are not
      afforded the opportunity for an in-person interview after
      the use of artificial intelligence analysis; and

  (2) the race and ethnicity of applicants who are hired.

  The Department of Commerce and Economic Opportunity shall
  annually analyze the data and report to the Governor and
  General Assembly whether the data discloses a racial bias in
  the use of artificial intelligence.

  Report shall be submitted by December 31 of each year.
plain_language_summary: |
  If an employer uses AI as the SOLE filter to decide who gets
  an in-person interview (no human review of AI rejections),
  the employer must:

  1. Track the race and ethnicity of:
     - All applicants given an in-person interview after AI
     - All applicants NOT given an in-person interview after AI
     - All applicants who were ultimately hired
  2. Report this data annually to the Illinois Department of
     Commerce and Economic Opportunity (DCEO) by December 31

  DCEO analyzes the data for racial bias patterns and reports to
  the Governor and General Assembly.

  This obligation does NOT apply if AI is used alongside human
  review — only if AI ALONE filters. The "sole" qualifier is
  the operative limitation.
trigger_conditions:
  - condition: AI as sole filtering mechanism
    formal: |
      "Relies solely upon artificial intelligence" — no human
      review of AI rejections. If a human reviews AI flags
      before the rejection decision, this obligation does not
      attach. Critical interpretive question: does post-hoc
      human review of a SAMPLE of AI rejections count? IDHR/
      DCEO has not clarified. Conservative reading: review
      must be applicant-specific, not statistical.
  - condition: AI used at the in-person interview qualification stage
    formal: |
      The decision being filtered is whether to advance to an
      in-person interview. AI used at later stages (final-round
      ranking, offer decisions) is outside this section's scope.
  - condition: Position based in Illinois
    formal: |
      Inherited from AIVIA's general scope (s. 5).
evidence_required:
  - Annual demographic report submission to DCEO (December 31)
  - Demographic data collection method documentation
  - Applicant self-identification process records
  - Aggregated statistics by AI-qualification status and protected class
  - Hire-rate statistics by protected class
  - Verification that AI was sole filter (no human review of AI rejections)
  - Process documentation for years when employer is not in scope (audit trail showing why)
exceptions:
  - exception: Human review present
    formal: |
      If a human reviews AI rejections before they become final,
      the employer is not relying "solely" on AI and this
      reporting obligation does not attach. Human review must
      be substantive — pro-forma sign-off does not qualify.
  - exception: Position not based in Illinois
    formal: |
      AIVIA scope generally — out-of-state positions excluded.
deadline:
  type: fixed
  value: "December 31 annually"
penalty_for_violation: |
  Enforcement mechanism for s. 30 specifically is poorly defined.
  DCEO has not publicly issued enforcement statistics. Practical
  exposure: failure to report may be evidence of bad faith in
  any concurrent AIVIA s. 5 or HRA AI proceeding. Indirect
  exposure via IDHR civil rights complaints citing the
  reporting failure as evidence of systemic neglect.
ai_specific_application: |
  Sentainel:

  1. Identifies whether customer's AI hiring deployment is in
     "sole reliance" configuration vs. human-in-the-loop
  2. If sole-reliance: configures demographic data collection at
     applicant entry (voluntary self-ID, never inferred)
  3. Tracks AI-qualification decisions tagged with applicant
     identifiers
  4. Generates annual demographic report formatted for DCEO
     submission
  5. Records submission with receipt for evidence repository
  6. Where customer wants to exit "sole reliance" configuration,
     designs human-review pathway

  Few customers actually run sole-AI filtering — most have some
  human checkpoint. Sentainel's role is often confirming the
  customer is NOT in scope and documenting why, which itself is
  valuable defensive evidence.
cross_references:
  - regulation: us-il-hra-ai
    article: us-il-hra-ai-2-102-l-1-no-discrimination
    relationship: companion
    notes: |
      HRA AI's disparate-impact prohibition gives demographic
      reporting under AIVIA s. 30 dual purpose: it satisfies
      the statutory report and provides evidence for HRA AI
      compliance posture.
  - regulation: ca-qc-law-25
    article: ca-qc-law-25-s12-1-automated-decision-making
    relationship: companion
    notes: |
      Quebec Law 25's automated-decision-making framework
      requires human-review opportunity. Operationally parallel:
      avoiding "sole reliance" on AI satisfies both Quebec's
      right-to-human-review and AIVIA s. 30's reporting trigger.
confidence_score: 0.92
confidence_tier: high
ambiguity_notes: |
  - "Solely upon AI" is not statutorily defined. Whether
    statistical post-hoc review of a sample of rejections counts
    as breaking the "sole" reliance is unsettled. Conservative
    reading: needs to be applicant-specific human review of
    each AI rejection.
  - Demographic data collection itself raises issues — applicant
    self-identification is voluntary, and many decline. The
    statute does not specify how to handle non-response. Best
    practice: report response and non-response rates.
  - The report format and submission mechanism are not
    explicitly defined in the statute. DCEO has issued
    informal guidance suggesting CSV submission to a designated
    email address. Sentainel template matches DCEO informal
    guidance.
  - Whether the DCEO report is publicly accessible (via FOIA)
    is open. Conservative practice: assume it will be public
    and structure data accordingly.
sentainel_value_prop: |
  This obligation is operationally complex and rarely well-
  understood by customers. Sentainel can either: (a) take the
  customer out of scope by adding human review, or (b) operate
  the reporting workflow end-to-end. Either way, the
  defensibility documentation Sentainel produces is the
  customer's strongest defense in any concurrent IHRA action.
extraction_method: claude-opus-4-7-2026-05-13 + direct statute review (P.A. 102-47 amendment)
extracted_at: 2026-05-13
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---

# 820 ILCS 42/30 — DCEO Demographic Reporting (Sole-AI Filtering Employers)

## Statutory Anchor

> Sec. 30. Reporting. An employer that relies solely upon artificial intelligence to determine whether an applicant will qualify for an in-person interview shall collect and report to the Department of Commerce and Economic Opportunity the following data:
>
> (1) the race and ethnicity of applicants who are and are not afforded the opportunity for an in-person interview after the use of artificial intelligence analysis; and
>
> (2) the race and ethnicity of applicants who are hired.
>
> The Department of Commerce and Economic Opportunity shall annually analyze the data and report to the Governor and General Assembly whether the data discloses a racial bias in the use of artificial intelligence.

— **820 ILCS 42/30**, added by Public Act 102-47, eff. January 1, 2022.

## Why This Obligation Matters

Section 30 was the first statutory demographic-reporting requirement specifically tied to AI use in U.S. employment. While narrow in scope (sole-AI filtering only), it foreshadows the broader reporting regimes Illinois and other states are likely to enact (e.g., the pending Illinois Automated Decision Tools Act HB 5116).

Most enterprise customers do not run truly sole-AI filtering — they have some human checkpoint. The Sentainel value here is often "documenting that you're NOT in scope" rather than "operating the report." Both are defensible postures; the latter requires demographic data collection infrastructure most customers don't have.

## The "Sole Reliance" Question

This is the single most consequential interpretation question for customers. If sole reliance:

- Must collect demographic data
- Must report annually to DCEO
- Must self-identify as a sole-AI employer publicly via the report

If NOT sole reliance:

- No reporting obligation under s. 30
- Still in scope for s. 5 (notice/consent) and s. 10 (sharing) and s. 15 (deletion)
- Still in scope for HRA AI generally

Sentainel's recommended posture: ensure customers have substantive human review of AI rejections, both to exit s. 30 scope AND to strengthen HRA AI disparate-impact defense. The 2026 HRA AI law makes pure-AI filtering operationally untenable anyway because of disparate-impact exposure.

## Demographic Data Collection Best Practices

1. **Voluntary self-identification** at application entry, never inferred
2. **Disaggregated categories** matching EEO-1 categories for cross-reference with federal reporting
3. **Decline-to-respond tracking** as a separate category
4. **Aggregation only** in the DCEO report — never include applicant identifiers
5. **Annual cadence** with December 31 submission target
