---
slug: us-tx-traiga-552-056-discrimination
regulation_id: us-tx-traiga
article_number: "Tex. Bus. & Comm. Code § 552.056"
parent_article: null
obligation_type: PROHIBIT
status: in_force
effective_date: 2026-01-01
actors:
  - DEVELOPER
  - DEPLOYER
  - PERSON_LEGAL_ENTITY
  - EMPLOYER
  - INSURER
  - FINANCIAL_INSTITUTION
required_action: |
  (b) A person may not develop or deploy an artificial intelligence
  system with the intent to unlawfully discriminate against a
  protected class in violation of state or federal law.

  (c) For purposes of this section, a disparate impact is not
  sufficient by itself to demonstrate an intent to discriminate.

  Definitions per § 552.056(a):
  - "Protected class": a group with characteristics protected from
    discrimination by state or federal civil rights laws, including
    race, color, national origin, sex, age, religion, or disability.

  Carveouts:
  (d) Insurance entities subject to applicable Texas Insurance Code
      provisions regulating unfair discrimination are exempt for
      insurance-services purposes.
  (e) Federally insured financial institutions are deemed compliant
      if they comply with applicable federal/state banking laws.
plain_language_summary: |
  TRAIGA's discrimination provision is one of the most industry-
  friendly provisions in any state AI law. Three critical features:

  1. INTENT-BASED: The plaintiff (AG) must prove INTENT to
     discriminate. Pure outcomes — even systematically biased
     outcomes — are not enough.

  2. DISPARATE IMPACT EXPLICITLY INSUFFICIENT (§ 552.056(c)):
     Statistical evidence of disparate impact across protected
     groups, standing alone, does NOT prove intent. This is a major
     departure from federal employment law (Title VII Griggs
     framework) and a significant industry concession.

  3. SECTORAL CARVEOUTS: Insurance (regulated by Texas Department
     of Insurance) and federally insured financial institutions
     (regulated by federal banking) are exempt for activities
     covered by their primary regulators.

  CRITICAL FOR AI: TRAIGA does NOT impose a duty to test for or
  remediate AI bias. Existing federal anti-discrimination laws
  (Title VII for employment, ECOA for credit, Fair Housing Act for
  housing, ADA for disability) DO impose such duties, including
  disparate impact analysis. TRAIGA's intent-based standard is
  ADDITIONAL Texas-specific exposure layered on top of federal
  duties, not a replacement.

  Net practical effect for AI vendors and deployers:
  - Federal Title VII duties still apply (disparate impact valid
    theory)
  - TRAIGA adds Texas-specific exposure but only for intent-based
    discrimination
  - Bias-mitigation work remains essential for federal compliance;
    TRAIGA does not change the calculus
  - Sectoral carveouts mean insurance AI and bank AI face primary
    regulation under their existing regulators, not TRAIGA
trigger_conditions:
  - condition: Develops or deploys AI
  - condition: Intent to discriminate against protected class
    formal: |
      Plaintiff must prove subjective intent. Conduct-based evidence
      may help (e.g., training data deliberately curated to encode
      bias) but pure statistical disparities do not suffice.
  - condition: In violation of state or federal law
    formal: |
      The underlying discrimination must violate existing law.
      TRAIGA does not create new categories of protected classes.
evidence_required:
  - AI bias testing documentation (for federal Title VII compliance,
    not directly for TRAIGA but supports good-faith defense)
  - Training data audit showing no intentional bias encoding
  - Model card or technical documentation
  - Vendor due diligence including discrimination policies
  - Internal review processes for high-stakes AI affecting
    protected classes
  - Anti-discrimination training records for AI development teams
  - Marketing review showing no targeting based on protected
    characteristics
  - Sectoral compliance documentation (Insurance Code, banking
    regulations) where applicable
deadline:
  type: continuous
  value: Continuous prohibition.
exceptions:
  - description: |
      Insurance entities subject to Texas Insurance Code (Section
      82.002(a)) for insurance-services activities (§ 552.056(d)).
  - description: |
      Federally insured financial institutions complying with
      federal/state banking law (§ 552.056(e)).
