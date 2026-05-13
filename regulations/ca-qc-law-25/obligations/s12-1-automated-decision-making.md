---
slug: ca-qc-law-25-s12-1-automated-decision-making
regulation_id: ca-qc-law-25
article_number: "P-39.1 s. 12.1 (added by Law 25 s. 102)"
parent_article: null
obligation_type: DISCLOSE
status: in_force
effective_date: 2023-09-22
actors:
  - PERSON_LEGAL_ENTITY
  - PLATFORM_OPERATOR
  - EMPLOYER
  - HEALTHCARE_PROVIDER
required_action: |
  Any person carrying on an enterprise who uses personal information
  to render a decision based EXCLUSIVELY on an automated processing
  of such information must inform the person concerned of that fact,
  no later than at the time it informs them of the decision.

  The person concerned must, on request, be informed of:
  (1) the personal information used to render the decision;
  (2) the reasons and the principal factors and parameters that
      led to the decision; and
  (3) the right of the person concerned to have the personal
      information used to render the decision corrected.

  The person concerned must be given the opportunity to submit
  observations to a member of the personnel of the enterprise who
  is in a position to review the decision.
plain_language_summary: |
  Section 12.1 is the AI core of Law 25. If your AI system makes a
  decision affecting a Quebec resident WITHOUT meaningful human
  involvement, you must:

  1. Tell them an AI decided (at or before the decision is communicated)
  2. On request, explain WHAT data was used and WHY (the principal
     factors and parameters)
  3. Give them the right to correct the input data
  4. Let them submit observations to a HUMAN who can review the
     decision

  The trigger is "exclusively" automated. If a human meaningfully
  reviews and can override the AI's output, Section 12.1 does not
  apply. But "rubber-stamping" the AI's output does NOT count as
  meaningful human review per CAI interpretation. The human must
  have actual decision-making authority and exercise it.

  CRITICAL FOR AI: Resume screening AI that auto-rejects without
  human review, AI loan denial systems, AI insurance underwriting,
  AI healthcare triage decisions, AI fraud-detection auto-blocks —
  all trigger Section 12.1. Adding a token human "approval" step
  does not exempt you if the human is not actually exercising
  judgment.
trigger_conditions:
  - condition: Enterprise scope
    formal: |
      "Person carrying on an enterprise" per Civil Code of Quebec
      art. 1525: any organized economic activity, including
      non-profits and most professional activities. Captures
      corporations, partnerships, sole proprietorships, and most
      organized economic activities of any size.
  - condition: Personal information used
    formal: |
      "Personal information" per P-39.1 s. 2: any information which
      relates to a natural person and directly or indirectly allows
      that person to be identified. Broadly interpreted; includes
      IP addresses, device identifiers, behavioral patterns,
      inferred attributes.
  - condition: Decision rendered exclusively by automated processing
    formal: |
      "Exclusively" means no meaningful human involvement in the
      decision. The human must have actual authority AND exercise
      judgment. CAI interpretation: ceremonial approval, batch
      sign-off without review, or processes where the human
      "almost always" defers to the AI do not break the exclusivity.
  - condition: Decision affects the individual
    formal: |
      Section 12.1 applies regardless of decision consequence.
      However, severity affects enforcement priority. Hiring,
      lending, insurance, healthcare, housing, education, and
      benefits eligibility are CAI enforcement priorities.
evidence_required:
  - AI system inventory listing every system making decisions about
    Quebec residents
  - Human-in-the-loop documentation proving meaningful human review
    where claimed (or admission that Section 12.1 applies)
  - Pre-decision notification templates (in French and English)
  - Post-decision explanation templates with placeholder fields for
    data used, factors, and parameters
  - Correction request handling workflow
  - Observations submission and review workflow
  - Personnel designations identifying who is authorized to review
    automated decisions
  - Training records for personnel reviewing automated decisions
  - Audit log of all Section 12.1 disclosures and review requests
  - For each AI model: documentation of factors and parameters
    sufficient to explain decisions
deadline:
  type: continuous
  value: |
    Disclosure: at or before communication of the decision.
    Detailed explanation on request: within 30 days (per general
    Law 25 rights-request timeline, s. 28).
    Observations submission: reasonable opportunity (CAI guidance
    suggests 30+ days).
