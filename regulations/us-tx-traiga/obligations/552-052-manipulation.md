---
slug: us-tx-traiga-552-052-manipulation
regulation_id: us-tx-traiga
article_number: "Tex. Bus. & Comm. Code § 552.052"
parent_article: null
obligation_type: PROHIBIT
status: in_force
effective_date: 2026-01-01
actors:
  - DEVELOPER
  - DEPLOYER
  - PERSON_LEGAL_ENTITY
  - PERSON_NATURAL
required_action: |
  A person may not develop or deploy an artificial intelligence
  system in a manner that intentionally aims to incite or encourage
  a person to:
    (1) commit physical self-harm, including suicide;
    (2) harm another person; or
    (3) engage in criminal activity.
plain_language_summary: |
  TRAIGA prohibits the development or deployment of AI systems
  that INTENTIONALLY aim to push users toward physical self-harm
  (including suicide), harm to others, or criminal activity.

  This is an INTENT-BASED prohibition. The standard is high:
  - "Intentionally aims" — not negligent, not foreseeable, not
    incidental
  - "Incite or encourage" — active prompting, not passive
    information availability
  - Targeted at three specific harm categories — physical self-
    harm, harm to others, or criminal activity

  CRITICAL FOR AI: This is NOT a general AI safety obligation.
  Standard LLM safety failures (model occasionally outputting
  harmful content despite guardrails) do NOT violate § 552.052
  unless intent to incite harm can be shown. The provision targets
  bad-actor AI development (jailbroken chatbots designed to
  encourage self-harm, "suicide coach" apps, criminal facilitation
  AI, etc.) rather than mainstream AI products.

  However, deploying an AI with KNOWN harm-inciting failure modes
  without adequate mitigation may approach intent under aggressive
  AG interpretation. Conservative practice: document safety
  testing, content moderation, suicide prevention pathway
  integration, and adversarial red-teaming for all consumer-
  facing AI.
trigger_conditions:
  - condition: Develops or deploys AI system
    formal: |
      Either the developer (creating the AI) or the deployer (using
      the AI) can violate this section. Broad scope captures vendor
      AND customer.
  - condition: Manner intentionally aims to incite or encourage
    formal: |
      Intent standard is high. Aggravating evidence: marketing
      claims targeting harm, training data deliberately curated
      toward harmful outputs, prompt engineering designed to
      circumvent safety controls, removal of harm-mitigation
      features, etc.
  - condition: Three specific harm categories
    formal: |
      (1) Physical self-harm including suicide;
      (2) Harm to another person (physical, not emotional/financial);
      (3) Criminal activity (any state or federal crime).
evidence_required:
  - AI safety testing documentation
  - Red-teaming and adversarial testing logs
  - Content moderation and safety filtering policies
  - Suicide prevention and crisis pathway integration (for
    consumer-facing conversational AI)
  - Harm-pattern monitoring during deployment
  - Incident response procedures for harm-related AI outputs
  - Marketing review showing no targeting of vulnerable users for
    harm-inciting content
  - Training data audit confirming no deliberate inclusion of
    harm-inciting content
  - Vendor due diligence on AI providers' safety practices
deadline:
  type: continuous
  value: |
    Continuous prohibition. Violation occurs at the moment of
    development or deployment with prohibited intent.
exceptions:
  - description: |
      No explicit statutory exceptions. However, the high intent
      standard effectively excludes negligent, accidental, or
      incidental harm-related outputs from violation.
  - description: |
      AI used in legitimate research, training, evaluation, etc.
      (per § 503.001(e)(2)) for AI development purposes — though
      this exception primarily applies to biometric provisions,
      similar reasoning may extend.
penalty_for_violation: |
  - Curable violation: $10,000 - $12,000 per violation (§ 552.105(a)(1))
  - Uncurable violation: $80,000 - $200,000 per violation
    (§ 552.105(a)(2)) — manipulation violations likely uncurable
    given the intent component
  - Continuing violation: $2,000 - $40,000 per day (§ 552.105(a)(3))
  - State licensing agency sanctions under § 552.106
  - NO private right of action (§ 552.101(b))
  - 60-day cure window under § 552.104

  Rebuttable presumption of reasonable care (§ 552.105(c)) and
  NIST AI RMF safe harbor (§ 552.105(e)(2)(D)) apply.
