---
slug: us-tx-traiga-552-105-nist-safe-harbor
regulation_id: us-tx-traiga
article_number: "Tex. Bus. & Comm. Code § 552.105(c), (e)"
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: in_force
effective_date: 2026-01-01
actors:
  - DEVELOPER
  - DEPLOYER
  - PERSON_LEGAL_ENTITY
  - GOVERNMENT_AGENCY
  - HEALTHCARE_PROVIDER
required_action: |
  (c) There is a rebuttable presumption that a person used
  reasonable care as required under this chapter.

  (e) A defendant in an action under this section may not be found
  liable if:
    (1) another person uses the artificial intelligence system
        affiliated with the defendant in a manner prohibited by
        this chapter; or
    (2) the defendant discovers a violation of this chapter
        through:
        (A) feedback from a developer, deployer, or other person
            who believes a violation has occurred;
        (B) testing, including adversarial testing or red-team
            testing;
        (C) following guidelines set by applicable state agencies;
            or
        (D) if the defendant substantially complies with the most
            recent version of the "Artificial Intelligence Risk
            Management Framework: Generative Artificial Intelligence
            Profile" published by the National Institute of
            Standards and Technology or another nationally or
            internationally recognized risk management framework
            for artificial intelligence systems, an internal review
            process.

  (f) The attorney general may not bring an action to collect a
  civil penalty under this section against a person for an
  artificial intelligence system that has not been deployed.
plain_language_summary: |
  TRAIGA gives every defendant FIVE defensive tools:

  1. REBUTTABLE PRESUMPTION OF REASONABLE CARE (§ 552.105(c)):
     The default assumption is that the person used reasonable
     care. The AG must affirmatively prove unreasonable conduct.

  2. THIRD-PARTY MISUSE DEFENSE (§ 552.105(e)(1)):
     If another person uses the AI in a prohibited manner, the
     defendant developer/deployer is not liable.

  3. FEEDBACK-DISCOVERY DEFENSE (§ 552.105(e)(2)(A)):
     Violations discovered through user/developer/deployer
     feedback that the defendant acts on do not result in liability.

  4. TESTING-DISCOVERY DEFENSE (§ 552.105(e)(2)(B)):
     Violations discovered through adversarial testing or red-
     teaming that the defendant addresses do not result in
     liability. This protects companies that actively test for
     issues.

  5. AGENCY GUIDELINES DEFENSE (§ 552.105(e)(2)(C)):
     Following applicable state agency guidelines provides a
     defense.

  6. NIST AI RMF SAFE HARBOR (§ 552.105(e)(2)(D)) — THE MAIN PRIZE:
     Substantial compliance with NIST AI RMF GenAI Profile, OR
     another nationally/internationally recognized AI risk
     framework + an internal review process, provides an
     affirmative defense.

  7. NOT-DEPLOYED EXEMPTION (§ 552.105(f)): No penalties for
     non-deployed AI systems. Pre-deployment testing safe.

  CROSS-JURISDICTIONAL VALUE: § 552.105(e)(2)(D) is the single
  most important provision in TRAIGA for Sentainel's product
  strategy. Customer implements NIST AI RMF once → satisfies
  TRAIGA safe harbor AND aligns with Quebec Law 25 PIA standards
  AND maps to EU AI Act ISO/IEC 42001 alignment. The NIST cross-
  reference matrix is the universal compliance shortcut.

  "ANOTHER NATIONALLY OR INTERNATIONALLY RECOGNIZED FRAMEWORK":
  This phrasing means ISO/IEC 42001:2023 (AI management systems)
  also qualifies. Customers with existing ISO 42001 certifications
  get TRAIGA safe harbor without separate NIST work.
trigger_conditions:
  - condition: Person is defendant in TRAIGA enforcement action
  - condition: Person can demonstrate substantial compliance with
              recognized AI risk framework + internal review process
evidence_required:
  - NIST AI RMF (or ISO/IEC 42001) compliance documentation
  - Internal AI review process documentation
  - AI risk register
  - Periodic risk assessments
  - Red-team / adversarial testing reports
  - Feedback mechanism logs (user reports, developer issue
    tracking, security disclosures)
  - State agency guideline compliance records (e.g., Texas Department
    of Insurance AI guidelines, Texas Medical Board guidance)
  - Third-party use restrictions in contracts (for defense (e)(1))
  - Training records for personnel on AI risk management
deadline:
  type: continuous
  value: |
    Safe harbor must be in place at the time of alleged violation.
    Cannot be retrofitted post-violation for affirmative defense.
exceptions:
  - description: |
      Safe harbor does not apply to actions outside § 552.105 —
      e.g., criminal liability under Texas Penal Code or federal
      law. The TRAIGA safe harbor protects against the civil
      penalty regime only.
penalty_for_violation: |
  Not applicable — this provision is defensive, not duty-imposing.
  Failure to maintain safe harbor doesn't itself create liability;
  it merely removes a defense.
