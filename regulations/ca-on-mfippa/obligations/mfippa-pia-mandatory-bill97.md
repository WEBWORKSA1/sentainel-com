---
slug: ca-on-mfippa-pia-mandatory-bill97
regulation_id: ca-on-mfippa
article_number: "MFIPPA s. 32.1 (as amended by Bill 97, Sch. 11)"
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: enacted_pending_force
effective_date: 2027-01-01
actors:
  - GOVERNMENT_AGENCY
required_action: |
  Before collecting personal information, the head of a municipal
  institution shall ensure a written privacy impact assessment (PIA)
  is prepared. The PIA must analyze: purpose of collection, legal
  authority for collection, retention requirements, technical and
  administrative safeguards, and risk mitigation measures. PIAs must
  be updated before significantly changing the purpose for which
  personal information is used or disclosed.
plain_language_summary: |
  Effective January 1, 2027, every Ontario municipality, school
  board, police services board, library board, board of health,
  transit commission, conservation authority, and other MFIPPA
  institution must complete a written PIA BEFORE collecting any
  personal information through a new system — including AI systems.

  Until Bill 97, PIAs were a best practice; the IPC strongly
  recommended them but lacked statutory authority to require them
  for municipal institutions. Bill 97 makes them mandatory with
  IPC binding-order enforcement.

  CRITICAL FOR AI: Every new AI tool a municipal institution deploys
  that touches resident data triggers the PIA requirement. This
  includes: resident-facing chatbots, permit triage AI, social
  services intake AI, by-law enforcement scoring AI, public works
  dispatching AI, library catalog recommendation AI, recreation
  program matching AI, traffic optimization AI, snow clearing
  optimization AI, council document summarization AI, and any
  third-party SaaS with AI features (Microsoft Copilot, Google
  Workspace AI, vendor-supplied AI).
trigger_conditions:
  - condition: Subject institution
    formal: |
      Any institution subject to MFIPPA s. 2(1): municipalities,
      local boards, police services boards, public library boards,
      boards of health, school boards (in MFIPPA-covered respects),
      conservation authorities, transit commissions, agencies and
      corporations designated by regulation.
  - condition: New collection of personal information
    formal: |
      A new system, program, project, contract, or initiative that
      will collect personal information as defined in MFIPPA s. 2(1).
      Includes new AI/automated systems even when they only process
      previously-collected personal information (because the AI
      processing constitutes a new use/disclosure requiring PIA
      under the "significant change" trigger).
  - condition: Significant change to existing collection
    formal: |
      Update the existing PIA before changing the purpose, scope,
      vendor, AI model version (if material), or method of collection
      for previously-PIA'd systems.
evidence_required:
  - |
    Written PIA following IPC's "Planning for Success: Privacy
    Impact Assessment Guide" (current version incorporating Bill 97)
  - Designated head's written sign-off
  - PIA review by privacy officer or equivalent role
  - Risk register entries derived from PIA findings
  - PIA copy maintained for IPC inspection upon request
  - Updated PIA for each significant change (with diff record)
  - For AI systems specifically:
    - AI system description (purpose, vendor, model, version)
    - Data flows diagram (input PI categories → processing → output)
    - Bias risk assessment across 17 Code protected grounds
    - Disparate impact testing results (where available)
    - Vendor data processing agreement (DPA) terms
    - Data residency confirmation (Canadian storage preferred)
    - Algorithmic Impact Assessment if AI contributes to decisions
deadline:
  type: continuous
  value: Before each new collection AND before each significant change
exceptions:
  - description: |
      Some small municipalities may seek exemptions through
      regulations under Bill 97. Until regulations are filed, no
      statutory exemptions apply.
  - description: |
      Routine administrative collection that does not change in
      purpose (e.g., property tax billing) does not trigger new PIA
      requirements — but introducing AI to that workflow does.
penalty_for_violation: |
  IPC enforcement powers under Bill 97:
  - Express authority to review institutional information practices
  - Binding orders for corrective action (NEW under Bill 97)
  - Public reports identifying non-compliant institutions
  - Whistleblower protections enable internal staff to confidentially
    report non-compliance to the IPC

  Stacking exposure for AI-specific incidents:
  - Ontario Human Rights Code complaints (uncapped damages) if the
    AI produces discriminatory outcomes
  - PHIPA penalties (criminal up to $200K individual / $1M
    corporate) if PHI is involved
  - Bill 149 ESA enforcement if AI is used in municipal hiring
  - Civil class actions for privacy breaches stemming from inadequate
    PIA-identified safeguards
  - Reputational damage from public IPC reports
