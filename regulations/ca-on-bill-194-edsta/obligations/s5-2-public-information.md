---
slug: ca-on-bill-194-edsta-s5-2-public-information
regulation_id: ca-on-bill-194-edsta
article_number: "EDSTA s. 5(2)"
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
  A public sector entity to which section 5 applies shall, in
  accordance with the regulations, provide information to the
  public about their use of the artificial intelligence system.
plain_language_summary: |
  Once Ontario proclaims EDSTA, prescribed public sector entities
  must publicly disclose information about the AI systems they use
  in prescribed circumstances. The specifics of what information
  must be disclosed, in what format, and on what cadence will be
  set by LGIC regulation under s. 7(c).

  Until proclamation and regulations issue, this obligation is
  dormant. However, entities should treat it as imminent and build
  public-facing AI inventories that can be activated quickly.
trigger_conditions:
  - condition: Entity prescribed under section 5
    formal: |
      EDSTA s. 5(1): "This section applies to such public sector
      entities as may be prescribed for the purposes of this
      section if they use or intend to use an artificial
      intelligence system in prescribed circumstances."
    notes: Both the entity AND the circumstances must be prescribed
  - condition: Use or intended use of AI in prescribed circumstances
    formal: |
      Capture both active use and planned future use. "Intended use"
      reaches the procurement stage — disclosure obligations could
      attach before a system is operational.
  - condition: Regulations under s. 7 specifying disclosure form
    formal: |
      EDSTA s. 7(c): regulations may prescribe (i) the manner of
      provision, (ii) information that must be provided, (iii)
      information that need not be provided, (iv) timing and
      updates, (v) exemptions.
    notes: |
      Until s. 7 regulations issue, the operational shape of the
      obligation is unknown. Likely format: web page or annual
      report listing AI systems in use.
evidence_required:
  - Public-facing AI inventory page or document
  - Date-stamped version history of the inventory
  - Internal record showing alignment between deployed AI and
    disclosed AI
  - Record of decisions to exempt specific systems (where
    regulations permit exemption)
exceptions:
  - exception: Regulations may exempt specified entities or circumstances
    formal: |
      EDSTA s. 7(c)(v) reserves to regulations the power to
      "exempt public sector entities from the requirement to
      provide information in specified circumstances."
deadline_type: continuous
deadline_value: "Upon proclamation + per regulation cadence (likely annual + on material change)"
penalty_for_violation: |
  EDSTA s. 12 disclaims private duty of care. No statutory civil
  penalty. Enforcement via Minister oversight and accountability
  framework reporting. Parallel exposure under FIPPA s. 49.0.1
  if disclosure failure indicates broader information practice
  failure.
ai_specific_application: |
  Sentainel onboarding for Ontario public-sector customers:

  1. Build a complete AI inventory at onboarding (covers EDSTA
     s. 5(2) + GOVERN-1.6 readiness)
  2. Tag each system with metadata fields the regulations are
     expected to require: purpose, data inputs, decision
     consequentiality, vendor, human-in-the-loop status
  3. Pre-build a public-facing inventory page in draft, ready to
     publish on proclamation
  4. Establish a refresh cadence (default quarterly) so the
     inventory stays current
  5. Capture inventory snapshots in the audit log for AG/IPC
     defense

  Sentainel value: the inventory is a deliverable customers can
  show today even before EDSTA proclamation — it satisfies parallel
  obligations under MFIPPA Bill 97 PIAs, Code due-diligence
  defense, and PHIPA AI scribe disclosure where applicable.
sentainel_value_prop: |
  "Your EDSTA s. 5(2) compliance is already done — the day Ontario
  proclaims, you click publish."
confidence_score: 0.91
confidence_tier: high
ambiguity_notes: |
  - Form of public disclosure (web page vs. annual report vs.
    notification) is undefined
  - Timing — pre-deployment, at-deployment, post-deployment — is
    undefined
  - Granularity (per-system vs. categorical) is undefined
  - Treatment of confidential or security-sensitive systems is
    undefined; regulations likely will provide exemption for law
    enforcement use cases
extraction_method: claude-opus-4-7-2026-05-13 + ola.org primary source
extracted_at: 2026-05-13
reviewed_at: 2026-05-13
reviewed_by: web@sentainel.com
---

# EDSTA s. 5(2) — Provide Information to the Public About AI Use

## Statutory text

> A public sector entity to which this section applies shall, in
> accordance with the regulations, provide information to the
> public about their use of the artificial intelligence system.

## Operational significance

This is the public-transparency anchor of EDSTA. It positions
Ontario as one of the first North American jurisdictions to
statutorily require government AI use disclosure. The closest
parallel is the EU AI Act art. 49 high-risk AI public database,
though EDSTA's design is decentralized (per-entity disclosure
rather than centralized registry).

The operational shape will be set by s. 7(c) regulations. The
strongest signal from Ontario commentary is that disclosure will
mirror the OPS Digital Government Trustworthy AI Framework's
"public AI register" model — a per-entity online list with
mandatory fields including system purpose, data sources, decision
type, and accountability contact.

## Cross-references

- Companion: EDSTA s. 5(3) accountability framework — the
  framework must address public information practices
- Parallel: MFIPPA Bill 97 mandatory PIA — PIA can serve as the
  source of truth for public disclosure
- Parallel: Code s. 9 — public disclosure of AI use creates a
  Code paper trail; failure to disclose can fuel Code complaints
- Anchor: NIST AI RMF MEASURE-2.8 (Transparency)
