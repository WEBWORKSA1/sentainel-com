---
slug: ca-on-bill-194-edsta-s6-2-b-human-oversight
regulation_id: ca-on-bill-194-edsta
article_number: "EDSTA s. 6(2)(b)"
parent_article: null
obligation_type: DESIGNATE_ROLE
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
  circumstances, ensure that an individual:
  (i) exercises oversight of the use of the artificial
  intelligence system, in accordance with the regulations, and
  (ii) provides additional information, in accordance with the
  regulations, respecting the use of the artificial intelligence
  system.
plain_language_summary: |
  Section 6(2)(b) establishes a named-individual oversight
  obligation. For prescribed AI uses, the entity must designate
  a person who:
  - Provides oversight of the AI's operation (likely meaning
    review, intervention authority, or final-decision authority)
  - Is available to provide additional information on inquiry
    (likely meaning point-of-contact for affected individuals)

  This is the closest EDSTA comes to a Quebec Law 25-style
  human-in-the-loop guarantee or a EU AI Act-style human oversight
  obligation. Until the s. 7(j) and s. 7(k) regulations issue, the
  scope of oversight authority and inquiry response is undefined.
trigger_conditions:
  - condition: Entity prescribed under section 6
    formal: EDSTA s. 6(1) standard trigger
  - condition: Use in prescribed circumstances
    formal: Same as s. 6(2)(a)
  - condition: Regulations under s. 7(j) governing oversight
    formal: |
      EDSTA s. 7(j): regulations may "govern the exercise of
      oversight for the purposes of subclause 6(2)(b)(i)."
  - condition: Regulations under s. 7(k) governing inquiry response
    formal: |
      EDSTA s. 7(k): regulations may "govern the provision of
      additional information for the purposes of subclause
      6(2)(b)(ii), which may include requiring the provision of
      information about how to make inquiries about the use of
      the artificial intelligence system."
evidence_required:
  - Designation document naming the AI Oversight Individual
    (likely per system or per category)
  - Role description and authority matrix
  - Records of oversight interventions (overrides, escalations,
    decisions)
  - Inquiry intake log with response timing
  - Public-facing contact information for inquiries
  - Training records for the designated individual
exceptions:
  - exception: Specific to prescribed circumstances only
    formal: |
      Section 6 obligations apply only when both the entity is
      prescribed under s. 6(1) AND the use is in prescribed
      circumstances. Lower-consequence AI uses are governed by
      s. 5 instead.
deadline_type: continuous
deadline_value: "Upon proclamation + per inquiry SLA"
penalty_for_violation: |
  No direct statutory penalty (EDSTA s. 12). However, failure of
  human oversight in a consequential decision creates strong
  exposure to:
  - Code complaints (procedural fairness + discrimination)
  - Administrative law review (failure to consider human factors)
  - IPC review under FIPPA s. 49.0.1
ai_specific_application: |
  Sentainel implementation:

  **Role designation:**
  1. Customer designates an AI Oversight Officer (or equivalent
     role) at the framework level
  2. Per-system designation cascades from the framework
  3. Backup oversight identified for continuity

  **Oversight operation:**
  4. Oversight Officer has documented authority to:
     - Pause AI deployment
     - Override individual AI decisions
     - Escalate to executive level
     - Refer for re-assessment
  5. Sampling protocol: review N% of AI decisions per period
  6. Decision audit: confirmed-by-human cases vs. flagged-for-review
     vs. overridden

  **Inquiry response:**
  7. Public-facing contact email and phone
  8. Inquiry intake system with case tracking
  9. SLA: acknowledge within 5 business days, substantive response
     within 30 days (default — regulations may shorten)
  10. Inquiry analytics feeding back into framework

  This dovetails with PHIPA AI Scribe Guidance human oversight
  requirements for healthcare AI in the public sector. Same
  Oversight Officer can wear both hats for hospital-based AI.
sentainel_value_prop: |
  "Your AI has a named human accountable for it. Affected residents
  know who to ask. Oversight is logged, audited, and ready for
  procedural-fairness defense."
confidence_score: 0.91
confidence_tier: high
ambiguity_notes: |
  - "Oversight" depth undefined — pre-decision review? sample
    review? on-request review? real-time monitoring?
  - Whether oversight individual must be an employee or can be
    contractor / vendor is undefined
  - Whether multiple AI systems can share an oversight individual
    is undefined (commercially important)
  - Inquiry response SLA undefined — regulations expected to
    require named timeline
  - Interaction with PHIPA AI Scribe Guidance oversight (for
    health institutions covered by both) is unclear
extraction_method: claude-opus-4-7-2026-05-13 + ola.org primary source
extracted_at: 2026-05-13
reviewed_at: 2026-05-13
reviewed_by: web@sentainel.com
---

# EDSTA s. 6(2)(b) — Designated Individual: Oversight + Inquiry Response

## Statutory text

> (2) A public sector entity to which this section applies shall,
> when using an artificial intelligence system in prescribed
> circumstances,
> [...]
> (b) ensure that an individual,
>     (i) exercises oversight of the use of the artificial
>     intelligence system, in accordance with the regulations, and
>     (ii) provides additional information, in accordance with the
>     regulations, respecting the use of the artificial intelligence
>     system.

## Why this is the most operationally consequential s. 6 obligation

Unlike disclosure obligations which can be satisfied by templates
and automation, the designated-individual obligation requires
actual human labor and named accountability. This is the EDSTA
provision most likely to drive customer headcount decisions:
either a dedicated AI Oversight Officer or distributed
responsibility with named owners per system.

For Sentainel, this is the obligation that drives platform
usage: customers need a system to log oversight activities,
manage inquiry queues, and produce audit-ready evidence of
human accountability. The Operations tier ($2,499/mo) is
positioned around exactly this set of workflows.

## Cross-references

- Parent: EDSTA s. 5(3) accountability framework — designation
  lives in the framework
- Companion: EDSTA s. 6(2)(a) specific-use disclosure
- Parallel: Quebec Law 25 s. 12.1 right to human review
- Parallel: PHIPA AI Scribe Guidance human oversight
- Anchor: NIST AI RMF MAP-3.5 (Human oversight), GOVERN-2.1
  (Roles & responsibilities), GOVERN-2.3 (Executive
  accountability), MEASURE-3.3 (Stakeholder feedback channels),
  MANAGE-4.3 (Incidents communicated)