ai_specific_application: |
  Sentainel's § 552.052 module:

  1. SAFETY POSTURE AUDIT: Automated review of consumer-facing
     AI deployments for adequate safety controls — harm classifier
     coverage, crisis pathway integration (988 suicide & crisis
     lifeline routing), content moderation API integration,
     adversarial testing evidence.
  2. INTENT-EVIDENCE TRACKER: Maintains documentation of
     non-malicious intent — marketing review, training data audit,
     safety roadmap, leadership commitments. Defensive against
     potential AG inquiry into AI design choices.
  3. RED-TEAM EVIDENCE REPOSITORY: Centralized storage of red-team
     reports demonstrating proactive harm-mitigation efforts.
  4. AI VENDOR HARM PROFILES: For each AI vendor (OpenAI, Anthropic,
     Google, Microsoft), maintained library of vendor-published
     safety practices, model card content, and use policy
     enforcement.
  5. CRISIS PATHWAY INTEGRATION: Templated integrations with
     suicide prevention, domestic violence, and crisis intervention
     resources for consumer AI products.
  6. NIST AI RMF MAP-1.1, MAP-3.4, MANAGE-2.1 CROSS-REFERENCES:
     These NIST controls directly address harm-prevention
     considerations and form the basis of the safe harbor defense.
cross_references:
  - us-tx-traiga-552-053-social-scoring
  - us-tx-traiga-552-055-constitutional
  - us-tx-traiga-552-056-discrimination
  - us-tx-traiga-552-057-csam
  - us-tx-traiga-552-105-nist-safe-harbor
  - us-federal-nist-ai-rmf-map-1-1
  - us-federal-nist-ai-rmf-manage-2-1
ai_system_types_affected:
  - consumer-conversational-ai
  - companion-ai-relationship-app
  - mental-health-ai-chatbot
  - educational-ai-tutor
  - gaming-ai-with-conversational-elements
  - social-media-recommendation-ai
  - any-consumer-facing-llm
confidence_score: 0.94
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + direct statute review
ambiguity_notes: |
  - "Intentionally aims" sets a high bar. Bright-line cases (an
    AI explicitly marketed to facilitate self-harm) are easy. Gray
    cases (an AI that occasionally outputs harmful content despite
    safety efforts) are harder. AG enforcement priorities will
    likely target the bright-line cases first.
  - The "incite or encourage" standard is undefined by statute.
    Likely interpreted in line with criminal incitement
    jurisprudence (Brandenburg v. Ohio standard or analogous).
  - Whether AI hallucinations causing harm constitute "intent" is
    novel territory. Conservative reading: if the developer knew
    of a harm pattern and shipped anyway without mitigation, intent
    could potentially be inferred.
  - The boundary between "criminal activity" inducement and
    legitimate information access (e.g., AI tutorial about a
    legal-in-some-states activity) is unsettled. Likely fact-
    specific.
sentainel_value_prop: |
  Section 552.052 violations carry $200K per violation × volume
  exposure with no cure pathway for intent-based offenses. This
  is the highest-severity provision in TRAIGA for consumer-facing
  AI products.

  Sentainel's preventative value:
  - Pre-deployment safety audit catches obvious harm patterns
    before launch
  - Centralized evidence repository supports affirmative defense
  - Crisis pathway integration converts a potential violation
    risk into demonstrated good-faith mitigation
  - NIST AI RMF mapping provides the statutory safe harbor route

  For any Sentainel customer deploying consumer-facing
  conversational AI, mental health AI, or AI used by minors,
  § 552.052 compliance is the single most important obligation
  to satisfy — and it's the obligation where Sentainel's
  technical safety tooling delivers most operational value.
extracted_at: 2026-05-13T09:20:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
