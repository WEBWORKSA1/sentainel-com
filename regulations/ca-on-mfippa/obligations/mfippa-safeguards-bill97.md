---
slug: ca-on-mfippa-safeguards-bill97
regulation_id: ca-on-mfippa
article_number: "MFIPPA s. 30.1 (as amended by Bill 97, Sch. 11)"
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: enacted_pending_force
effective_date: 2027-01-01
actors:
  - GOVERNMENT_AGENCY
required_action: |
  Every municipal institution shall take steps that are reasonable
  in the circumstances to protect personal information in its custody
  or control against theft, loss, and unauthorized use or disclosure,
  and to protect records containing the personal information against
  unauthorized copying, modification, or disposal. Safeguards shall
  be technical, administrative, and physical, proportionate to the
  sensitivity of the information and the risk of harm from a breach.
plain_language_summary: |
  Bill 97 imports the FIPPA safeguarding standard into MFIPPA. Until
  now, municipal safeguard obligations were largely implicit and
  unenforceable. Effective January 1, 2027, municipalities must take
  REASONABLE steps proportionate to sensitivity — and the IPC can
  enforce this with binding orders.

  CRITICAL FOR AI: AI systems concentrate personal information at
  unprecedented density. A municipal chatbot logging resident
  questions can accumulate thousands of PI records per day. The
  safeguard obligation requires institutions to think about AI as
  a high-risk concentration point.
trigger_conditions:
  - condition: Custody or control of personal information
    formal: |
      The institution holds personal information OR a vendor holds
      it on the institution's behalf. Custody/control extends to
      cloud-hosted AI vendor environments.
  - condition: Reasonable in the circumstances
    formal: |
      The standard is sensitivity-proportionate. Higher sensitivity
      (financial, health, social services, biometric) demands
      stronger safeguards.
evidence_required:
  - Information security policy
  - Access control documentation (RBAC/ABAC)
  - Encryption at rest and in transit
  - Audit logging (with tamper resistance preferred)
  - Vendor security assessments and DPAs
  - Incident response plan
  - Regular safeguard reviews (annual minimum)
  - Staff security training records
  - For AI systems specifically:
    - AI vendor SOC 2 Type II or ISO 27001 certification
    - Data residency confirmation
    - Secondary use prohibition in vendor contract
    - Model training opt-out evidence
    - AI-specific incident response procedures
    - Prompt logging configuration (and PI scrubbing if logged)
    - Output filtering for PI leakage
deadline:
  type: continuous
  value: Reasonable safeguards maintained on an ongoing basis
exceptions: []
penalty_for_violation: |
  - IPC binding orders for safeguard improvements
  - Public IPC reports on safeguard failures
  - Civil liability for damages flowing from inadequate safeguards
  - Class actions for systemic safeguard failures

  Practical pattern (from FIPPA jurisprudence 2025-2026): Following
  the SickKids decision (2025 ONSC 5208), the IPC has been
  aggressive about ransomware-related safeguard failures. Expect
  similar patterns for AI-related concentration risks.
ai_specific_application: |
  Sentainel's safeguard module operationalizes this obligation
  through:

  1. AI VENDOR CERTIFICATION: Sentainel pre-vets common AI vendors
     and provides municipalities with pre-built risk assessments
  2. CONTINUOUS POSTURE MONITORING: Daily checks of vendor
     certifications, data residency, secondary use terms
  3. CONFIGURATION DRIFT DETECTION: Alerts when AI tools change
     their data handling (vendor updates terms, model retraining
     enabled, new features activated)
  4. PI LEAKAGE PREVENTION: Inline proxy detects when AI inputs
     or outputs contain PI patterns
  5. INCIDENT RESPONSE INTEGRATION: Direct workflow from safeguard
     failure detection to breach response if RROSH threshold met

  This is the "proxy" architectural layer from Sentainel's three-
  layer product design — and it's where the differentiation versus
  policy-only competitors lives.
cross_references:
  - ca-on-mfippa-pia-mandatory-bill97
  - ca-on-mfippa-breach-reporting-bill97
  - ca-on-mfippa-ipc-binding-orders-bill97
  - ca-on-fippa-safeguards
  - ca-on-phipa-s12-safeguards
confidence_score: 0.90
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + manual review
ambiguity_notes: |
  - "Reasonable in the circumstances" is a flexible standard that
    will develop through IPC casework. Conservative reading:
    safeguards at least equivalent to ISO 27001 baseline are
    presumptively reasonable for sensitive PI.
  - The interaction with EDSTA cybersecurity requirements (when
    those regulations land) creates potential overlap; conservative
    read: comply with both standards.
  - Vendor flow-down expectations for AI safeguards specifically
    are evolving. Best practice: contractually require vendors to
    meet the institution's own safeguard standard.
extracted_at: 2026-05-13T05:50:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
