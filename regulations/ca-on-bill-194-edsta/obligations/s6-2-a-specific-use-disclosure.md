---
slug: ca-on-bill-194-edsta-s6-2-a-specific-use-disclosure
regulation_id: ca-on-bill-194-edsta
article_number: "EDSTA s. 6(2)(a)"
parent_article: null
obligation_type: DISCLOSE
status: enacted_not_in_force
effective_date: null
proclamation_pending: true
actors:
  - GOVERNMENT_AGENCY
  - PUBLIC_BODY
  - MUNICIPAL_INSTITUTION
required_action: |
  A public sector entity to which section 6 applies shall, when
  using an artificial intelligence system in prescribed
  circumstances, disclose information, in accordance with the
  regulations, respecting the use of the artificial intelligence
  system.
plain_language_summary: |
  Section 6 layers on top of section 5: where section 5(2) gives
  general public-facing disclosure obligations, section 6(2)(a)
  imposes additional point-of-use disclosure for prescribed
  high-consequence circumstances.

  The practical read is that section 6 targets individual
  interactions — when an Ontario resident is the subject of an
  AI-assisted decision (benefits, licensing, child welfare,
  employment-related decisions by the public sector), the entity
  must disclose the AI involvement at the point of the interaction,
  not just in the aggregate public inventory.

  The "in accordance with the regulations" reservation means form,
  content, and timing are pending.
trigger_conditions:
  - condition: Entity prescribed under section 6
    formal: |
      EDSTA s. 6(1): "This section applies in respect of such
      public sector entities as may be prescribed for the purposes
      of this section."
    notes: |
      Section 6's prescribed-entity list will likely be narrower
      than section 5's, focused on entities making consequential
      decisions about individuals.
  - condition: Use in prescribed circumstances
    formal: |
      EDSTA s. 6(2): "when using an artificial intelligence system
      in prescribed circumstances." Per s. 7(h), regulations may
      "prescribe circumstances for the purposes of subsection 6(2)."
  - condition: Regulations under s. 7(i) specifying form
    formal: |
      EDSTA s. 7(i): regulations may prescribe (i) manner of
      disclosure, (ii) information required, (iii) information
      not required, (iv) timing and updates, (v) exemptions.
evidence_required:
  - Point-of-use disclosure templates per AI deployment
  - Disclosure delivery logs (timestamp, recipient, content
    version shown)
  - Records of decisions to exempt specific interactions
  - Quality audits sampling actual disclosures for compliance
deadline_type: event_triggered
deadline_value: "At the point of AI-assisted decision affecting the individual"
penalty_for_violation: |
  No direct statutory penalty (EDSTA s. 12). Failure-to-disclose
  exposure compounds with:
  - Code complaints if the AI decision was discriminatory and the
    affected individual was denied disclosure
  - Procedural fairness challenges in administrative law
  - IPC complaints under FIPPA s. 49.0.1
ai_specific_application: |
  Sentainel implementation:
  1. Per-deployment disclosure script library
  2. Integration with customer's case management / decisioning
     systems to inject disclosure at the appropriate point
  3. Disclosure delivery log (one entry per affected individual)
  4. Audit-ready evidence package for IPC review
  5. Multilingual templates (English + French + key Ontario
     languages: Italian, Mandarin, Punjabi, Spanish, Tagalog,
     Arabic, Tamil)
sentainel_value_prop: |
  "Every Ontario resident affected by your AI gets a compliant
  disclosure, every time. Automatic, logged, and auditable."
confidence_score: 0.89
confidence_tier: medium
ambiguity_notes: |
  - "Prescribed circumstances" undefined — likely covers benefits
    eligibility, licensing decisions, child welfare assessments,
    public employment actions
  - Form of point-of-use disclosure undefined — letter? screen?
    verbal?
  - Whether disclosure must precede the decision or accompany it
    is undefined
  - Treatment of urgent / safety-critical decisions where pre-
    disclosure might delay action is undefined
extraction_method: claude-opus-4-7-2026-05-13 + ola.org primary source
extracted_at: 2026-05-13
reviewed_at: 2026-05-13
reviewed_by: web@sentainel.com
---

# EDSTA s. 6(2)(a) — Specific-Use Disclosure to Affected Individuals

## Statutory text

> (2) A public sector entity to which this section applies shall,
> when using an artificial intelligence system in prescribed
> circumstances,
> (a) disclose information, in accordance with the regulations,
> respecting the use of the artificial intelligence system;

## Operational read

This is the "individual-facing" disclosure obligation,
complementing the "public-at-large" disclosure under s. 5(2).
A municipal benefits agency using AI to triage social-assistance
applications, for example, would (when prescribed) need to inform
the applicant that AI was used in their case.

This obligation has the strongest parallel to Quebec Law 25
s. 12.1 (automated decision-making notice) and the EU AI Act
art. 50 transparency obligations. NIST AI RMF MEASURE-2.8 and
MEASURE-2.9 are the cross-walk anchors.

## Cross-references

- Companion: EDSTA s. 5(2) general public information
- Companion: EDSTA s. 6(2)(b) human oversight + inquiry response
- Parallel: Quebec Law 25 s. 12.1 (automated decision notice)
- Parallel: PHIPA AI Scribe Guidance (clinical AI disclosure)
- Anchor: NIST AI RMF MEASURE-2.8 Transparency, MEASURE-2.9
  Explainability
