---
slug: us-il-aivia-s5-pre-interview-notice-consent
regulation_id: us-il-aivia
article_number: "820 ILCS 42/5"
parent_article: null
obligation_type: OBTAIN_CONSENT
status: in_force
effective_date: 2020-01-01
actors:
  - EMPLOYER
  - AI_DEPLOYER
required_action: |
  An employer that asks applicants to record video interviews and
  uses an artificial intelligence analysis of the applicant-
  submitted videos shall do all of the following when considering
  applicants for positions based in Illinois before asking
  applicants to submit video interviews:

  (1) Notify each applicant before the interview that artificial
      intelligence may be used to analyze the applicant's video
      interview and consider the applicant's fitness for the
      position.

  (2) Provide each applicant with information before the
      interview explaining how the artificial intelligence works
      and what general types of characteristics it uses to
      evaluate applicants.

  (3) Obtain, before the interview, consent from the applicant
      to be evaluated by the artificial intelligence program as
      described in the information provided.

  An employer may not use artificial intelligence to evaluate
  applicants who have not consented to the use of artificial
  intelligence analysis.
plain_language_summary: |
  Illinois employers using AI to analyze applicant video
  interviews must, BEFORE the interview, do three things:

  1. Tell the applicant that AI may analyze the video
  2. Give the applicant information about how the AI works and
     what it evaluates
  3. Get the applicant's consent to AI analysis

  If the applicant does not consent, the employer cannot use AI
  to evaluate them — but the statute is silent on whether the
  employer can still conduct the video interview (most
  practitioners read it as: yes, the interview can proceed but
  must be evaluated by humans only).

  Critical: all three steps must occur BEFORE the applicant
  submits the video. Consent obtained after the fact is
  insufficient.
trigger_conditions:
  - condition: Employer asks applicant to record video interview
    formal: |
      The employer must initiate the video-interview process.
      Applicants who voluntarily submit videos unsolicited
      arguably do not trigger AIVIA, though prudent practice
      treats any AI-analyzed applicant video as in scope.
  - condition: Employer uses AI analysis of submitted videos
    formal: |
      "Artificial intelligence analysis" — undefined in AIVIA.
      Practitioner reading covers any automated analytical
      system that produces evaluative output: sentiment analysis,
      affect detection, facial expression coding, language
      pattern analysis, ML-based fit scoring, or LLM-based
      summarization that informs hiring decisions.
  - condition: Position is based in Illinois
    formal: |
      Position location, not employer location or applicant
      location, controls. Remote positions explicitly "based in"
      Illinois are in scope; remote positions based elsewhere
      are out of scope.
evidence_required:
  - Pre-interview notice template(s) by AI tool version
  - Per-applicant notice delivery log with timestamp
  - AI explanation document — describing operating principles, evaluation characteristics, decision role
  - Per-applicant consent capture with timestamp and identifier
  - Versioning record for each notice/explanation/consent template
  - Evidence that consent occurred BEFORE the video submission (timestamp comparison)
  - Documentation of process for applicants who decline consent (human-only review pathway)
  - Vendor due diligence: third-party video AI vendor attestations of compliance support
exceptions: []
deadline:
  type: relative
  value: "Before the applicant submits the video interview"
penalty_for_violation: |
  AIVIA enforcement is unsettled — IDHR is the most likely
  enforcement body via the IHRA civil-rights complaint pathway.
  Practical exposure typically arises through stacked claims:

  - IHRA charge for AIVIA violation (civil rights remedies)
  - BIPA claim if AI extracts biometric data ($1K/$5K per
    violation with private right of action — by far the
    largest damages component)
  - HRA AI claim (2026+) if outcome was discriminatory

  Sentainel customers should model BIPA exposure as primary
  damages risk for any video-interview AI deployment.
ai_specific_application: |
  This is one of the cleanest automatable obligations in the
  V1 stack. Sentainel:

  1. Generates AI tool-specific explanation documents using the
     vendor's published model card and operational documentation
  2. Integrates with customer ATS (Workday, Greenhouse, Lever,
     etc.) to deliver notice + explanation at the start of the
     application flow
  3. Captures consent via signed checkbox + timestamp before the
     video upload step
  4. Logs every applicant interaction with the notice/consent
     flow for evidence repository
  5. Generates an audit trail demonstrating consent preceded
     video submission for every in-scope applicant
  6. Routes non-consenting applicants to a documented human-only
     review pathway

  Pricing: Operations tier ($2,499/mo) handles AIVIA in
  isolation; bundled with HRA AI and BIPA exposure analysis,
  positions naturally to Continuous tier ($4,999/mo).
