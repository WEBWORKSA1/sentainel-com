---
slug: ca-qc-law-25-s8-privacy-by-default
regulation_id: ca-qc-law-25
article_number: "P-39.1 s. 9.1 (added by Law 25)"
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: in_force
effective_date: 2023-09-22
actors:
  - PERSON_LEGAL_ENTITY
  - PLATFORM_OPERATOR
required_action: |
  Any person carrying on an enterprise who collects personal
  information by offering a technological product or service having
  privacy settings to the public must ensure that, by default, those
  settings provide the highest level of confidentiality, without
  any intervention by the person concerned.

  This obligation does not apply to browser cookies (specifically
  excluded by statute).
plain_language_summary: |
  Section 9.1 requires "privacy by default" — when an enterprise
  offers a product or service with privacy settings, the default
  configuration must be the most privacy-protective option.

  Users may opt to LOWER their privacy (e.g., enable AI
  personalization, allow data use for training) but must
  affirmatively do so — defaults cannot be set to less-protective
  options.

  CRITICAL FOR AI: AI features added to products must default to
  OFF, not ON. This includes:
  - AI personalization features (default OFF until consent)
  - AI training data inclusion (default OFF — opt-in only)
  - AI-driven recommendations (default OFF for non-essential)
  - AI behavioral analytics (default OFF)
  - AI feature improvements via user data (default OFF)

  Vendors who ship AI features enabled-by-default are non-compliant.
trigger_conditions:
  - condition: Technological product or service offered to public
    formal: |
      Software, app, website, SaaS, or platform with user-
      configurable privacy settings.
  - condition: Privacy settings exist
    formal: |
      Any configurable option affecting collection, use, or
      communication of personal information.
evidence_required:
  - Default settings audit
  - Privacy settings inventory
  - Documentation of default state for each setting
  - User flow showing privacy-protective defaults
  - Records of consent for any non-default privacy-reducing actions
  - For AI features specifically:
    - AI feature flag defaults (OFF for new users)
    - Opt-in flow for AI features
    - Documentation that AI training data inclusion is opt-in
deadline:
  type: continuous
  value: |
    Privacy-by-default maintained continuously; new features must
    launch with privacy-protective defaults.
exceptions:
  - description: |
      Browser cookies are specifically excluded from this obligation.
penalty_for_violation: |
  - Administrative Monetary Penalty: up to CAD $10M or 2% of
    worldwide turnover (P-39.1 s. 90.1)
  - Specifically called out in CAI compliance audits
sentainel_value_prop: |
  Sentainel's product audit module reviews AI feature default
  states across vendor stacks and flags non-compliant defaults.
  This is a frequent CAI audit finding category.
cross_references:
  - ca-qc-law-25-s14-consent
  - ca-qc-law-25-s3-3-mandatory-pia
  - eu-gdpr-art-25-privacy-by-design
confidence_score: 0.93
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + manual review
ambiguity_notes: |
  - The "highest level of confidentiality" is a relative standard
    interpreted per the product's configuration space. Best practice:
    most privacy-protective option among reasonable choices.
extracted_at: 2026-05-13T07:40:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