ai_specific_application: |
  Sentainel's MFIPPA-Bill 97 PIA template covers (for each AI
  system in a municipal deployment):

  1. PURPOSE: What problem does this AI solve for the municipality?
  2. LEGAL AUTHORITY: What MFIPPA section, municipal by-law, or
     statutory grant authorizes the collection?
  3. PERSONAL INFORMATION CATEGORIES: What MFIPPA-defined PI does
     this AI process? (name, address, identifying number, race,
     ethnic origin, financial info, etc.)
  4. DATA FLOWS: Diagram of collection → AI processing → output →
     retention → disposal
  5. RETENTION: How long is data retained in the AI system? In logs?
     In the vendor's environment?
  6. SAFEGUARDS: Encryption (at-rest and in-transit), access
     controls (RBAC/ABAC), audit logging, incident response
  7. VENDOR ANALYSIS: Where is data processed? Where is it stored?
     Is it stored in Canada? What are the vendor's secondary use
     terms? Is training prohibited contractually?
  8. BIAS RISK ASSESSMENT: Has the AI been tested for disparate
     impact across all 17 Code protected grounds?
  9. CODE PRIMACY ASSESSMENT: Could this AI's outputs discriminate
     directly or indirectly under Code s. 5, s. 9, or s. 11?
  10. AODA ACCESSIBILITY: Is this AI accessible to residents with
      disabilities per WCAG 2.1 AA?
  11. PUBLIC DISCLOSURE: Will this AI be added to the municipality's
      public AI register (per EDSTA expectations and Toronto's
      Digital Infrastructure Strategic Framework model)?
  12. HUMAN REVIEW: For consequential decisions, what human oversight
      is in place before AI outputs affect residents?
cross_references:
  - ca-on-mfippa-breach-reporting-bill97
  - ca-on-mfippa-ipc-binding-orders-bill97
  - ca-on-mfippa-whistleblower-bill97
  - ca-on-mfippa-safeguards-bill97
  - ca-on-bill-194-edst-5
  - ca-on-fippa-pia-mandatory
  - ca-on-human-rights-code-s9
  - ca-on-phipa-ai-pia-required
  - us-tx-traiga-552-104
ai_system_types_affected:
  - resident-chatbot
  - municipal-permit-triage-ai
  - social-services-intake-ai
  - by-law-enforcement-scoring-ai
  - public-works-dispatching-ai
  - library-recommendation-ai
  - recreation-matching-ai
  - traffic-optimization-ai
  - snow-clearing-optimization-ai
  - council-document-summarization-ai
  - microsoft-copilot-municipal
  - google-workspace-ai-municipal
  - vendor-supplied-ai-saas
confidence_score: 0.91
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + manual review
ambiguity_notes: |
  - Exact section numbering pending Bill 97 consolidation by the
    Office of Legislative Counsel (expected summer 2026). The
    article_number above (s. 32.1) is a reasonable placeholder based
    on the FIPPA parallel provision (s. 38(3)).
  - Implementation timeline staggered: some Bill 97 provisions are
    in force July 1, 2026; PIA mandate specifically January 1, 2027.
  - The IPC is expected to publish a detailed PIA guide specifically
    for MFIPPA institutions by fall 2026. Sentainel's template must
    refresh once issued.
  - Some small municipalities (population < 5,000) may receive
    regulation-based exemptions or phased implementation. None
    confirmed as of May 2026.
  - "Significant change" threshold is not statutorily defined.
    Conservative interpretation: any change in AI model version,
    vendor, data scope, or decision logic is significant.
  - The interaction between MFIPPA PIA requirements and the
    forthcoming EDSTA AI accountability framework is unclear.
    Practical expectation: PIAs will be the foundational document
    that EDSTA artifacts reference.
sentainel_value_prop: |
  THIS IS THE MUNICIPAL WEDGE.

  Bill 97 passed three weeks ago (April 23, 2026). Municipalities
  have approximately 8 months to be operationally ready for
  January 1, 2027. Most have no privacy officer. Most have no PIA
  template. Most have never conducted a PIA for an AI system.

  Sentainel arrives with:
  1. MFIPPA-Bill 97-compliant PIA generator pre-loaded with the
     12 most common municipal AI use cases
  2. AI-specific risk module pre-built (bias testing, Code primacy
     assessment, AODA verification, vendor flow-down)
  3. IPC-defensible documentation auto-generated in the format the
     Commissioner is expected to require
  4. Hash-chained audit log proving when PIAs were completed,
     updated, and reviewed
  5. Council-ready public AI register output

  Target customer: any of Ontario's 444 municipalities, 72 school
  boards, 245 public library boards, 50 boards of health, and
  ~150 other MFIPPA institutions. ACV: $20K-$50K depending on
  institution size and AI footprint.

  Estimated total addressable market: 444 × $25K average + 72 ×
  $18K + 245 × $9K + 50 × $15K + 150 × $12K = $16.3M ARR ceiling
  in Ontario municipal segment alone.
extracted_at: 2026-05-13T05:30:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
