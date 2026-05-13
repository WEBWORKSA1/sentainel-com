---
slug: ca-on-human-rights-code-s9
regulation_id: ca-on-human-rights-code
article_number: "Ontario Human Rights Code, R.S.O. 1990, c. H.19, s. 9"
parent_article: null
obligation_type: PROHIBIT
actors:
  - EMPLOYER
  - PLATFORM_OPERATOR
  - PERSON_LEGAL_ENTITY
  - GOVERNMENT_AGENCY
  - HEALTHCARE_PROVIDER
required_action: |
  No person shall infringe or do, directly or indirectly, anything
  that infringes a right under this Part.
plain_language_summary: |
  THE CRITICAL CLAUSE. Section 9 prohibits indirect discrimination.
  When an AI hiring tool, lending tool, healthcare triage tool, or
  any other AI system produces discriminatory outcomes — even without
  the operator intending discrimination — Section 9 holds them liable.
  AI's algorithmic outputs ARE the discriminatory act.

  Damages are UNCAPPED. The Code has PRIMACY over all other Ontario
  statutes. This is the practical exposure ceiling for biased AI in
  Ontario, far exceeding the capped fines under Bill 149, MFIPPA,
  PHIPA, or EDSTA.
trigger_conditions:
  - condition: AI system makes or contributes to consequential decision
    formal: |
      AI used in hiring, housing, services, contracts, vocational
      associations, or membership decisions that produce differential
      outcomes across protected grounds (Code s. 5, s. 2, s. 3, s. 6,
      s. 7).
  - condition: Disparate impact on protected ground
    formal: |
      17 protected grounds: race, ancestry, place of origin, colour,
      ethnic origin, citizenship, creed, sex (including pregnancy/
      breastfeeding), sexual orientation, gender identity, gender
      expression, age, marital status, family status, disability,
      receipt of public assistance (housing only), record of offences
      (employment only).
ai_specific_application: |
  OHRC guidance: AI-driven tools that produce disparate impact across
  protected grounds constitute Code violations, regardless of operator
  intent. The four-fifths rule (80% disparate impact threshold) is a
  useful diagnostic but NOT a safe harbor under the Code.

  Examples flagged by OHRC:
  - Resume screening AI down-ranking resumes with non-anglicized
    names → place of origin / ethnic origin discrimination
  - Video interview AI scoring candidates with accents lower →
    place of origin discrimination
  - AI proxying for protected characteristics (postal code → race,
    university → age/place of origin)
  - Predictive matching AI trained on historical hiring data
    encoding prior bias → systemic discrimination
  - Healthcare triage AI using race-adjusted clinical algorithms
    (eGFR, spirometry) without justification → disability/race
    discrimination
  - Tenant screening AI weighting Canadian rental history → place
    of origin discrimination
evidence_required:
  - Disparate impact testing across all 17 protected grounds
  - AI training data audit (representative? biased?)
  - Adverse impact ratio (AIR) calculations, quarterly minimum
  - Bias audit by independent third party for high-risk AI
  - Documentation of bias mitigation steps
  - Human-in-the-loop evidence for consequential decisions
  - Vendor representations on bias testing
  - Counterfactual analysis (would outcome change if protected
    ground varied?)
penalty_for_violation: |
  Human Rights Tribunal of Ontario (HRTO):
  - General damages for injury to dignity, feelings, self-respect —
    typical $10K-$50K, no statutory cap, major awards exceeded $200K
  - Lost wages / lost opportunity — uncapped
  - Public interest orders (mandatory policy changes, training,
    monitoring, apology)
  - Cost orders (rare but possible)

  STACKING: The Code has PRIMACY. A single AI hiring incident can
  trigger:
  (a) Bill 149 s. 8.4 ESA enforcement (NoC up to $15K)
  (b) Bill 149 s. 8.3 ESA Canadian-experience violation
  (c) HRTO Code complaint (uncapped)
  (d) PHIPA if PHI was involved
  (e) MFIPPA if municipal institution
  (f) Class action under common law negligence theories
cross_references:
  - ca-on-bill-149-esa-8-4
  - ca-on-bill-149-esa-8-3
  - ca-on-mfippa-pia-mandatory-bill97
  - ca-on-bill-194-edst-5
  - ca-on-phipa-ai-governance-committee
  - us-tx-traiga-552-052-a-5
  - us-co-ai-act-6-1-1703
  - us-il-hra-ai
ohrc_guidance_documents:
  - Policy on Eliminating Discrimination in Hiring (2023 AI update)
  - AI submission on Bill 194 (Sep 2024)
  - AI submission on Bill 149 (Feb 2024)
  - Joint statement with IPC on AI human rights (2024)
confidence_score: 0.97
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-12 + manual review
sentainel_value_prop: |
  This is WHY Sentainel matters in Ontario. Bill 149 is a disclosure
  requirement with capped fines. MFIPPA gives the IPC binding orders.
  The Code is uncapped, primacy-having, judicially-developed liability.

  Sentainel customers paying for Bill 149 / MFIPPA compliance get Code
  protection as a byproduct of the bias monitoring layer. No competitor
  product (TXAIMS, Credo AI, Holistic AI) maps Code exposure for AI
  systems specifically. This is the moat.
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