penalty_for_violation: |
  § 552.105 penalty range. Likely uncurable per the intent
  component → $80K-$200K range.

  CRITICAL: Underlying state/federal discrimination law penalties
  also apply. A discriminatory AI hiring tool might face:
  - TRAIGA penalty: $80K-$200K per violation
  - EEOC administrative remedies
  - Title VII private litigation (no preemption by TRAIGA)
  - Class action exposure under federal law (no preemption)

  TRAIGA stacks on top of federal exposure rather than displacing it.
ai_specific_application: |
  Sentainel's § 552.056 module:

  1. PROTECTED-CLASS-AWARE AI INVENTORY: Auto-flags AI deployments
     making decisions affecting hiring, lending, housing, insurance,
     and other protected-class-sensitive contexts.
  2. INTENT-EVIDENCE TRACKER: Documents non-discriminatory intent
     — design rationale, fairness considerations, vendor selection
     criteria, training data sourcing.
  3. FEDERAL LAW HARMONIZATION: Because federal anti-discrimination
     law DOES impose disparate impact duties even though TRAIGA
     does not, the module's bias testing requirements track
     federal law (Title VII, ECOA, FHA, ADA), with TRAIGA as a
     secondary check.
  4. SECTORAL CARVEOUT MATRIX: Auto-classifies insurance and
     banking customers as carved out for in-scope activities;
     directs them to applicable sectoral compliance.
  5. NIST AI RMF MEASURE-2.11 CROSS-REFERENCE: NIST's fairness
     and bias evaluation control directly addresses the
     documentation needed for the affirmative defense.
cross_references:
  - us-tx-traiga-552-052-manipulation
  - us-tx-traiga-552-053-social-scoring
  - us-tx-traiga-552-055-constitutional
  - us-tx-traiga-552-105-nist-safe-harbor
  - us-federal-title-vii-eeoc
  - us-federal-ecoa-fair-lending
  - us-federal-fair-housing-act
  - us-federal-ada-employment
  - ca-on-human-rights-code-s9
  - ca-qc-charter-of-human-rights
ai_system_types_affected:
  - resume-screening-ai
  - hiring-decision-ai
  - performance-evaluation-ai
  - credit-scoring-ai
  - underwriting-ai
  - tenant-screening-ai
  - housing-pricing-ai
  - educational-admission-ai
  - government-benefits-eligibility-ai
confidence_score: 0.94
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + direct statute review
ambiguity_notes: |
  - The "intent-not-impact" standard is a significant departure
    from federal employment law where disparate impact is
    actionable. TRAIGA does NOT preempt federal law, so AI vendors
    face dual standards: TRAIGA (intent) AND Title VII (impact).
    Customers must comply with the stricter standard for federal
    purposes.
  - Whether "deliberate indifference" to known bias patterns rises
    to "intent" is unresolved. AI vendors who know their products
    produce biased outputs but ship anyway face risk that AG could
    argue knowing deployment = intent.
  - Sectoral carveouts (insurance, banking) are activity-specific.
    A bank using AI for marketing (not banking activity) probably
    isn't carved out for that marketing AI.
  - The state-OR-federal-law trigger means TRAIGA reaches
    discrimination that's actionable under any state or federal
    civil rights statute. The provision essentially creates a
    Texas-specific penalty regime layered on existing federal law.
sentainel_value_prop: |
  TRAIGA § 552.056 alone is a moderate compliance burden because
  the intent standard is high. But customers don't have the luxury
  of optimizing for TRAIGA alone — they must comply with federal
  Title VII / ECOA / FHA / ADA which apply disparate impact
  standards.

  Sentainel's value:
  - Unified compliance posture addresses BOTH TRAIGA AND federal
    standards through one bias-testing framework
  - Documentation defends against TRAIGA intent allegations
    (showing non-discriminatory intent)
  - Same documentation supports federal disparate impact defense
  - NIST AI RMF safe harbor (§ 552.105) anchors the TRAIGA
    affirmative defense

  Cross-border note: For Sentainel customers operating in Ontario
  AND Texas, Ontario Human Rights Code § 9 applies parallel
  prohibitions, but Ontario uses an "adverse impact" standard
  closer to federal Title VII than TRAIGA's intent standard.
  Customers face the stricter Ontario standard cross-border.
extracted_at: 2026-05-13T09:50:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
