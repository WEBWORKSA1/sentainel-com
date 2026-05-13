---
slug: us-il-hra-ai-2-102-l-1-no-zipcode-proxy
regulation_id: us-il-hra-ai
article_number: "775 ILCS 5/2-102(L)(1) (second clause)"
parent_article: null
obligation_type: PROHIBIT
status: in_force
effective_date: 2026-01-01
actors:
  - EMPLOYER
  - AI_DEPLOYER
  - AI_DEVELOPER
required_action: |
  It is a civil rights violation, with respect to recruitment,
  hiring, promotion, renewal of employment, selection for
  training or apprenticeship, discharge, discipline, tenure, or
  the terms, privileges, or conditions of employment, for an
  employer to use zip codes as a proxy for protected classes
  under this Article.
plain_language_summary: |
  Illinois bans the use of zip codes as a stand-in for protected
  characteristics in any AI-driven employment decision. Because
  many U.S. zip codes are racially or economically segregated,
  using them as a feature in hiring or promotion AI can produce
  discriminatory outcomes that mirror redlining. Illinois calls
  this out specifically and prohibits it.

  Operational implication: any model feature that is a zip code,
  a derivative of zip code (city, neighborhood, school district,
  commute time), or any geographic identifier correlated with
  protected classes must be removed from training data and
  inference inputs OR justified as not functioning as a proxy.
trigger_conditions:
  - condition: Employer scope
    formal: |
      Same as 2-102(L)(1) discrimination obligation — 15+
      employees in Illinois, etc.
  - condition: Use of zip code (or derivative) in AI feature set
    formal: |
      Zip code used directly or as a derived feature in AI input,
      training data, or scoring. Includes engineered features
      that encode zip code without using it directly: commute
      distance, neighborhood crime statistics, school district,
      median household income at zip-code level.
  - condition: Use in covered employment decision
    formal: |
      Same scope as 2-102(L)(1): recruitment, hiring, promotion,
      renewal, training/apprenticeship selection, discharge,
      discipline, tenure, terms/privileges/conditions.
evidence_required:
  - Feature inventory for every AI deployment showing presence/absence of zip code or derivatives
  - Documentation of proxy analysis (correlation of remaining features with zip code)
  - Vendor due diligence confirming third-party AI does not use zip code or correlated features
  - Removal log if previously-deployed AI used zip code
  - Justification documentation for any retained geographic feature (must show non-proxy function)
exceptions:
  - exception: Geographic eligibility verification
    formal: |
      Where the position has a bona fide geographic eligibility
      requirement (must be authorized to work in a specific
      country, region, etc.), location data may be used for that
      narrow purpose. Pretextual use is not protected.
  - exception: Affirmative inclusion programs
    formal: |
      Where geographic data is used to support inclusion of
      diverse candidates rather than to filter against protected
      classes — paralleling 775 ILCS 5/2-102(L) introduced bill
      language. IDHR rulemaking expected to clarify.
deadline:
  type: continuous
  value: ongoing
penalty_for_violation: |
  Civil rights violation. Same penalty structure as 2-102(L)(1)
  discrimination clause: cease-and-desist, back pay, compensatory
  damages, attorney's fees + aggravated $100K penalty (775 ILCS
  5/8A-104(F)).
ai_specific_application: |
  Sentainel's discovery and classification layers run a
  feature-detection pass on each AI deployment that includes:

  1. Direct zip-code use detection in input schemas
  2. Derived feature analysis — flag any feature with high
     correlation to zip code (commute, geo-derived
     demographics, address-based scoring)
  3. Vendor questionnaire automation — third-party AI vendors
     must attest to non-use of zip code or correlated features
  4. Documentation generation — produces the feature-inventory
     evidence that demonstrates compliance for IDHR inquiry

  This is a high-confidence, low-ambiguity obligation that
  Sentainel can fully automate.
cross_references:
  - regulation: us-tx-traiga
    article: us-tx-traiga-552-056-discrimination
    relationship: stricter_version
    notes: |
      Texas TRAIGA does not explicitly prohibit zip code proxies.
      Illinois is stricter on this specific feature category.
  - regulation: us-il-hra-ai
    article: us-il-hra-ai-2-102-l-1-no-discrimination
    relationship: companion
    notes: |
      Same statutory subsection (L)(1); the zip-code prohibition
      is essentially a per-se rule reinforcing the disparate-impact
      prohibition. Compliance with one supports the other.
confidence_score: 0.97
confidence_tier: high
ambiguity_notes: |
  - "Zip code" is not defined. Whether ZIP+4, ZCTA, or
    international postal-code analogs count is unsettled.
    Treat all postal-code-equivalent fields as in-scope.
  - The "proxy" determination is fact-specific. A zip code field
    used to issue COBRA notices is not a proxy; a zip code field
    fed into a hiring score IS a proxy. Sentainel's
    classification rule: any AI feature that influences the
    employment decision and includes zip code is presumptively a
    proxy unless documented otherwise.
  - Correlation thresholds for "derived features" are not
    statutorily defined. Conservative practitioners use Pearson r
    > 0.5 as a flag for proxy analysis; more aggressive use
    r > 0.3. Sentainel's default: flag at r > 0.4 with manual
    review.
sentainel_value_prop: |
  Zip-code proxy detection is mechanical and complete. Sentainel
  inventories every feature in every customer AI deployment and
  flags zip-code presence or high-correlation derivatives. This
  is one of the cleanest "we found a problem you didn't know you
  had" stories in the platform.
extraction_method: claude-opus-4-7-2026-05-13 + direct statute review
extracted_at: 2026-05-13
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---

# 775 ILCS 5/2-102(L)(1) (second clause) — Zip-Code Proxy Prohibition

## Statutory Anchor

> ... or to use zip codes as a proxy for protected classes under this Article.

— **775 ILCS 5/2-102(L)(1)**, as added by Public Act 103-804, eff. January 1, 2026.

## Why This Obligation Matters

Illinois is the first U.S. state to enact a per-se prohibition on zip code as a proxy variable in AI employment decisions. Most state and federal frameworks rely on general disparate-impact theory; Illinois names the variable directly.

This is significant because zip code is a notoriously strong predictor of race and class in the U.S., and many enterprise AI hiring tools include it (directly or indirectly via commute distance, neighborhood scoring, school district encoding). Illinois has effectively forced a feature audit for every employer using AI hiring tools that touches Illinois employees.

## Sentainel Implementation Approach

See `ai_specific_application` in frontmatter.

## Compliance Posture

Three-step automated audit:

1. **Direct detection**: scan all model input schemas for zip-code-typed fields
2. **Derived detection**: correlation analysis against any geographic or address-derived feature
3. **Vendor attestation**: third-party AI must contractually warrant non-use

Document everything in the feature inventory; refresh on every model version change.
