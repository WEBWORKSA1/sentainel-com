---
slug: us-tx-traiga-552-103-ag-investigation
regulation_id: us-tx-traiga
article_number: "Tex. Bus. & Comm. Code § 552.103"
parent_article: null
obligation_type: DOCUMENT
status: in_force
effective_date: 2026-01-01
actors:
  - DEVELOPER
  - DEPLOYER
  - PERSON_LEGAL_ENTITY
  - GOVERNMENT_AGENCY
  - HEALTHCARE_PROVIDER
required_action: |
  Upon receipt of an attorney general civil investigative demand
  pursuant to § 552.103, a person must be prepared to provide:

    (1) a high-level description of the purpose, intended use,
        deployment context, and associated benefits of the
        artificial intelligence system with which the person is
        affiliated;
    (2) a description of the type of data used to program or train
        the artificial intelligence system;
    (3) a high-level description of the categories of data
        processed as inputs for the artificial intelligence
        system;
    (4) a high-level description of the outputs produced by the
        artificial intelligence system;
    (5) any metrics the person uses to evaluate the performance
        of the artificial intelligence system;
    (6) any known limitations of the artificial intelligence
        system;
    (7) a high-level description of the post-deployment monitoring
        and user safeguards the person uses for the artificial
        intelligence system, including, if the person is a
        deployer, the oversight, use, and learning process
        established by the person to address issues arising from
        the system's deployment; or
    (8) any other relevant documentation reasonably necessary for
        the attorney general to conduct an investigation under
        this section.

  Civil investigative demands are issued under the procedures
  established under § 15.10 of the Business & Commerce Code.
plain_language_summary: |
  When the Texas AG receives a TRAIGA complaint through the
  consumer complaint portal (required by HB 149 § 8 to be live by
  September 1, 2026), the AG can issue a civil investigative
  demand requiring the AI deployer/developer to produce eight
  categories of documentation:

  1. Purpose, intended use, deployment context, benefits
  2. Training data types
  3. Input data categories
  4. Output descriptions
  5. Performance metrics
  6. Known limitations
  7. Post-deployment monitoring and safeguards
  8. Any other reasonably necessary documentation

  CRITICAL FOR AI: This list IS essentially a model card.
  Maintaining a current, comprehensive model card for every AI
  deployment is the operational answer to § 552.103. Customers
  without model cards face emergency documentation buildouts
  under AG deadline pressure.

  Note that the list uses "OR" between items — the AG can demand
  any subset. But experienced practitioners expect all eight to
  be requested for serious investigations.

  This is the AG's discovery tool, not a continuous documentation
  duty. However, the practical effect is that any TRAIGA-covered
  AI deployment must HAVE this documentation ready at any time,
  because the response window for civil investigative demands
  is typically short (30 days under § 15.10).
trigger_conditions:
  - condition: AG receives consumer complaint via online portal
    formal: |
      Per § 552.102, the AG maintains an online complaint mechanism
      (due by Sept 1, 2026 per HB 149 § 8). Consumer complaints
      filed there trigger AG's investigative authority.
  - condition: AG issues civil investigative demand
    formal: |
      Demand must follow § 15.10 procedures. Recipient typically
      has 30 days to respond.
evidence_required:
  - Maintained model card for each AI deployment covering all 8
    § 552.103(b) items
  - Training data documentation (sources, types, provenance)
  - Input/output schema documentation
  - Performance metrics dashboard (accuracy, fairness, latency,
    error rates)
  - Known limitations register
  - Post-deployment monitoring records
  - User safeguards documentation
  - For deployers: oversight processes, learning/improvement
    procedures
  - Document retention policy ensuring records are maintained
    long enough to respond to demands
deadline:
  type: relative
  value: |
    30 days from civil investigative demand (per § 15.10 default).
    AG may grant extensions for complex demands; in practice,
    requests for extension are routine.
exceptions:
  - description: |
      Trade secret protections may apply to specific demanded
      content — but the response must still be made, with trade
      secret claims clearly identified.
  - description: |
      Attorney-client privilege and work product doctrine apply
      to relevant subsets of documentation.
penalty_for_violation: |
  Failure to respond to a civil investigative demand has its own
  consequences under § 15.10:
  - Contempt-of-court exposure
  - AG can seek court order compelling production
  - May aggravate underlying TRAIGA penalty range (uncooperative
    defendants face uncurable classifications)

  Substantive TRAIGA penalties under § 552.105 apply if AG
  investigation reveals Subchapter B violations.
ai_specific_application: |
  Sentainel's § 552.103 readiness module:

  1. MODEL CARD AUTO-GENERATION: For every AI deployment in
     customer inventory, auto-generates a § 552.103-compliant
     model card with all 8 items.
  2. VENDOR DATA INGESTION: Pulls public model cards from common
     AI vendors (OpenAI, Anthropic, Google, Microsoft, Cohere)
     and aligns to § 552.103 structure.
  3. CIVIL INVESTIGATIVE DEMAND RESPONSE TEMPLATE: Pre-formatted
     response document; customer pulls latest documentation and
     assembles formal response in hours rather than weeks.
  4. UPDATE TRIGGERS: When AI vendor changes models, when
     customer deploys new AI use case, when limitations are
     discovered → auto-prompts for model card update.
  5. INTEGRATED WITH NIST AI RMF: The same documentation supporting
     model cards also feeds the NIST AI RMF safe harbor evidence
     package (§ 552.105(e)(2)(D)).
cross_references:
  - us-tx-traiga-552-101-enforcement
  - us-tx-traiga-552-102-complaints
  - us-tx-traiga-552-104-cure-period
  - us-tx-traiga-552-105-nist-safe-harbor
  - eu-ai-act-art-11-technical-documentation
  - ca-qc-law-25-s3-3-mandatory-pia
ai_system_types_affected:
  - all-ai-deployments-in-texas
confidence_score: 0.94
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + direct statute review
ambiguity_notes: |
  - The "high-level" qualifier on most items suggests the AG is
    not demanding deep technical implementation details by default.
    But "any other relevant documentation reasonably necessary"
    leaves room for AG to expand scope.
  - The "or" between items is technical drafting — the AG can
    demand any subset, but practical investigations cover most or
    all items.
  - The complaint portal goes live by September 1, 2026 per
    HB 149 § 8. Before then, AG investigative authority is
    technically available but practically limited.
  - The civil investigative demand procedure under § 15.10 is
    not TRAIGA-specific — it's the general Texas AG investigative
    authority, used across all Business & Commerce Code chapters.
sentainel_value_prop: |
  Civil investigative demands are the AG's gateway to TRAIGA
  enforcement. Customers who can respond comprehensively within
  the 30-day window minimize AG suspicion and reduce penalty
  exposure.

  Sentainel's pre-built model card infrastructure converts a
  potential 200-hour scramble (engineering team + legal team
  documenting AI deployments under deadline) into a 4-hour
  document assembly task.

  This obligation also doubles as a customer-acquisition wedge:
  "Has your AI deployment received an AG civil investigative
  demand? Could you respond in 30 days?" is a powerful FUD
  question that Sentainel's product directly addresses.
extracted_at: 2026-05-13T10:30:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
