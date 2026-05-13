---
slug: ca-on-bill-194-edsta-s5-6-prohibited-uses
regulation_id: ca-on-bill-194-edsta
article_number: "EDSTA s. 5(6)"
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
  A public sector entity to which section 5 applies shall not use
  an artificial intelligence system if the use is prohibited by
  the regulations.
plain_language_summary: |
  EDSTA s. 5(6) gives the LGIC blanket authority to ban specified
  AI uses outright in the Ontario public sector. The regulations
  under s. 7(g) may "prohibit, for the purposes of subsection
  5(6), the use of an artificial intelligence system."

  This is the strongest possible regulatory lever. Until
  regulations issue, no specific prohibitions are in effect, but
  practitioner consensus expects the regulations to prohibit:
  - Mass biometric surveillance in public spaces
  - Predictive policing of individuals (US/Canada controversy)
  - Social scoring of residents (EU AI Act parallel)
  - Real-time emotion recognition (EU AI Act parallel)
  - Fully autonomous benefits adjudication without human review
trigger_conditions:
  - condition: Entity prescribed under section 5
    formal: EDSTA s. 5(1) standard trigger
  - condition: Regulations under s. 7(g) prohibiting specific use
    formal: |
      EDSTA s. 7(g): regulations may "prohibit, for the purposes
      of subsection 5(6), the use of an artificial intelligence
      system."
evidence_required:
  - Documented AI inventory with use cases classified against
    prohibited-use list (when issued)
  - Procurement gate documenting prohibited-use screening
  - Decommissioning records for AI systems identified as
    prohibited
  - Negative records: documented decisions NOT to deploy systems
    in prohibited categories
deadline_type: continuous
deadline_value: "Upon proclamation; immediate cessation upon prohibition"
penalty_for_violation: |
  No direct statutory penalty (EDSTA s. 12). Continued use of a
  prohibited AI system would compound exposure under:
  - Code complaints (uncapped damages for discriminatory effects)
  - FIPPA IPC orders (information practice violation)
  - Reputational damage and Minister directive risk
ai_specific_application: |
  Sentainel implementation:
  1. Maintain a regulation-watch process tracking s. 7(g)
     prohibitions as they issue
  2. Cross-reference customer AI inventory against current
     prohibition list at each refresh
  3. Procurement gate: flag any proposed AI matching a prohibited
     category before contract signature
  4. Decommissioning playbook for prohibited-use cessation:
     immediate halt + data disposition + public notice
sentainel_value_prop: |
  "When Ontario bans an AI use case, you know within 24 hours
  whether it's in your stack."
confidence_score: 0.89
confidence_tier: medium
ambiguity_notes: |
  - No prohibited uses are statutorily named — entire content
    depends on regulations
  - Transition period for systems already deployed when a
    prohibition issues is undefined
  - Whether grandfathering or sunset will apply is undefined
  - Interaction with cross-jurisdictional use (e.g., a SaaS
    serving multiple provinces with one prohibited in Ontario)
    is undefined
extraction_method: claude-opus-4-7-2026-05-13 + ola.org primary source
extracted_at: 2026-05-13
reviewed_at: 2026-05-13
reviewed_by: web@sentainel.com
---

# EDSTA s. 5(6) — Prohibition on Prescribed AI Uses

## Statutory text

> A public sector entity to which this section applies shall not
> use an artificial intelligence system if the use is prohibited
> by the regulations.

## Strategic significance

This is the only EDSTA provision that creates an immediate
behavior change rather than a documentation obligation. Once
the LGIC names a prohibited use category, prescribed entities
must stop using AI in that category — full stop.

For Sentainel customer risk modeling: high-consequence AI uses
in the Ontario public sector should be assumed to be at risk
of prohibition. Customers should have decommissioning playbooks
ready for systems in the likely-prohibited categories above.

## Cross-references

- Parent: EDSTA s. 5(3) accountability framework
- Sister: EDSTA s. 5(5) purpose limitation
- Anchor: NIST AI RMF GOVERN-1.6 (AI inventory mechanisms),
  MANAGE-2.4 (Supersede deficient AI)
