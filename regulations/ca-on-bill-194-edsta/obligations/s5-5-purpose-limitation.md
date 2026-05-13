---
slug: ca-on-bill-194-edsta-s5-5-purpose-limitation
regulation_id: ca-on-bill-194-edsta
article_number: "EDSTA s. 5(5)"
parent_article: null
obligation_type: PROHIBIT
status: enacted_not_in_force
effective_date: null
proclamation_pending: true
actors:
  - GOVERNMENT_AGENCY
  - PUBLIC_BODY
  - MUNICIPAL_INSTITUTION
required_action: |
  A public sector entity to which section 5 applies shall use the
  artificial intelligence system in accordance with any prescribed
  requirements.
plain_language_summary: |
  EDSTA s. 5(5) reserves to the LGIC the authority to constrain
  the purposes for which prescribed entities may use AI. The
  regulations under s. 7(f) may require that "an artificial
  intelligence system be used only for specified purposes."

  Until regulations issue, the obligation has no operational
  content. Practitioner expectation is that the regulations will
  carve out high-consequence uses (employment decisions, benefits
  eligibility, law enforcement, child welfare) and require explicit
  purpose statements with monitoring against drift.
trigger_conditions:
  - condition: Entity prescribed under section 5
    formal: EDSTA s. 5(1) standard trigger
  - condition: Regulations under s. 7(f) prescribing purposes
    formal: |
      EDSTA s. 7(f): regulations may "prescribe requirements for
      the purposes of subsection 5(5), which may include requiring
      that an artificial intelligence system be used only for
      specified purposes."
evidence_required:
  - Documented purpose statement per deployed AI system
  - Monitoring records demonstrating use stays within purpose
  - Audit log entries for purpose changes or expansions
  - Records of denials of out-of-purpose use requests
deadline_type: continuous
deadline_value: "Upon proclamation + ongoing"
penalty_for_violation: |
  No direct statutory penalty (EDSTA s. 12). Cross-statutory
  exposure if out-of-purpose use causes discriminatory outcomes
  (Code) or privacy violations (FIPPA s. 49.0.1).
ai_specific_application: |
  Sentainel implementation:
  1. Each AI system tagged with a documented primary purpose
  2. Purpose-drift monitoring: track inputs and outputs against
     the documented purpose
  3. Change-control workflow for purpose expansions (mandatory
     re-assessment trigger)
  4. Quarterly purpose audit comparing actual use to declared use
sentainel_value_prop: |
  "Your AI doesn't quietly creep out of scope. Sentainel catches
  it before the regulator does."
confidence_score: 0.88
confidence_tier: medium
ambiguity_notes: |
  - Entire operational content depends on s. 7(f) regulations
  - "Specified purposes" granularity is undefined
  - Interaction with s. 5(6) prohibited uses is unclear — same
    underlying regulatory power could express the same constraint
    via either subsection
extraction_method: claude-opus-4-7-2026-05-13 + ola.org primary source
extracted_at: 2026-05-13
reviewed_at: 2026-05-13
reviewed_by: web@sentainel.com
---

# EDSTA s. 5(5) — Use Only for Prescribed Purposes

## Statutory text

> A public sector entity to which this section applies shall use
> the artificial intelligence system in accordance with any
> prescribed requirements.

## Cross-references

- Parent: EDSTA s. 5(3) accountability framework
- Sister: EDSTA s. 5(6) prohibited uses
- Anchor: NIST AI RMF MAP-1.1 (Context of use), MAP-2.1 (Tasks
  and methods)
