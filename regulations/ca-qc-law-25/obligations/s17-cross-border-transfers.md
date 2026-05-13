---
slug: ca-qc-law-25-s17-cross-border-transfers
regulation_id: ca-qc-law-25
article_number: "P-39.1 s. 17 (amended by Law 25)"
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: in_force
effective_date: 2023-09-22
actors:
  - PERSON_LEGAL_ENTITY
  - PLATFORM_OPERATOR
  - EMPLOYER
required_action: |
  Before communicating personal information outside Quebec, or
  entrusting a person or body outside Quebec with the task of
  collecting, using, communicating, or keeping such information on
  its behalf, a person carrying on an enterprise must conduct a
  privacy impact assessment.

  The assessment must take into account, in particular, the
  sensitivity of the information, the purposes for which it is
  to be used, the protection measures, including those that are
  contractual, that would apply to it, and the legal framework
  applicable in the State in which the information would be
  communicated, including the personal information protection
  principles applicable in that State.

  The information may be communicated only if the assessment
  establishes that the information would receive ADEQUATE
  PROTECTION, in particular in light of generally recognized
  principles regarding the protection of personal information.

  The communication of the information must be the subject of a
  WRITTEN AGREEMENT that takes into account, in particular, the
  results of the assessment and, if applicable, the terms
  agreed on to mitigate the risks identified in the assessment.
plain_language_summary: |
  Section 17 imposes a GDPR-style adequacy assessment before any
  Quebec personal information leaves Quebec. This is one of the
  most operationally consequential Law 25 obligations for AI
  deployments because most AI vendors process data outside Quebec.

  CRITICAL FOR AI: Using an AI vendor whose servers are outside
  Quebec triggers Section 17. This applies to virtually every
  major AI vendor:
  - OpenAI / ChatGPT (US-based servers)
  - Anthropic / Claude (US-based servers)
  - Google Workspace AI / Gemini (US + Ireland)
  - Microsoft Copilot (US + EU)
  - Cohere (Canada-based, but specific data residency varies)
  - Any AI SaaS without explicit Quebec data residency

  CAI guidance confirms that uploading documents to AI chat
  interfaces constitutes "communication" of personal information
  triggering s. 17.

  Required for compliance:
  1. PIA assessing the receiving jurisdiction's legal framework
  2. Determination that protection is "adequate"
  3. Written agreement with the recipient incorporating PIA findings
  4. Contractual safeguards proportionate to risk
trigger_conditions:
  - condition: Communication outside Quebec
    formal: |
      Any transmission, transfer, storage, or processing of personal
      information occurring outside the geographic territory of
      Quebec. Includes:
      - Cloud storage in non-Quebec regions
      - AI vendor processing outside Quebec
      - Customer support outsourced outside Quebec
      - Backups stored outside Quebec
      - Cross-affiliate transfers to non-Quebec offices
  - condition: Personal information involved
    formal: |
      Any personal information per P-39.1 s. 2 (broadly interpreted).
  - condition: Enterprise scope
    formal: |
      Any person carrying on an enterprise in Quebec OR collecting
      Quebec residents' data extraterritorially.
evidence_required:
  - Cross-border PIA for each receiving jurisdiction
  - Legal framework analysis of receiving jurisdiction (e.g., US
    state law, EU GDPR, UK GDPR, etc.)
  - Adequacy determination with documented reasoning
  - Written agreement with recipient (e.g., DPA, MSA addendum)
  - Contractual safeguards (encryption, access controls, audit
    rights, breach notification, sub-processor restrictions)
  - Data flow diagram showing all cross-border movements
  - Vendor security certifications (SOC 2, ISO 27001, etc.)
  - For AI specifically:
    - AI vendor data processing terms
    - Training data exclusion clauses
    - Model output non-retention clauses
    - Sub-processor restrictions (which other countries data
      may flow through)
    - Government access disclosure procedures (FISA, CLOUD Act, etc.)
deadline:
  type: relative
  value: |
    PIA and written agreement must be in place BEFORE the first
    cross-border communication. Existing arrangements must be
    brought into compliance by retrofit PIAs and agreement updates.
