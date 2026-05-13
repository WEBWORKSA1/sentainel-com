---
slug: us-tx-traiga-552-053-social-scoring
regulation_id: us-tx-traiga
article_number: "Tex. Bus. & Comm. Code § 552.053"
parent_article: null
obligation_type: PROHIBIT
status: in_force
effective_date: 2026-01-01
actors:
  - GOVERNMENT_AGENCY
required_action: |
  A governmental entity may not use or deploy an artificial
  intelligence system that evaluates or classifies a natural person
  or group of natural persons based on social behavior or personal
  characteristics, whether known, inferred, or predicted, with the
  intent to calculate or assign a social score or similar
  categorical estimation or valuation of the person or group of
  persons that results or may result in:
    (1) detrimental or unfavorable treatment of a person or group
        of persons in a social context unrelated to the context in
        which the behavior or characteristics were observed or
        noted;
    (2) detrimental or unfavorable treatment of a person or group
        of persons that is unjustified or disproportionate to the
        nature or gravity of the observed or noted behavior or
        characteristics; or
    (3) the infringement of any right guaranteed under the United
        States Constitution, the Texas Constitution, or state or
        federal law.
plain_language_summary: |
  Texas government entities are prohibited from deploying AI social
  scoring systems — China-style citizen rating systems where
  personal behavior in one context (e.g., social media activity)
  is used to determine treatment in unrelated contexts (e.g.,
  benefits eligibility, government services access).

  Three triggers for violation, any of which is sufficient:
  1. Cross-context detriment (behavior in Context A → punishment
     in Context B)
  2. Disproportionate detriment (minor behavior → severe punishment)
  3. Constitutional/legal rights infringement

  SCOPE: GOVERNMENTAL ENTITIES ONLY. Private-sector AI scoring
  (credit scores, insurance underwriting AI, employment AI, etc.)
  is NOT prohibited by this section. The intent of § 552.053 was
  specifically anti-Chinese-Communist-Party-style government
  surveillance, not a general AI scoring prohibition.

  However, private-sector scoring AI may still face liability under:
  - § 552.056 (intent-based discrimination)
  - Existing federal anti-discrimination law (Title VII, ECOA,
    Fair Housing Act, ADA)
  - Texas Insurance Code requirements
  - Federal banking regulations
trigger_conditions:
  - condition: Governmental entity scope
    formal: |
      Per § 552.001(3) — state or political subdivision exercising
      governmental functions. Hospital districts and higher ed
      institutions excluded.
  - condition: AI evaluates/classifies natural persons
    formal: |
      Targets individuals or groups, not businesses. Predictive
      scoring (inferred attributes) is captured alongside known
      attributes.
  - condition: Intent to calculate social score or categorical valuation
    formal: |
      Intent-based. Government use of AI for traditional
      administrative scoring (program eligibility, fraud detection
      with proportionate response) likely outside scope. AI for
      generalized citizen rating is the target.
  - condition: One of three detriment criteria triggered
    formal: |
      (1) Cross-context; (2) disproportionate; (3) rights-infringing.
evidence_required:
  - Governmental entity AI inventory with scoring/classification use
    cases flagged
  - Use-case purpose documentation (does the AI scoring affect
    treatment only in the originating context, or does it spill
    across?)
  - Proportionality assessment for any AI scoring affecting benefits,
    services, or enforcement
  - Constitutional review for any AI affecting protected speech,
    assembly, privacy, due process
  - Vendor agreements with governmental AI suppliers including
    s. 552.053 compliance representations
deadline:
  type: continuous
  value: |
    Continuous prohibition. Violation occurs at the moment of
    deployment with prohibited characteristics.
exceptions:
  - description: |
      No explicit statutory exceptions. Note however that the three
      detriment criteria are conjunctive ANY-of triggers — failure
      to satisfy all three means no violation.
penalty_for_violation: |
  Same as § 552.052 — see us-tx-traiga-552-105-penalties.
  Likely uncurable per the intent component → $80K-$200K range.
ai_specific_application: |
  Sentainel scope-filter: most customers are PRIVATE-SECTOR and
  OUT OF SCOPE. For governmental sub-customers (Phase 3 Municipal
  Edition), module flags AI scoring deployments and runs the
  three-criterion analysis.
cross_references:
  - us-tx-traiga-552-052-manipulation
  - us-tx-traiga-552-054-biometric-gov
  - us-tx-traiga-552-055-constitutional
  - us-tx-traiga-552-056-discrimination
  - us-tx-traiga-552-105-nist-safe-harbor
ai_system_types_affected:
  - government-citizen-rating-system
  - government-predictive-policing
  - government-benefits-fraud-scoring
  - government-recidivism-risk-scoring
  - government-immigration-risk-scoring
confidence_score: 0.93
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + direct statute review
ambiguity_notes: |
  - The boundary between legitimate government administrative AI
    (e.g., predictive maintenance for infrastructure, benefits
    eligibility) and prohibited "social scoring" is fact-specific.
    The three detriment triggers are the analytical filter.
  - Recidivism risk scoring used by Texas courts likely raises
    s. 552.053 questions because it crosses contexts (past behavior
    → future incarceration decisions). Pre-TRAIGA tools may need
    re-validation.
  - "Predictive policing" is increasingly disfavored constitutionally
    in any case; § 552.053 may layer additional Texas-specific
    exposure on top of federal constitutional issues.
sentainel_value_prop: |
  Out-of-scope clarity for private-sector customers. For
  governmental customers, defensible analytical framework for
  AI scoring deployments.
extracted_at: 2026-05-13T09:25:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
