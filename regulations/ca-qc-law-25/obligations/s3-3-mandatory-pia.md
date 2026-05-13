---
slug: ca-qc-law-25-s3-3-mandatory-pia
regulation_id: ca-qc-law-25
article_number: "P-39.1 s. 3.3 (added by Law 25)"
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: in_force
effective_date: 2023-09-22
actors:
  - PERSON_LEGAL_ENTITY
  - PLATFORM_OPERATOR
  - EMPLOYER
  - HEALTHCARE_PROVIDER
  - GOVERNMENT_AGENCY
required_action: |
  Any person carrying on an enterprise must conduct a privacy impact
  assessment (PIA) for any project to acquire, develop, or overhaul
  an information system or electronic service delivery system
  involving the collection, use, communication, keeping, or destruction
  of personal information.

  The PIA must be proportionate to the sensitivity of the information,
  the purpose for which it is to be used, the quantity and
  distribution of the information, and the medium in which it is
  stored. The PIA must be conducted before the project is implemented.

  The assessment must address: necessity and proportionality of the
  processing, risks to privacy, technical and administrative
  safeguards, retention and destruction, and means by which
  individuals can exercise their rights.
plain_language_summary: |
  Section 3.3 requires a written Privacy Impact Assessment BEFORE
  acquiring, developing, or overhauling any system that processes
  personal information. This is one of the most consequential
  obligations under Law 25 for AI deployments.

  CRITICAL FOR AI: Every new AI tool processing Quebec residents'
  personal information requires a PIA before deployment. This
  includes:
  - Microsoft Copilot, Google Workspace AI, and similar embedded AI
  - Standalone AI vendors (ChatGPT Enterprise, Claude for Work, etc.)
  - Custom AI models trained on Quebec data
  - Third-party AI features added to existing software via vendor
    updates (e.g., your CRM adds AI features → PIA required for
    the update)

  PIAs must be PROPORTIONATE: higher-sensitivity data (health,
  financial, biometric) demands more rigorous PIAs. Lower-risk
  processing can use lighter PIAs but the PIA itself is not optional.
trigger_conditions:
  - condition: Enterprise scope
    formal: |
      Any person carrying on an enterprise (Civil Code art. 1525).
  - condition: Project to acquire, develop, or overhaul a system
    formal: |
      Triggering events: new system acquisition, new development,
      major overhaul, significant new feature, new vendor, new
      AI model version (if material), new data type processed.
      Minor patches and routine maintenance do not trigger.
  - condition: System processes personal information
    formal: |
      Broadly interpreted — any system handling identifying
      information, including indirectly identifying information.
evidence_required:
  - Written PIA document following CAI guidance template
  - PIA completion timestamp predating system deployment
  - Privacy officer review and sign-off
  - Sensitivity classification of personal information
  - Necessity and proportionality analysis
  - Risk register with mitigation measures
  - Technical safeguards inventory
  - Administrative safeguards documentation
  - Retention and destruction schedules
  - Individual rights workflow descriptions
  - For AI systems specifically:
    - AI vendor due diligence record
    - Cross-border data flow analysis (links to s. 17 PIA)
    - Automated decision-making analysis (links to s. 12.1)
    - Algorithmic bias risk assessment
    - Training data analysis (if model trained on Quebec data)
    - Model card or equivalent technical documentation
    - Secondary use prohibition in vendor contract
    - PIA update record on each material AI system change
deadline:
  type: relative
  value: |
    Before system implementation. PIA must precede deployment, not
    follow it. Significant updates require PIA refresh before the
    update is deployed.
exceptions:
  - description: |
      Routine maintenance and minor patches that do not change
      processing purpose, scope, or method do not trigger new PIA
      requirements.
  - description: |
      Use of personal information for purely internal administrative
      purposes (employee payroll, basic HR) does not require PIA
      unless the processing method introduces new risks.
penalty_for_violation: |
  - Administrative Monetary Penalty: up to CAD $10M or 2% of
    worldwide turnover (P-39.1 s. 90.1)
  - Penal sanction: up to CAD $25M or 4% of worldwide turnover
    (P-39.1 s. 91) for serious or repeat violations
  - CAI may issue compliance order requiring PIA completion before
    further processing
  - Failure to conduct PIA is treated by CAI as an aggravating
    factor in other Law 25 violations stemming from the same
    system
  - Private right of action: minimum CAD $1,000 per individual
    (P-39.1 s. 93.1) where lack of PIA contributed to harm
ai_specific_application: |
  Sentainel's PIA generator for Law 25 includes:

  1. AI VENDOR ASSESSMENTS: Pre-built PIA modules for common AI
     vendors (OpenAI, Anthropic, Google, Microsoft, Cohere) with
     pre-populated vendor information and risk profiles
  2. PROPORTIONALITY CALCULATOR: Auto-classifies AI deployments by
     risk tier; generates appropriately scaled PIA
  3. CROSS-BORDER FLOW MAPPING: Auto-detects when AI processing
     involves cross-border data flows; triggers s. 17 PIA addendum
  4. BIAS RISK MODULE: Integrates with Quebec Charter of Human
     Rights and Freedoms protected grounds for discrimination
     risk assessment
  5. DELTA DETECTION: Monitors AI vendor changes (model updates,
     ToS revisions, new features) and prompts PIA refresh
  6. AUDIT TRAIL: Hash-chained PIA history; CAI-defensible
     timestamping
cross_references:
  - ca-qc-law-25-s12-1-automated-decision-making
  - ca-qc-law-25-s14-consent
  - ca-qc-law-25-s17-cross-border-transfers
  - ca-qc-law-25-s3-1-privacy-officer
  - ca-on-mfippa-pia-mandatory-bill97
  - ca-on-phipa-ai-pia-required
  - eu-gdpr-art-35-dpia
ai_system_types_affected:
  - all-ai-systems-processing-personal-info
  - chatgpt-enterprise
  - claude-for-work
  - microsoft-copilot
  - google-workspace-ai
  - custom-trained-models
  - third-party-ai-saas
confidence_score: 0.94
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + manual review
ambiguity_notes: |
  - "Proportionate" PIA standard means PIAs scale with risk; CAI
    has not published a definitive scoring rubric. Sentainel uses
    a 5-tier risk classification derived from CAI casework.
  - The "overhaul" threshold for triggering new PIA is interpretive.
    Conservative approach: any change affecting privacy posture
    triggers refresh.
  - Coordination with PIAs required under sectoral regulators
    (e.g., AMF for financial services) is unclear in some sectors;
    safest approach is one comprehensive PIA satisfying all regimes.
sentainel_value_prop: |
  Every Quebec enterprise deploying AI needs a Section 3.3 PIA.
  Most don't have one. Sentainel provides:
  - PIA generation in minutes, not weeks
  - Pre-vetted AI vendor profiles
  - Cross-jurisdictional reusability (the same PIA can support
    MFIPPA, PIPEDA, GDPR alignment)
  - CAI-defensible documentation format

  This is core ACV justification: a single legal-counsel-drafted
  PIA costs $3,000-$8,000. Sentainel generates PIA-grade documents
  for unlimited AI systems within a $2,499/mo subscription.
extracted_at: 2026-05-13T07:05:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