exceptions:
  - description: |
      Decisions where a human meaningfully participates do not
      trigger Section 12.1. Burden of proving meaningful human
      involvement is on the enterprise.
  - description: |
      Decisions based on non-personal information (aggregate data
      that cannot identify individuals) are outside scope.
  - description: |
      Internal-only AI processing that does not result in a decision
      affecting the individual is outside scope.
penalty_for_violation: |
  - Administrative Monetary Penalty: up to CAD $10M or 2% of
    worldwide turnover, whichever is GREATER (P-39.1 s. 90.1)
  - Penal sanction: up to CAD $25M or 4% of worldwide turnover,
    whichever is GREATER, for serious or systemic violations
    (P-39.1 s. 91)
  - Private right of action: minimum CAD $1,000 per affected
    individual (P-39.1 s. 93.1)
  - CAI compliance order to cease the processing
  - CAI publication order requiring public disclosure of violation
  - Reputational damage from public CAI decisions

  Class action exposure is significant: if a resume screening AI
  auto-rejected 10,000 Quebec candidates without Section 12.1
  disclosure, minimum class damages = CAD $10 million BEFORE any
  CAI penalty.
ai_specific_application: |
  Sentainel's Section 12.1 module operationalizes this obligation:

  1. AI DECISION INVENTORY: Auto-classifies every AI deployment as
     "exclusively automated" vs. "meaningful human review" with
     evidence trail
  2. NOTIFICATION GENERATOR: Produces French + English notification
     text injected into decision communications
  3. EXPLANATION ENGINE: Generates per-decision explanations with
     dynamic data-used / factors / parameters fields from model
     metadata
  4. CORRECTION WORKFLOW: Captures correction requests, routes to
     data owner, triggers PIA refresh if pattern indicates systemic
     data quality issue
  5. OBSERVATIONS REVIEW: Routes consumer observations to designated
     reviewing personnel with SLA enforcement
  6. AUDIT TRAIL: Every disclosure, request, correction, and review
     hash-chained for CAI inspection

  This is the function that converts a vague "automated decision"
  obligation into operational compliance. No competitor product
  has this specifically built for Quebec.
cross_references:
  - ca-qc-law-25-s3-3-mandatory-pia
  - ca-qc-law-25-s14-consent
  - ca-qc-law-25-s27-data-portability
  - ca-on-bill-149-esa-8-4
  - ca-on-human-rights-code-s9
  - ca-on-mfippa-pia-mandatory-bill97
  - us-tx-traiga-552-052-a-5
  - us-co-ai-act-6-1-1703
  - eu-ai-act-art-22
ai_system_types_affected:
  - resume-screening-ai
  - ai-loan-underwriting
  - ai-insurance-underwriting
  - ai-fraud-detection-autoblock
  - ai-healthcare-triage
  - ai-tenant-screening
  - ai-benefits-eligibility
  - ai-content-moderation-auto-action
  - ai-pricing-personalization
  - ai-recommendation-with-consequence
confidence_score: 0.95
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + manual review
ambiguity_notes: |
  - "Meaningful human involvement" is not statutorily defined; CAI
    is developing interpretive guidance through casework. Conservative
    interpretation: the human must be able to override the AI AND
    must demonstrably exercise that judgment in a non-trivial
    percentage of cases.
  - The boundary between "decision" and "recommendation" is fact-
    specific. An AI system that "recommends" rejection but is followed
    99% of the time by automated rejection may be treated as making
    the decision.
  - The "principal factors and parameters" disclosure standard for
    complex ML models (neural networks, ensemble methods) is unsettled.
    Best practice: provide feature importance scores plus plain-
    language explanation of top factors.
  - Cross-border AI services raise additional layers (s. 17 cross-
    border transfer assessment) that compound Section 12.1 obligations.
sentainel_value_prop: |
  Section 12.1 is the highest-leverage Quebec obligation. Most AI
  vendors selling into Quebec are not Section 12.1-compliant. Most
  Quebec enterprises using AI vendors do not know they are exposed.

  Sentainel provides:
  - Pre-built Section 12.1 disclosure templates (FR + EN)
  - Auto-classification of AI deployments
  - Audit-defensible documentation
  - Integration with the broader Quebec stack (s. 3.3 PIA, s. 14
    consent, s. 17 cross-border, s. 27 portability)

  ACV impact: Section 12.1 alone justifies Sentainel's $2,499/mo
  Operations tier for any Quebec-deploying enterprise. The penalty
  exposure ($25M / 4% turnover) is orders of magnitude greater than
  the subscription cost.
extracted_at: 2026-05-13T07:00:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