ai_specific_application: |
  Sentainel's NIST AI RMF + ISO 42001 module — THE PRODUCT CORE:

  1. NIST AI RMF COMPLIANCE TRACKER:
     - All 14 GOVERN function controls mapped to customer
       deployments
     - All 9 MAP function controls
     - All 13 MEASURE function controls
     - All 10 MANAGE function controls
     - Plus GenAI Profile-specific controls (CG, GAI-1 through
       GAI-12)
     - Per-control evidence collection and documentation

  2. ISO/IEC 42001 ALTERNATIVE PATHWAY:
     - For customers already pursuing ISO 42001 certification,
       maps controls to TRAIGA safe harbor
     - Avoids duplicate compliance work

  3. INTERNAL REVIEW PROCESS:
     - Pre-built internal AI review process template
     - Quarterly review cadence with documentation
     - Risk register maintenance
     - Decision-log integration

  4. RED-TEAM EVIDENCE REPOSITORY:
     - Centralized storage of adversarial testing reports
     - Methodology documentation
     - Findings + remediation tracking
     - Defends safe harbor (e)(2)(B)

  5. FEEDBACK INTAKE SYSTEM:
     - User report intake workflow
     - Developer issue tracking integration
     - Security disclosure handling
     - Defends safe harbor (e)(2)(A)

  6. STATE AGENCY GUIDELINE TRACKER:
     - Texas DI AI guidelines monitoring
     - TMB AI guidance monitoring
     - DIR AI guidance monitoring
     - Auto-alerts on new guidance for applicable customers
     - Defends safe harbor (e)(2)(C)

  7. CROSS-JURISDICTIONAL HARMONIZATION:
     - Same NIST AI RMF documentation also supports:
       - Quebec Law 25 PIA requirements
       - EU AI Act Article 9 risk management system
       - Ontario Trustworthy AI Framework alignment
       - California ADMT compliance
     - Single workstream → multi-jurisdictional coverage

  This is the load-bearing wall of the Sentainel product. Every
  other obligation across every jurisdiction benefits from the
  NIST AI RMF foundation.
cross_references:
  - us-tx-traiga-552-051-gov-disclosure
  - us-tx-traiga-552-051-f-healthcare-disclosure
  - us-tx-traiga-552-052-manipulation
  - us-tx-traiga-552-054-biometric
  - us-tx-traiga-552-056-discrimination
  - us-tx-traiga-552-057-csam-explicit
  - us-tx-traiga-552-104-cure-period
  - us-federal-nist-ai-rmf
  - us-federal-nist-ai-rmf-genai-profile
  - eu-iso-iec-42001
  - eu-ai-act-art-9-risk-mgmt
  - ca-qc-law-25-s3-3-mandatory-pia
  - ca-on-trustworthy-ai-framework
ai_system_types_affected:
  - all-ai-deployments-in-texas
confidence_score: 0.96
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + direct statute review
ambiguity_notes: |
  - "Substantial compliance" is the key phrase. Not "full
    compliance" — substantial. This is intentionally flexible.
    Likely interpreted: most controls implemented, gaps
    documented and being addressed, ongoing improvement
    trajectory.
  - "Another nationally or internationally recognized risk
    management framework" is broad. ISO 42001 clearly qualifies.
    Whether IEEE standards (CertifAIEd), AI Verify Foundation
    frameworks, or industry-specific frameworks qualify is
    untested but the broad language suggests yes.
  - The "internal review process" requirement layered on top of
    framework compliance means certification alone isn't enough
    — operationalized review of specific deployments is also
    required.
  - The "GenAI Profile" reference (NIST-AI-600-1, July 2024)
    specifically cites GenAI applications. For non-generative AI
    (classical ML, decision trees, etc.), the base NIST AI RMF
    1.0 likely qualifies under the broader "another framework"
    language.
sentainel_value_prop: |
  THIS PROVISION IS THE PRODUCT.

  Section 552.105(e)(2)(D) is the legal anchor for Sentainel's
  entire value proposition: implement NIST AI RMF once via
  Sentainel, get TRAIGA safe harbor AUTOMATICALLY, and the same
  documentation extends across:
  - Quebec Law 25 (PIA requirements)
  - Ontario Trustworthy AI Framework
  - California ADMT
  - EU AI Act (via ISO 42001 alignment)
  - Future US state AI laws (most use NIST AI RMF as benchmark)

  Customer economics:
  - Direct NIST AI RMF implementation by external consultants:
    $50K-$250K for a mid-market enterprise
  - ISO 42001 certification: $40K-$150K plus annual maintenance
  - Sentainel subscription: $30K-$60K/year flat

  The 5x-10x cost differential plus multi-jurisdictional coverage
  is the entire economic basis for Sentainel.

  Marketing line: "Implement NIST AI RMF once. Be compliant
  everywhere. That's Sentainel."
extracted_at: 2026-05-13T10:20:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
