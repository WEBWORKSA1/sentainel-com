---
slug: us-tx-traiga-552-051-gov-disclosure
regulation_id: us-tx-traiga
article_number: "Tex. Bus. & Comm. Code § 552.051(b)-(e)"
parent_article: null
obligation_type: DISCLOSE
status: in_force
effective_date: 2026-01-01
actors:
  - GOVERNMENT_AGENCY
required_action: |
  A governmental agency that makes available an artificial
  intelligence system intended to interact with consumers shall
  disclose to each consumer, before or at the time of interaction,
  that the consumer is interacting with an artificial intelligence
  system.

  Disclosure obligations under § 552.051(d):
  (1) must be clear and conspicuous;
  (2) must be written in plain language; and
  (3) may not use a dark pattern as defined by § 541.001.

  Disclosure may be provided via hyperlink to a separate Internet
  webpage (§ 552.051(e)).

  The disclosure is required REGARDLESS of whether it would be
  obvious to a reasonable consumer that they are interacting with
  an AI system (§ 552.051(c)).
plain_language_summary: |
  IMPORTANT SCOPE CORRECTION: This obligation applies ONLY to
  governmental agencies, NOT to private businesses.

  Texas state and local government agencies that deploy AI systems
  to interact with Texas consumers must clearly disclose AI use
  before or at the time of interaction. The disclosure must be
  clear, in plain language, and free of dark patterns.

  PRIVATE-SECTOR CHATBOTS, AI VOICE AGENTS, AND CONSUMER-FACING
  AI ARE NOT GOVERNED BY THIS PROVISION. The final HB 149 stripped
  the broader private-sector disclosure duty that existed in
  earlier drafts. Private deployers selling into Texas are not
  required by TRAIGA to disclose AI use to consumers — though
  they may still face FTC, sectoral, or contract-based duties.

  Healthcare disclosure is a separate duty (see
  us-tx-traiga-552-051-f-healthcare).
trigger_conditions:
  - condition: Governmental agency scope
    formal: |
      "Governmental entity" per § 552.001(3): "any department,
      commission, board, office, authority, or other administrative
      unit of this state or of any political subdivision of this
      state, that exercises governmental functions under the
      authority of the laws of this state." Excludes hospital
      districts and institutions of higher education.
  - condition: AI system intended to interact with consumers
    formal: |
      "Consumer" per § 551.001(2): "an individual who is a resident
      of this state acting only in an individual or household
      context. The term does not include an individual acting in a
      commercial or employment context." Limits to citizen-facing
      interactions, not employee-facing or B2B uses.
  - condition: System makes a decision via AI
    formal: |
      "AI system" per § 551.001(1): broadly defined as any machine-
      based system that infers from inputs how to generate outputs
      including content, decisions, predictions, or recommendations,
      capable of influencing physical or virtual environments.
evidence_required:
  - Inventory of governmental agency AI systems interacting with
    consumers
  - Disclosure templates used at point of interaction
  - UX screenshots showing pre-interaction disclosure placement
  - Plain-language assessment (Grade 8 reading level standard or
    equivalent readability test)
  - Dark pattern compliance assessment
  - Hyperlink target review (if disclosure delivered via link)
  - Log of disclosure delivery per session/interaction
deadline:
  type: continuous
  value: |
    Before or at the time of each consumer interaction. No grace
    period; obligation is in force from 2026-01-01 for all qualifying
    governmental AI deployments.
exceptions:
  - description: |
      The exception in §552.051(e) allowing hyperlink delivery is
      a delivery mechanism, not a substantive exemption. Disclosure
      still required.
penalty_for_violation: |
  - Curable violation (or breach of cure statement): $10,000 -
    $12,000 per violation (§ 552.105(a)(1))
  - Uncurable violation: $80,000 - $200,000 per violation
    (§ 552.105(a)(2))
  - Continuing violation: $2,000 - $40,000 per day (§ 552.105(a)(3))
  - 60-day cure window available under § 552.104 if person:
    (a) cures, (b) provides supporting documentation, and
    (c) makes policy changes to prevent recurrence
  - Additional licensing agency sanctions up to $100,000 plus
    license suspension/revocation under § 552.106
  - Injunctive relief + attorney's fees and costs under § 552.105(b)
  - NO private right of action under § 552.101(b) — AG only

  Rebuttable presumption of reasonable care under § 552.105(c).
  Affirmative defense via NIST AI RMF substantial compliance under
  § 552.105(e)(2)(D).
