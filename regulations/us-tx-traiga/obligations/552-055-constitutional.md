---
slug: us-tx-traiga-552-055-constitutional
regulation_id: us-tx-traiga
article_number: "Tex. Bus. & Comm. Code § 552.055"
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
  (a) A person may not develop or deploy an artificial intelligence
  system with the sole intent for the artificial intelligence system
  to infringe, restrict, or otherwise impair an individual's rights
  guaranteed under the United States Constitution.

  (b) This section is remedial in purpose and may not be construed
  to create or expand any right guaranteed by the United States
  Constitution.
plain_language_summary: |
  TRAIGA prohibits any person from developing or deploying AI with
  the SOLE INTENT to infringe federal constitutional rights.

  "Sole intent" is an extremely high standard:
  - The AI must be designed/deployed for no other purpose than
    rights infringement
  - Any legitimate dual purpose defeats the violation
  - Negligent or incidental rights impact does not trigger

  Subsection (b) explicitly disclaims expansion of constitutional
  rights — this is a regulatory prohibition only, not a private
  cause of action under the Constitution.

  PRACTICAL IMPACT: Very narrow. AI products designed purely to
  suppress speech, restrict assembly, deny due process, etc., are
  rare. The provision serves mainly as a statutory backstop against
  egregious cases rather than a frequent enforcement target.

  However, AI systems with primary or significant intended
  rights-infringing functionality (some censorship AI, some
  retaliatory AI, some chilling-effect AI) could trigger AG
  attention even though "sole intent" might be debatable.
trigger_conditions:
  - condition: Develops or deploys AI
  - condition: Sole intent to infringe federal constitutional rights
    formal: |
      Extremely high bar. Plaintiff (AG) must prove no other
      legitimate purpose. Mixed motives = no violation.
evidence_required:
  - Documentation of legitimate business purposes for AI deployments
  - Marketing materials confirming dual or sole-legitimate purpose
  - Internal product specifications showing non-infringement intent
  - For AI affecting protected speech (content moderation, social
    media AI), evidence that moderation is content-neutral or
    based on platform policy enforcement rather than viewpoint
    suppression
deadline:
  type: continuous
  value: |
    Continuous. Violation occurs at moment of development/deployment.
exceptions:
  - description: |
      No statutory exceptions. The high "sole intent" standard
      effectively limits scope.
penalty_for_violation: |
  Same as other Subchapter B violations. § 552.105: $10K-$12K
  curable, $80K-$200K uncurable. Constitutional-rights-targeting
  AI almost certainly uncurable.
ai_specific_application: |
  Sentainel module:
  - DOCUMENTS LEGITIMATE PURPOSE for every AI deployment
  - For content moderation AI specifically, maintains policy
    documentation establishing content-neutrality
  - For workplace surveillance AI, documents legitimate business
    purpose and proportionality
cross_references:
  - us-tx-traiga-552-052-manipulation
  - us-tx-traiga-552-056-discrimination
ai_system_types_affected:
  - content-moderation-ai
  - workplace-surveillance-ai
  - law-enforcement-ai
  - immigration-enforcement-ai
confidence_score: 0.90
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + direct statute review
ambiguity_notes: |
  - "Sole intent" is novel statutory language; how Texas courts
    will interpret it is unsettled. Lower bar interpretations
    ("primary intent") would dramatically expand scope.
  - Subsection (b)'s rights-disclaiming language is unusual and
    may complicate enforcement (the AG must prove infringement
    of rights that the statute itself doesn't create).
sentainel_value_prop: |
  Low-frequency obligation, but Sentainel's documentation of
  legitimate AI purpose serves multiple obligations
  simultaneously (this one + § 552.052 manipulation defense +
  general affirmative-defense posture under § 552.105(c)).
extracted_at: 2026-05-13T09:40:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
