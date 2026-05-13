---
slug: ca-on-bill-194-edsta-s5-3-accountability-framework
regulation_id: ca-on-bill-194-edsta
article_number: "EDSTA s. 5(3)"
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: enacted_not_in_force
effective_date: null
proclamation_pending: true
actors:
  - GOVERNMENT_AGENCY
  - PUBLIC_BODY
  - MUNICIPAL_INSTITUTION
required_action: |
  A public sector entity to which section 5 applies shall, in
  accordance with the regulations, develop and implement an
  accountability framework respecting their use of the artificial
  intelligence system.
plain_language_summary: |
  This is the operational core of EDSTA's AI provisions. Once
  proclaimed and prescribed, every Ontario public sector entity
  using AI in scope must build and run a written accountability
  framework documenting roles, controls, and decisions for each
  AI system.

  The "form and content of the accountability frameworks" is
  delegated to regulations under s. 7(d), which may also prescribe
  roles and responsibilities, documentation requirements, and
  refresh cadence. Without regulations, entities have wide
  latitude — but practitioner consensus is that NIST AI RMF
  GOVERN function alignment will be the safe baseline.
trigger_conditions:
  - condition: Entity prescribed under section 5
    formal: |
      EDSTA s. 5(1): same prescribed-entity / prescribed-circumstance
      trigger as the public information obligation.
  - condition: Regulations under s. 7(d) specifying framework form
    formal: |
      EDSTA s. 7(d): regulations may prescribe (i) form and content,
      (ii) timing of development and updates, (iii) roles and
      responsibilities of specified individuals, (iv) documentation
      respecting use, performance, and monitoring across the
      AI lifecycle.
evidence_required:
  - Written accountability framework document with version control
  - Sign-off records from designated framework owner
  - Role and responsibility matrix with named individuals
  - Per-deployment framework application records (one per AI
    system in scope)
  - Performance and monitoring documentation
  - Update history showing review cadence
  - Records demonstrating framework integration into procurement
    and decision processes
exceptions:
  - exception: None enumerated in statute; regulations may carve out
    formal: |
      Statute does not list exceptions. Regulations under s. 7(d)
      could potentially exempt certain low-risk or de minimis uses,
      but no commentary suggests such exemptions are likely.
deadline_type: continuous
deadline_value: "Upon proclamation + per regulation cadence (likely annual review + on material change)"
penalty_for_violation: |
  EDSTA s. 12 disclaims private duty of care. No direct statutory
  penalty. Enforcement leverage:
  - Minister directive authority (s. 4 for cyber security
    parallel; AI provisions lack explicit directive authority but
    s. 7 LGIC reach extends to all framework requirements)
  - Cross-statutory exposure: Code complaints, FIPPA IPC orders,
    contractual flow-down from procurement obligations
  - Reputational and audit exposure
ai_specific_application: |
  This is the most important EDSTA obligation for Sentainel's
  Ontario public-sector positioning. Customer accountability
  framework includes:

  **Governance layer (s. 5(3) anchor):**
  1. Designated AI Governance Lead (likely required by regulations)
  2. AI use policy aligned with NIST AI RMF GOVERN-1.1 through 1.7
  3. Standing AI review committee or equivalent decision body
  4. Documented escalation pathway for high-risk AI use proposals
  5. Annual framework review cycle with formal sign-off

  **Lifecycle controls:**
  6. Pre-deployment assessment (overlaps MFIPPA Bill 97 PIA)
  7. Vendor/third-party due diligence pack (s. 1(2) flow-down)
  8. Deployment authorization record
  9. Ongoing monitoring with metrics aligned to NIST MEASURE
  10. Incident response procedure (parallel with FIPPA breach
      notification)
  11. Decommissioning procedure with data disposition

  **Documentation:**
  12. Per-system documentation kit (purpose, data, performance,
      monitoring, owner)
  13. Audit log (append-only) of framework decisions
  14. Public-facing summary feeding s. 5(2) information obligation

  Sentainel ships this as a template kit on day one of customer
  onboarding. The customer's internal counsel adapts for context;
  Sentainel maintains the regulatory cross-reference.
sentainel_value_prop: |
  "Your EDSTA accountability framework is built and operating
  today. When regulations proclaim, you adapt — not start over."
confidence_score: 0.92
confidence_tier: high
ambiguity_notes: |
  - Required content of the framework is regulation-dependent
  - Roles and responsibilities are regulation-dependent — most
    commentary expects a named AI Accountability Officer or
    equivalent
  - Documentation depth is undefined; likely tiered by AI risk
  - Refresh cadence is undefined; annual is the practitioner
    default
  - Interaction with parallel obligations (FIPPA PIA, MFIPPA PIA,
    PHIPA assessment) is unspecified; sensible reading collapses
    them into a single integrated assessment process
extraction_method: claude-opus-4-7-2026-05-13 + ola.org primary source + Fasken, BLG commentary
extracted_at: 2026-05-13
reviewed_at: 2026-05-13
reviewed_by: web@sentainel.com
---

# EDSTA s. 5(3) — Develop and Implement an Accountability Framework

## Statutory text

> A public sector entity to which this section applies shall, in
> accordance with the regulations, develop and implement an
> accountability framework respecting their use of the artificial
> intelligence system.

## Why this is the keystone obligation

EDSTA's other operational duties (public information, risk
management, oversight) hang off the accountability framework.
A complete framework satisfies most of them by design. Conversely,
without a framework, the other obligations are unworkable —
there's no governance vehicle for them to operate through.

For Sentainel customers, this is the single most important
deliverable. It also drives the highest cost differential vs.
direct legal spend: an outside-counsel-built framework runs
$40K-$80K; Sentainel ships a template configured to the customer's
risk profile and statutory scope in onboarding (hours).

## Trustworthy AI Framework alignment

The Ontario Trustworthy AI Framework (extracted separately as
`ca-on-trustworthy-ai-framework`) is the most likely model for
the regulations under s. 7(d). It explicitly cites NIST AI RMF
as a foundational reference and structures accountability around:

- Validity and reliability
- Safety
- Security and resilience
- Accountability and transparency
- Explainability and interpretability
- Privacy
- Fairness with harmful bias managed

These categories map cleanly to NIST AI RMF function groups,
giving Sentainel a stable cross-reference target.

## Cross-references

- Companion: EDSTA s. 5(2) public information — framework
  contains the disclosure content
- Companion: EDSTA s. 5(4) risk management — framework documents
  the risk management steps
- Companion: EDSTA s. 6(2)(b) human oversight — framework names
  the oversight individual
- Parallel: MFIPPA Bill 97 PIA — PIA outputs feed framework
- Parallel: PHIPA AI Scribe Guidance — clinical AI use feeds
  framework
- Anchor: NIST AI RMF GOVERN-1.1, GOVERN-1.4, GOVERN-1.6, and
  the full GOVERN function