cross_references:
  - regulation: us-il-hra-ai
    article: us-il-hra-ai-2-102-l-2-employee-notice
    relationship: companion
    notes: |
      For video-interview AI, AIVIA's more-detailed three-part
      procedure substantially satisfies HRA AI's generic notice
      requirement. For non-video AI hiring tools, HRA AI applies
      and AIVIA does not.
  - regulation: us-il-bipa
    article: us-il-bipa-s15-notice-consent
    relationship: sectoral_overlay
    notes: |
      Where the video AI extracts biometric identifiers (facial
      geometry, voiceprints), BIPA's notice and consent
      requirements apply concurrently with AIVIA. BIPA's private
      right of action carries materially larger damages.
  - regulation: us-tx-traiga
    article: us-tx-traiga-552-051-gov-disclosure
    relationship: companion
    notes: |
      Both involve AI disclosure to affected individuals. TRAIGA
      is government-agency-scoped; AIVIA is employer-scoped for
      video-interview AI.
confidence_score: 0.96
confidence_tier: high
ambiguity_notes: |
  - "Artificial intelligence analysis" is not defined in AIVIA.
    Whether human-supervised AI (e.g., a human reviews AI flags
    and makes the final call) counts as "AI analysis" is
    unsettled. Conservative practice: treat any AI-informed
    review as in scope.
  - The explanation requirement (s. 5(2)) standard for
    sufficiency is vague. Vendors and employers disagree on
    whether algorithmic specifics, training data sources, or
    only general principles must be disclosed. Sentainel's
    approach: include enough detail for an informed lay
    applicant to understand operational principles, without
    revealing trade secrets.
  - What happens to non-consenting applicants is statutorily
    unaddressed. Best practice: offer a human-only evaluation
    pathway that does not disadvantage the non-consenting
    applicant — failure to do so risks an IHRA retaliation/
    coercion claim.
  - Applicability to ASYNCHRONOUS video interviews (recorded
    responses to prompts) vs. SYNCHRONOUS (live video calls
    transcribed and analyzed) is undecided. Conservative
    reading: both are in scope if AI analyzes the recording.
sentainel_value_prop: |
  AIVIA is a five-year-old statute with persistent low
  compliance. Most enterprise users of video-interview AI
  (HireVue, Modern Hire, etc.) do not have rigorous pre-
  interview consent flows tied to AI tool versions. This is a
  high-confidence "audit finding" Sentainel can produce in the
  first week of an engagement.
extraction_method: claude-opus-4-7-2026-05-13 + direct statute review
extracted_at: 2026-05-13
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---

# 820 ILCS 42/5 — Pre-Interview Notice, Explanation, and Consent

## Statutory Anchor

> Sec. 5. Disclosure of the use of artificial intelligence analysis. An employer that asks applicants to record video interviews and uses an artificial intelligence analysis of the applicant-submitted videos shall do all of the following when considering applicants for positions based in Illinois before asking applicants to submit video interviews:
>
> (1) Notify each applicant before the interview that artificial intelligence may be used to analyze the applicant's video interview and consider the applicant's fitness for the position.
>
> (2) Provide each applicant with information before the interview explaining how the artificial intelligence works and what general types of characteristics it uses to evaluate applicants.
>
> (3) Obtain, before the interview, consent from the applicant to be evaluated by the artificial intelligence program as described in the information provided.
>
> An employer may not use artificial intelligence to evaluate applicants who have not consented to the use of artificial intelligence analysis.

— **820 ILCS 42/5**, Public Act 101-260, eff. January 1, 2020.

## Why This Obligation Matters

AIVIA was the first U.S. state AI-employment statute, in force since January 2020. Yet most enterprise users of video-interview AI tools have weak compliance documentation — either no notice, generic boilerplate, or post-hoc consent. This is the easiest audit finding in the Illinois compliance posture.

The procedure is unified — all three parts (notice, explanation, consent) must occur pre-interview. Sentainel treats this as a single atomic obligation because performance of any one without the others does not satisfy AIVIA.

## Implementation Note

Where the AI extracts biometric data (facial geometry, voiceprints) from the video, BIPA's separate (and stricter) notice/consent regime ALSO applies. The AIVIA process does NOT satisfy BIPA. Customers running modern video-interview AI must run TWO consent flows concurrently — one for AIVIA, one for BIPA.

This dual-consent reality is one of the strongest sales arguments for Sentainel: managing both flows correctly is operationally complex enough that most customers fail at it.
