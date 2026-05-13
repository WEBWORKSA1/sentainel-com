---
slug: ca-on-mfippa-breach-reporting-bill97
regulation_id: ca-on-mfippa
article_number: "MFIPPA s. 32.2 (as amended by Bill 97, Sch. 11)"
parent_article: null
obligation_type: NOTIFY_AUTHORITY
status: enacted_pending_force
effective_date: 2027-01-01
actors:
  - GOVERNMENT_AGENCY
required_action: |
  In defined circumstances, the head of a municipal institution
  shall report the theft, loss, or unauthorized use or disclosure
  of personal information to:
  (a) the affected individual, where it is reasonable in the
      circumstances to believe that the breach poses a real risk
      of significant harm (RROSH) to the individual; and
  (b) the Information and Privacy Commissioner of Ontario (IPC),
      where the breach meets the RROSH threshold or other prescribed
      criteria.

  Institutions must maintain records of all reported breaches and
  submit annual statistical reports to the IPC, modelled on the
  FIPPA reporting regime in force since July 1, 2025.
plain_language_summary: |
  Effective January 1, 2027, Ontario municipal institutions must
  formally report privacy breaches — including those involving AI
  systems — to both affected residents and the IPC. This brings
  municipalities into alignment with provincial institutions, which
  have had this obligation since July 1, 2025.

  Until now, MFIPPA institutions had NO statutory obligation to
  notify residents of breaches, although the IPC strongly
  recommended it. Bill 97 closes this gap.

  CRITICAL FOR AI: Recent IPC decisions have expanded what
  constitutes a breach. Per Hospital for Sick Children v. Ontario
  (IPC), 2025 ONSC 5208, ransomware encryption alone constitutes
  unauthorized "use" and "loss" of personal information — even
  without evidence of exfiltration. Per PHIPA Decision 255, email
  account compromise for as little as one hour triggers the duty
  to notify. AI-related incidents (prompt injection, model
  exfiltration, training data leakage) will be analyzed under
  these expanded definitions.
trigger_conditions:
  - condition: Subject institution
    formal: |
      Any MFIPPA institution under s. 2(1).
  - condition: Privacy breach event
    formal: |
      Theft, loss, or unauthorized use or disclosure of personal
      information in the institution's custody or control. Includes:
      - Vendor breaches affecting institution's data
      - Cyber incidents (ransomware, email compromise, etc.)
      - Accidental disclosure (misdirected email, lost device)
      - AI-related incidents (prompt injection exfiltrating PI,
        AI hallucination disclosing PI, vendor secondary use of PI)
  - condition: RROSH threshold met OR prescribed criteria met
    formal: |
      Real Risk of Significant Harm threshold from FIPPA s. 34.1:
      "reasonable in the circumstances to believe that the breach
      poses a real risk of significant harm to an individual."
      Factors include sensitivity of PI, probability of misuse,
      and downstream consequences (identity theft, financial loss,
      reputational harm, physical safety).
evidence_required:
  - Breach response playbook (pre-prepared)
  - Incident detection timestamp
  - Containment actions taken with timestamps
  - RROSH assessment documentation
  - Notification copies (to affected individuals)
  - IPC notification with full breach particulars
  - Annual statistical report submission
  - Records of all breaches retained per Bill 97 record-keeping
    obligations
  - Post-incident review and remediation plan
deadline:
  type: relative
  value: |
    "At the first reasonable opportunity" — IPC guidance from FIPPA
    parallel suggests notification within days of breach confirmation,
    not weeks. Annual statistical report due to IPC per prescribed
    schedule (FIPPA model: by March 31 of following year).
exceptions:
  - description: |
      Breaches not meeting RROSH threshold do not trigger mandatory
      notification (but records must still be maintained).
  - description: |
      Notification may be delayed where law enforcement investigation
      could be prejudiced, subject to IPC consultation.
penalty_for_violation: |
  IPC enforcement:
  - Binding orders for corrective action
  - Public reports identifying non-compliant institutions
  - Reviews of institutional information practices

  Civil exposure:
  - Class actions for inadequate breach response (escalating trend
    in Ontario 2024-2026)
  - Negligence claims for failure to notify

  Parallel exposure:
  - Code complaints if breach involves discriminatory handling
  - PHIPA criminal penalties if PHI involved
ai_specific_application: |
  Sentainel's incident response module includes pre-built playbooks
  for AI-specific breach categories:

  1. PROMPT INJECTION → Personal information exfiltration via
     manipulated prompts
  2. MODEL EXTRACTION → AI model copied or its training data
     reverse-engineered
  3. TRAINING DATA LEAKAGE → Customer PI surfacing in AI outputs
     to other users
  4. VENDOR SECONDARY USE → AI vendor using municipal PI to train
     models in violation of contract
  5. HALLUCINATED DISCLOSURE → AI generating accurate PI about
     residents in inappropriate contexts
  6. PROMPT LOG EXPOSURE → Logs containing PI exposed in vendor
     breach
  7. AI PROVIDER OUTAGE WITH DATA RETENTION → Provider failure
     leaving institution unable to fulfill access/correction
     requests

  Each category includes: detection signals, containment steps,
  RROSH assessment factors, notification templates, IPC reporting
  format, and post-incident remediation requirements.
cross_references:
  - ca-on-mfippa-pia-mandatory-bill97
  - ca-on-mfippa-safeguards-bill97
  - ca-on-fippa-breach-reporting
  - ca-on-phipa-s10-breach-notification
  - ca-federal-pipeda-breach-reporting
confidence_score: 0.89
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + manual review
ambiguity_notes: |
  - Exact section numbering pending Bill 97 consolidation
  - RROSH threshold definition will draw from FIPPA jurisprudence
    that has developed since July 2025; municipal application
    untested
  - "First reasonable opportunity" is not statutorily defined; FIPPA
    practice suggests 72 hours from confirmation is defensible
  - Coordination between MFIPPA breach reporting and PHIPA breach
    reporting (when both apply, e.g., municipal public health) is
    unclear; conservative reading: comply with both regimes
  - The annual statistical report format will be prescribed by
    regulation; expected to mirror FIPPA's regime
sentainel_value_prop: |
  Municipalities have no breach response infrastructure today
  because they have no statutory obligation today. By January 1,
  2027 they need: detection capability, RROSH assessment workflow,
  notification templates, IPC reporting format, and annual
  statistics tracking.

  Sentainel's incident response module provides all five as a
  unified workflow. This is a $5K-$15K/year add-on to the core
  Sentainel Municipal Edition SKU.
extracted_at: 2026-05-13T05:35:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
