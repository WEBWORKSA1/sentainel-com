---
slug: ca-on-phipa-data-minimization
regulation_id: ca-on-phipa-ai-scribe
article_number: "PHIPA s. 30 + IPC AI Scribe Guidance"
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: in_force
effective_date: 2026-01-28
proclamation_pending: false
actors:
  - HEALTHCARE_PROVIDER
  - AI_DEPLOYER
required_action: |
  Apply PHIPA's data minimization principles throughout the AI
  scribe's lifecycle: limit collection of PHI to the minimum
  required for the documented purpose, scrutinize whether full
  audio recordings or transcripts must be retained, restrict
  vendor access to the minimum data needed, and dispose of PHI
  when no longer required.
plain_language_summary: |
  PHIPA's data minimization rule (s. 30) requires HICs to
  collect, use, and retain only the PHI necessary for the
  intended purpose. The IPC AI Scribe Guidance applies this
  to every phase of the AI lifecycle:

  - Collection: minimize what the AI records
  - Use: limit vendor access to what they truly need
  - Retention: scrutinize whether audio retention is necessary
    after the note is generated
  - Disposal: dispose of PHI as soon as the retention purpose
    ends

  The most concrete operational implication: audio recordings
  should usually be discarded after the note is verified.
  Retaining audio for "quality assurance" or "vendor model
  improvement" generally fails PHIPA.
trigger_conditions:
  - condition: Any AI tool collecting, using, or retaining PHI
    formal: |
      PHIPA s. 30 requires HICs to collect PHI only "if other
      information will not serve the purpose" and to collect
      "no more PHI than is reasonably necessary."
  - condition: Audio retention beyond note verification
    formal: |
      IPC AI Scribe Guidance: "Scrutinizing whether it is
      necessary to retain full audio recordings or transcripts
      and limiting personal health information disclosure to
      vendors."
evidence_required:
  - Documented PHI flow per AI system (what enters, what is
    used, what is retained)
  - Retention schedule with disposal triggers
  - Vendor access controls limiting visibility to minimum
    required data
  - Disposal records (audio discarded, transcripts purged
    on schedule)
  - Annual audit confirming minimization compliance
deadline_type: continuous
deadline_value: "Operational + per disposal schedule"
penalty_for_violation: |
  - AMP under s. 61.1 (over-collection or over-retention is
    a recurring AMP-eligible violation)
  - IPC order requiring disposal of unnecessary PHI
  - Class action exposure for retention of audio without
    purpose
ai_specific_application: |
  Sentainel implementation:

  1. PHI flow diagram per AI system (auto-generated from
     vendor architecture)
  2. Retention schedule per data type:
     - Audio recordings: discarded within 24 hours of note
       verification (default)
     - Transcripts: retained per medical records retention
       rule (typically 10 years adult / age of majority + 10
       for minors)
     - AI-derived notes: integrated into EMR, retained per
       chart retention rule
  3. Vendor access control verification (least-privilege check
     during onboarding + quarterly)
  4. Disposal audit log: each disposal event logged with
     timestamp, data type, volume
  5. Quarterly minimization review surfacing over-retention
     patterns

  Maps to NIST AI RMF GOVERN-1.7 (Decommissioning),
  MEASURE-2.7 (Security & privacy), MEASURE-2.10 (Privacy
  risk), MANAGE-4.1 (Post-deployment monitoring).
sentainel_value_prop: |
  "Every audio recording is on a 24-hour timer. Retention
  schedules audit themselves. The IPC's data minimization
  expectations are operationalized, not just documented."
confidence_score: 0.93
confidence_tier: high
ambiguity_notes: |
  - "Very low" re-identification risk threshold for vendor
    secondary use is not quantified; practitioner consensus
    treats audio as effectively never meeting the standard
  - Quality-assurance retention argument is theoretically
    available but rarely defensible; IPC guidance treats it
    skeptically
  - Cross-province customers must align with the strictest
    standard (Alberta HIA is stricter than PHIPA on collection)
extraction_method: claude-opus-4-7-2026-05-13 + IPC AI Scribe Guidance + BLG commentary
extracted_at: 2026-05-13
reviewed_at: 2026-05-13
reviewed_by: web@sentainel.com
---

# PHIPA + AI Scribe — Data Minimization Through Lifecycle

## Statutory and guidance anchor

> PHIPA s. 30: A health information custodian shall not
> collect personal health information if other information
> will serve the purpose, and shall not collect more
> personal health information than is reasonably necessary
> to meet the purpose.

> IPC AI Scribe Guidance (Jan 2026): "Apply PHIPA's data
> minimization principles throughout the AI scribe's lifecycle."

## Cross-references

- Anchor: PHIPA s. 30
- Parallel: Quebec Law 25 s. 12 purpose limitation, s. 23
  minimization
- Parallel: GDPR art. 5(1)(c) data minimization
- Anchor: NIST AI RMF MEASURE-2.10 (Privacy risk),
  GOVERN-1.7 (Decommissioning)
