---
slug: ca-qc-law-25-s3-5-confidentiality-incident-notification
regulation_id: ca-qc-law-25
article_number: "P-39.1 s. 3.5 to 3.8 (added by Law 25)"
parent_article: null
obligation_type: NOTIFY_AUTHORITY
status: in_force
effective_date: 2022-09-22
actors:
  - PERSON_LEGAL_ENTITY
  - PLATFORM_OPERATOR
  - EMPLOYER
  - HEALTHCARE_PROVIDER
required_action: |
  Any person carrying on an enterprise who has reason to believe
  that a confidentiality incident involving personal information
  has occurred must:

  1. Take reasonable measures to reduce the risk of injury and
     prevent new incidents of the same nature (s. 3.5);
  2. Promptly notify the Commission d'accès à l'information (CAI)
     if the incident presents a risk of serious injury (s. 3.5);
  3. Notify each person whose personal information is concerned by
     the incident, where the incident presents a risk of serious
     injury (s. 3.5);
  4. Maintain a register of confidentiality incidents in the form
     prescribed by regulation (s. 3.8);
  5. Communicate the register to the CAI on request (s. 3.8).

  A "confidentiality incident" includes: unauthorized access to,
  unauthorized use of, communication or loss of personal information,
  or any other breach of personal information protection (s. 3.6).
plain_language_summary: |
  Quebec's breach notification regime is more aggressive than most
  privacy regimes. If you have reason to BELIEVE — not confirm,
  not investigate fully — that personal information has been
  improperly accessed, used, communicated, or lost, you must
  notify the CAI and affected individuals promptly when there's
  a risk of serious injury.

  "Promptly" is interpreted as ~72 hours in CAI guidance, mirroring
  GDPR. Some incident scenarios require faster notification.

  CRITICAL FOR AI: AI-specific incidents that trigger Law 25 breach
  obligations include:
  - Prompt injection extracting personal information
  - AI vendor breach affecting Quebec resident data
  - AI model trained on personal information without authorization
  - AI output disclosing PI of one user to another (cross-user
    leakage)
  - Vendor secondary use of Quebec data in violation of contract
  - AI logs (prompt + response) exposed in vendor security incident

  The CAI received 444 confidentiality-incident reports in 2023-24.
  Enforcement is active and increasing.
trigger_conditions:
  - condition: Confidentiality incident occurred
    formal: |
      Any unauthorized access, use, communication, loss, or other
      breach of personal information protection. Includes incidents
      affecting data held by service providers/processors.
  - condition: Reason to believe standard
    formal: |
      Triggers on reasonable belief; full forensic confirmation
      not required. Conservative reading: any credible indicator
      of incident triggers initial assessment and likely notification.
  - condition: Risk of serious injury threshold
    formal: |
      "Serious injury" includes bodily injury, humiliation, damage
      to reputation, identity theft, financial loss, loss of
      relationships, and discrimination. Factors: sensitivity of
      information, anticipated consequences, probability of misuse.
evidence_required:
  - Incident detection timestamp and source
  - Initial assessment of personal information involved
  - Risk-of-serious-injury determination with documented rationale
  - Containment actions taken with timestamps
  - CAI notification submission (with receipt)
  - Individual notifications (templates, sent dates, return-receipt
    where applicable)
  - Register of confidentiality incidents (per s. 3.8)
  - Service provider/processor notifications and their reports
  - Post-incident review and corrective action plan
  - Documentation of measures to prevent recurrence
deadline:
  type: relative
  value: |
    "Promptly" — CAI guidance and practice: notification to CAI
    within 72 hours of reasonable belief; notification to
    individuals as soon as practicable thereafter. Initial
    notification permitted with incomplete information; updates
    must follow as investigation progresses.
exceptions:
  - description: |
      Confidentiality incidents NOT presenting risk of serious
      injury require register entry but not CAI or individual
      notification.
  - description: |
      Notification to individuals may be delayed where law
      enforcement investigation could be prejudiced, subject to
      CAI consultation.
penalty_for_violation: |
  - Administrative Monetary Penalty: up to CAD $10M or 2% of
    worldwide turnover (P-39.1 s. 90.1)
  - Penal sanction: up to CAD $25M or 4% of worldwide turnover
    (P-39.1 s. 91) for failure to notify in serious cases
  - CAI compliance orders for breach response improvements
  - Publication orders disclosing incidents and response failures
  - Private right of action: CAD $1,000 minimum per affected
    individual (P-39.1 s. 93.1)
  - Class action exposure: aggregated damages scale rapidly
  - Reputational damage from public CAI decisions

  CAI enforcement pattern (2023-2026): late notification and
  inadequate response are aggravating factors; well-documented,
  proactive notification reduces penalty exposure significantly.
ai_specific_application: |
  Sentainel's incident response module for Law 25 includes:

  1. AI-INCIDENT TAXONOMY: Pre-built playbooks for 8 AI-specific
     breach categories (prompt injection, vendor compromise, model
     extraction, training data leakage, cross-user disclosure,
     secondary use, log exposure, provider outage with data
     retention)
  2. 72-HOUR WORKFLOW: Stopwatch-style countdown from detection;
     auto-generates draft CAI notification at 24-hour mark
  3. RISK-OF-SERIOUS-INJURY CALCULATOR: Decision-tree based on CAI
     guidance factors; produces defensible RROSH assessment
  4. CAI NOTIFICATION TEMPLATE: French + English, formatted for
     CAI submission portal
  5. INDIVIDUAL NOTIFICATION: Personalized templates with auto-
     populated incident details; multi-channel delivery
  6. REGISTER MANAGEMENT: Auto-maintained s. 3.8 register; export
     in CAI-prescribed format on request
  7. HASH-CHAINED AUDIT: Every step timestamped and chained;
     defensible against challenges to notification timing
cross_references:
  - ca-qc-law-25-s3-3-mandatory-pia
  - ca-qc-law-25-s8-safeguards
  - ca-qc-law-25-s17-cross-border-transfers
  - ca-on-mfippa-breach-reporting-bill97
  - ca-on-phipa-s10-breach-notification
  - ca-federal-pipeda-breach-reporting
  - eu-gdpr-art-33-34
ai_system_types_affected:
  - all-ai-systems-processing-personal-info
  - ai-vendor-saas
  - llm-with-prompt-logging
  - ai-training-pipelines
  - ai-inference-services
confidence_score: 0.93
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + manual review
ambiguity_notes: |
  - "Promptly" is not statutorily defined as 72 hours; this is CAI
    practice. Some incidents warrant faster notification.
  - The boundary between "risk of injury" (no notification required)
    and "risk of serious injury" (notification required) is fact-
    specific. Conservative reading: when in doubt, notify.
  - Cross-jurisdictional incidents (Quebec + Ontario + US) may
    require multiple parallel notifications under different regimes
    with different timing.
  - AI hallucination cases (model fabricating personal information)
    are an emerging area; whether this constitutes "unauthorized
    use" of PI is unsettled.
sentainel_value_prop: |
  Most Quebec enterprises have NO functional Law 25 breach response
  capability. They have generic incident response plans that fail
  the s. 3.5-3.8 specificity test.

  Sentainel's AI-aware breach response module is the highest-stakes
  value-add: a single missed notification can cost $10M+. The
  module pays for the entire Sentainel subscription with one
  prevented incident.
extracted_at: 2026-05-13T07:10:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
