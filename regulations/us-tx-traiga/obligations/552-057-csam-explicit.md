---
slug: us-tx-traiga-552-057-csam-explicit
regulation_id: us-tx-traiga
article_number: "Tex. Bus. & Comm. Code § 552.057"
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
  A person may not:
    (1) develop or distribute an artificial intelligence system
        with the sole intent of producing, assisting or aiding in
        producing, or distributing:
        (A) visual material in violation of Section 43.26, Penal
            Code [child pornography]; or
        (B) deep fake videos or images in violation of Section
            21.165, Penal Code [unlawful production or distribution
            of deepfake]; or
    (2) intentionally develop or distribute an artificial
        intelligence system that engages in text-based conversations
        that simulate or describe sexual conduct, as that term is
        defined by Section 43.25, Penal Code, while impersonating
        or imitating a child younger than 18 years of age.
plain_language_summary: |
  TRAIGA prohibits two categories of AI development/distribution:

  1. AI WITH SOLE INTENT TO PRODUCE OR FACILITATE:
     - Child sexual abuse material (CSAM) — referencing Texas
       Penal Code § 43.26
     - Unlawful deepfake videos or images — referencing § 21.165
       (which targets non-consensual intimate imagery and certain
       election-related deepfakes)

  2. AI WITH INTENT TO ENGAGE IN AGE-FAKED SEXUAL TEXT-BASED
     CONVERSATIONS:
     - AI that simulates or describes sexual conduct while
       impersonating a person under 18
     - Note: "intentionally develop or distribute" — slightly lower
       intent standard than "sole intent" elsewhere

  PRACTICAL IMPACT FOR AI VENDORS:
  - Mainstream LLMs (ChatGPT, Claude, Gemini, etc.) are not in
    scope as long as developers maintain CSAM filtering, deepfake
    detection, and age-related safety controls — which they all
    do.
  - "Companion AI" / "AI girlfriend" / "AI chatbot" products with
    sexual content offerings face heightened scrutiny if they
    cannot prove robust age-impersonation prevention.
  - AI deepfake tools must demonstrate non-CSAM, non-deepfake
    primary purpose.
  - AI vendors selling B2B to companies should obtain customer
    representations about end use.

  CONTENT MODERATION OBLIGATION (EFFECTIVELY): While § 552.057
  doesn't impose explicit content moderation duties, the "sole
  intent" defense effectively requires AI vendors to demonstrate
  active prevention of these prohibited uses. Failure to maintain
  CSAM/deepfake/age-fake controls could approach intent under
  AG interpretation.
trigger_conditions:
  - condition: Develops or distributes AI
    formal: |
      Note this section uses "distribute" (not "deploy") — captures
      AI providers selling AI to others, not just direct deployers.
  - condition: Sole intent for CSAM/deepfake (subsection 1) OR
              intentional age-impersonation sexual AI (subsection 2)
    formal: |
      Subsection (1) requires "sole intent." Subsection (2)
      requires "intentionally develop or distribute" — a lower bar
      but still excludes negligent or accidental cases.
evidence_required:
  - CSAM detection and filtering controls (PhotoDNA, similar tools)
  - Deepfake detection technology integration
  - Age-impersonation prevention controls (for conversational AI)
  - Terms of service prohibiting CSAM and deepfake misuse
  - Content moderation policies and enforcement records
  - Customer/end-user verification processes for high-risk AI
  - NCMEC CyberTipline reporting compliance (federal duty often
    aligned)
  - Internal red-team testing for CSAM/deepfake generation
    vulnerabilities
deadline:
  type: continuous
  value: Continuous prohibition.
exceptions:
  - description: |
      The "sole intent" standard in subsection (1) effectively
      exempts dual-purpose AI products with legitimate uses that
      may incidentally have misuse risk, IF the developer
      maintains adequate misuse prevention.
penalty_for_violation: |
  TRAIGA § 552.105 penalties: $10K-$12K curable, $80K-$200K
  uncurable, $2K-$40K/day continuing.

  STACKING:
  - Texas Penal Code § 43.26 (child pornography): felony, separate
    criminal liability
  - § 21.165 (deepfake): state jail felony, separate criminal
    liability
  - Federal CSAM laws (18 U.S.C. § 2252): federal criminal liability
  - Mandatory NCMEC CyberTipline reporting if CSAM detected
    (federal duty)

  Civil + criminal exposure stacks. Section 552.057 violations
  are by far the highest-severity TRAIGA category given the
  separate criminal liability layers.
ai_specific_application: |
  Sentainel's § 552.057 module:

  1. CSAM/DEEPFAKE CONTROL AUDIT: For customers deploying
     generative AI (image, video, voice, text), verifies presence
     of CSAM filtering (PhotoDNA, Hive Moderation, etc.) and
     deepfake detection.
  2. AGE-IMPERSONATION CONTROL AUDIT: For conversational AI
     products (especially companion/relationship AI), verifies
     controls preventing AI from age-faking in sexual contexts.
  3. CUSTOMER REPRESENTATION TEMPLATES: For AI vendor customers
     using Sentainel, generates B2B contract language requiring
     downstream customers to maintain content moderation.
  4. INCIDENT RESPONSE: For customers detecting CSAM/deepfake
     AI outputs, integrated NCMEC CyberTipline reporting workflow
     and TRAIGA breach response.
  5. NIST AI RMF MANAGE-1.3, MEASURE-2.1 CROSS-REFERENCE:
     NIST controls on harmful content monitoring align with
     § 552.057 defensive posture.
cross_references:
  - us-tx-traiga-552-052-manipulation
  - us-tx-penal-43-26
  - us-tx-penal-21-165
  - us-tx-penal-43-25
  - us-federal-csam-18-usc-2252
  - us-federal-ncmec-cybertipline-reporting
  - us-tx-traiga-552-105-nist-safe-harbor
ai_system_types_affected:
  - generative-image-ai
  - generative-video-ai
  - voice-cloning-ai
  - companion-ai-chatbot
  - text-generation-ai
  - deepfake-detection-ai
  - any-llm-with-image-generation
confidence_score: 0.95
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + direct statute review
ambiguity_notes: |
  - The cross-references to Texas Penal Code §§ 43.26, 21.165,
    43.25 mean the substantive prohibitions track existing
    criminal law. Changes to those statutes flow through to
    TRAIGA without amendment.
  - "Distribute" in subsection (1) reaches AI providers selling
    to others, not just direct deployers. This expands liability
    beyond the typical developer/deployer split.
  - For generative AI providers, the "sole intent" defense
    requires active maintenance of prohibition controls. Passive
    "we don't intend our AI to be used for CSAM" likely
    insufficient if controls are absent.
  - Age verification for AI-generated visual content is
    technologically difficult; reasonable-efforts standard likely.
sentainel_value_prop: |
  Highest-severity TRAIGA obligation by criminal-exposure
  stacking. Sentainel's preventative value:
  - Pre-deployment controls audit catches missing CSAM/deepfake
    filtering BEFORE products ship
  - NCMEC reporting integration converts a potential criminal
    liability cascade into compliant incident response
  - Documentation of misuse prevention supports the "sole intent"
    affirmative defense

  For generative AI vendors, this single obligation may justify
  enterprise-tier Sentainel pricing — the alternative is direct
  criminal liability exposure.
extracted_at: 2026-05-13T10:00:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