ai_specific_application: |
  Sentainel's TRAIGA Section 552.051 module:

  1. SCOPE FILTER: Auto-detects whether deployer is a "governmental
     entity" under § 552.001(3) (state agencies + political
     subdivisions, excluding hospital districts and higher ed).
     Most Sentainel customers will be OUT OF SCOPE for this
     particular obligation — module clearly indicates non-
     applicability rather than producing unnecessary compliance work.
  2. DISCLOSURE GENERATOR: For in-scope governmental agencies,
     produces compliant pre-interaction disclosure text.
  3. DARK PATTERN AUDIT: Reviews disclosure UI against § 541.001
     dark-pattern definitions (deceptive interfaces, manipulative
     defaults, friction barriers to AI awareness).
  4. CONSUMER-VS-EMPLOYEE CLASSIFIER: Auto-categorizes interactions
     to confirm consumer scope (individual/household context only;
     commercial and employment interactions excluded).
  5. NIST AI RMF SAFE HARBOR LINK: Cross-references this obligation
     to NIST RMF GOVERN-1.1, MAP-3.3, and MEASURE-3.1 controls;
     documents alignment as affirmative defense.
cross_references:
  - us-tx-traiga-552-051-f-healthcare
  - us-tx-traiga-552-104-cure-period
  - us-tx-traiga-552-105-penalties
  - us-tx-traiga-552-105-nist-safe-harbor
  - ca-qc-law-25-s12-1-automated-decision-making
  - ca-on-bill-149-esa-8-4
  - us-federal-nist-ai-rmf-govern-1-1
ai_system_types_affected:
  - government-chatbot
  - government-eligibility-determination-ai
  - government-customer-service-ai
  - government-benefits-screening-ai
  - municipal-311-ai-agent
confidence_score: 0.95
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + direct statute review
ambiguity_notes: |
  - The earlier drafts of TRAIGA had broader private-sector
    disclosure duties; the final enacted statute narrows it to
    "governmental agency." This was a deliberate legislative choice.
    Some compliance vendors still describe TRAIGA as requiring
    broad private-sector AI disclosure — they are incorrect about
    the enacted law.
  - "Clear and conspicuous" is not statutorily defined for TRAIGA
    purposes. Texas case law on similar standards (e.g., TDCPA)
    suggests font size, contrast, and placement matter; safest
    practice mirrors FTC clear-and-conspicuous guidance.
  - Hyperlink delivery raises questions about whether the AI use
    is disclosed "before or at the time of interaction" if the
    user must click through. Conservative reading: in-page
    disclosure is safer than hyperlink-only.
  - Whether a quasi-governmental entity (e.g., state-chartered
    nonprofit, public-private partnership) counts as a governmental
    entity is unsettled. The s. 552.001(3) definition focuses on
    "exercising governmental functions" — fact-dependent.
sentainel_value_prop: |
  Most Sentainel customers will be PRIVATE-SECTOR enterprises and
  therefore OUT OF SCOPE for this obligation. Sentainel's value
  here is twofold:

  1. PREVENTING UNNECESSARY COMPLIANCE WORK: Sentainel correctly
     identifies that this obligation does not apply to private
     sector. Customers who think they need to comply with TRAIGA
     consumer disclosure are usually working from outdated or
     inaccurate compliance content. Sentainel saves them
     consulting fees and audit time.

  2. CORRECT SCOPING FOR GOVERNMENT CUSTOMERS: For state/municipal
     customers in Texas (a natural Phase 3 Municipal Edition fit),
     this is a live, enforceable obligation with significant
     penalty exposure. Sentainel's governmental edition would
     pre-build the disclosure templates and audit trail tooling.
extracted_at: 2026-05-13T09:00:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