exceptions:
  - description: |
      Communication necessary for the performance of a contract
      with the person concerned (s. 18.1) may have reduced PIA
      requirements but still requires assessment.
  - description: |
      Communication to public authorities under legal obligation
      may be exempt depending on the specific obligation.
penalty_for_violation: |
  - Administrative Monetary Penalty: up to CAD $10M or 2% of
    worldwide turnover (P-39.1 s. 90.1)
  - Penal sanction: up to CAD $25M or 4% of worldwide turnover
    (P-39.1 s. 91) — communicating personal information without
    s. 17 compliance is specifically listed in CAI enforcement
    priorities
  - Compliance order to cease communication pending PIA completion
  - Publication order
  - Private right of action: CAD $1,000 minimum per individual
    (P-39.1 s. 93.1)
  - Aggravating factor for any breach involving cross-border
    transfer where s. 17 was not satisfied
ai_specific_application: |
  Sentainel's cross-border module for AI:

  1. AI VENDOR JURISDICTION MAP: Pre-built profiles of common AI
     vendors with data residency, processing locations, and
     sub-processor chains
  2. ADEQUACY ASSESSMENT TEMPLATES: Pre-completed legal framework
     analyses for major jurisdictions (US federal + 50 states,
     EU member states, UK, India, Australia, Japan, Singapore)
  3. CONTRACT REVIEW MODULE: Auto-evaluates AI vendor DPAs against
     Section 17 requirements; flags deficiencies
  4. WRITTEN AGREEMENT TEMPLATES: Section 17-compliant DPA addenda
     specifically for AI vendor relationships
  5. DATA RESIDENCY MONITORING: Continuous monitoring of AI vendor
     data residency claims; alerts on changes (e.g., vendor adds
     new region)
  6. ALTERNATIVE PROVIDER MATCHING: For each cross-border AI
     concern, suggests Canadian or Quebec-resident AI alternatives

  This is one of the most differentiated Sentainel features. No
  competitor has built AI-vendor-specific cross-border PIA tooling.
cross_references:
  - ca-qc-law-25-s3-3-mandatory-pia
  - ca-qc-law-25-s14-consent
  - ca-qc-law-25-s3-5-confidentiality-incident-notification
  - ca-on-mfippa-safeguards-bill97
  - ca-federal-pipeda-cross-border
  - eu-gdpr-chapter-v-international-transfers
ai_system_types_affected:
  - openai-chatgpt-enterprise
  - anthropic-claude-for-work
  - google-workspace-ai
  - microsoft-copilot
  - cohere-enterprise
  - any-non-quebec-ai-saas
  - cross-border-ai-training
  - global-ai-inference-services
confidence_score: 0.93
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + manual review
ambiguity_notes: |
  - "Adequate protection" is a flexible standard. CAI has not
    published a definitive adequacy list. Practical approach:
    document analysis showing receiving jurisdiction has substantive
    privacy law + contractual safeguards covering Law 25-specific
    gaps.
  - US transfers face heightened scrutiny due to FISA Section 702
    and CLOUD Act government access. CAI guidance is evolving on
    whether contractual safeguards are sufficient.
  - The boundary between "communication" (triggering s. 17) and
    "mere access" (potentially not triggering) is unsettled for
    cloud services. Conservative reading: any AI processing on
    non-Quebec infrastructure is communication.
  - Sub-processor chains in AI vendor stacks can include 10+
    downstream jurisdictions. Each layer requires consideration.
sentainel_value_prop: |
  Section 17 is the highest-friction Law 25 obligation for AI
  adoption. Every Quebec enterprise wanting to use AI vendors
  faces it. Most don't comply because the legal work is expensive
  ($5K-$15K per vendor per jurisdiction).

  Sentainel provides:
  - Pre-vetted vendor adequacy assessments (reduces $15K legal
    spend to subscription cost)
  - Template DPA addenda
  - Continuous vendor monitoring
  - Canadian AI alternative recommendations

  This is core to the V1 product economics. Quebec deployments
  of mainstream AI vendors are essentially impossible without
  Sentainel-grade s. 17 tooling.
extracted_at: 2026-05-13T07:20:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
