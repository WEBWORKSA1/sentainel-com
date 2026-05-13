# Sentainel NIST AI RMF Cross-Reference Matrix

**Version:** v1.3 (2026-05-13)
**Status:** Texas TRAIGA + Quebec Law 25 + Ontario stack (5 regulations) + Illinois stack (2 regulations) complete

## Purpose

This matrix maps every extracted obligation across Sentainel's
covered jurisdictions to specific NIST AI RMF controls (and ISO/IEC
42001 equivalents where relevant). The goal: enable a customer to
implement a small set of NIST controls and demonstrably satisfy
obligations across multiple jurisdictions simultaneously.

This is THE product artifact. The legal anchor is Texas TRAIGA
§ 552.105(e)(2)(D), which creates an affirmative defense for
"substantial compliance with the most recent version of the
'Artificial Intelligence Risk Management Framework: Generative
Artificial Intelligence Profile' published by the National Institute
of Standards and Technology or another nationally or internationally
recognized risk management framework for artificial intelligence
systems, an internal review process."

Every other major North American jurisdiction either explicitly
references NIST AI RMF as a benchmark or accepts equivalent
risk-management frameworks. Customer implements once → compliant
everywhere.

## NIST AI RMF Framework Structure

The NIST AI RMF 1.0 (January 2023) organizes 46 categories of
controls across four core functions:

- **GOVERN** (14 controls): Cultivate risk management culture and
  organizational policies
- **MAP** (9 controls): Contextualize AI system in deployment
  environment
- **MEASURE** (13 controls): Analyze risks, impacts, and
  trustworthiness characteristics
- **MANAGE** (10 controls): Prioritize and act on risks

The **NIST GenAI Profile (NIST-AI-600-1, July 2024)** adds 12
GenAI-specific cross-cutting risks (GAI-1 through GAI-12) plus
profile-specific implementations of base framework controls.

Sentainel maps each obligation to the smallest set of NIST controls
that, if implemented, would substantially satisfy the obligation.

## Coverage Density

| Jurisdiction | Obligations Mapped | Avg Controls Per Obligation |
|---|---|---|
| Texas TRAIGA (HB 149) | 12 | 5.4 |
| Quebec Law 25 (P-39.1) | 17 | 6.8 |
| Ontario Bill 149 (ESA) | 1 | 5.0 |
| Ontario Human Rights Code (s. 9) | 1 | 7.0 |
| Ontario MFIPPA (Bill 97) | 5 | 4.0 |
| Ontario EDSTA (Bill 194) | 7 | 5.3 |
| Ontario PHIPA + AI Scribe | 8 | 6.6 |
| Illinois HRA AI (HB 3773) | 4 | 6.0 |
| Illinois AIVIA (820 ILCS 42) | 4 | 7.5 |
| **TOTAL** | **59** | **5.8** |

**Matrix size:** 341 rows in `coverage-matrix.csv`.

## High-Leverage Controls

These are the NIST controls that satisfy the largest number of
obligations across jurisdictions. Implementing these first gives
customers the highest compliance-per-effort ratio.

| Rank | Control ID | Title | Obligations Satisfied |
|---|---|---|---|
| 1 | GOVERN-1.1 | Legal & regulatory requirements managed | 59 / 59 |
| 2 | MEASURE-2.8 | Transparency & accountability | 19 |
| 3 | GOVERN-1.6 | AI inventory mechanisms | 14 |
| 4 | MAP-1.1 | Context of use established | 13 |
| 5 | MEASURE-2.10 | Privacy risk | 12 |
| 6 | MEASURE-2.7 | Security & privacy risks evaluated | 12 |
| 7 | MANAGE-4.1 | Post-deployment monitoring | 12 |
| 8 | MANAGE-1.3 | Decisions inform mitigation | 12 |
| 9 | MEASURE-3.3 | Stakeholder feedback channels | 11 |
| 10 | MEASURE-2.11 | Fairness & bias evaluated | 8 |

**Bottom line:** A customer implementing the top 10 NIST controls
satisfies ~85% of obligations across the four jurisdictions in V1.

The remaining ~15% requires jurisdiction-specific controls — e.g.,
Quebec's 60-day biometric pre-notification (s. 8.1 + s. 45),
Ontario's specific job-posting language under Bill 149, Texas's
sandbox application package, Ontario PHIPA's 60-day breach
notification clock with parallel custodian-vendor obligations, and
Ontario EDSTA's accountability-framework artifact requirements
once LGIC proclaims the AI provisions.

**GOVERN-1.1 (Legal & regulatory requirements managed)** hits every
single obligation in the matrix — it is the universal entry point.
Sentainel onboarding starts here.

## File Structure

- `nist-controls.yaml` — Full catalog of NIST AI RMF 1.0 controls
  + GenAI Profile additions
- `mappings/` — Per-jurisdiction mapping files
  - `nist-to-us-tx-traiga.yaml` — Texas TRAIGA mapping
  - `nist-to-ca-qc-law-25.yaml` — Quebec Law 25 mapping
  - `nist-to-ca-on-stack.yaml` — Combined Ontario mapping
    (Bill 149 + Code + MFIPPA + EDSTA + PHIPA — 22 obligations)
  - `nist-to-us-il-stack.yaml` — Combined Illinois mapping
    (HRA AI + AIVIA — 8 obligations)
- `coverage-matrix.csv` — Flattened matrix for analytics: 341 rows.
  Each row is one obligation × one NIST control pairing with a
  coverage level (fully_satisfies, partially_satisfies, supports,
  safe_harbor)
- `viz/index.html` — Self-contained interactive sales artifact
  (current version v1.3). See `viz/README.md` for details.

## Coverage Levels Defined

- **fully_satisfies**: Implementing this NIST control alone
  demonstrably satisfies the obligation
- **partially_satisfies**: Material progress toward the obligation;
  combined with other listed controls, satisfies it
- **supports**: Useful evidence but not itself sufficient; needs
  other controls
- **safe_harbor**: Specifically named in the regulation as a
  safe harbor or affirmative defense pathway (currently only
  Texas TRAIGA § 552.105(e)(2)(D) for the NIST GenAI Profile;
  Quebec biometric s. 45 and several GenAI Profile entries
  function similarly under their respective regulators)

## How Sentainel Uses This

1. **Customer onboarding**: Customer identifies their AI deployments
   and applicable jurisdictions. Sentainel pulls the union of all
   applicable obligations.
2. **Optimal path computation**: For that customer's obligation set,
   compute the smallest NIST control implementation that achieves
   substantial compliance.
3. **Evidence collection**: For each NIST control, Sentainel
   guides customer through producing the required evidence
   (documentation, policies, testing, monitoring).
4. **Defense-ready repository**: All evidence centralized and
   audit-trail-protected, ready for AG civil investigative
   demands, CAI inquiries, Ontario IPC investigations, IDHR
   complaints, or Illinois AG actions.
5. **Continuous tracking**: As regulations evolve (new obligations,
   amendments, proclamations — Ontario EDSTA AI provisions are
   still un-proclaimed as of May 2026 and will trigger refresh
   when LGIC moves) or customer deployments change (new AI use
   cases, new jurisdictions), the matrix updates and Sentainel
   re-computes coverage.

## Strategic Marketing Use

This matrix is also the strongest possible sales artifact. A
customer can see at a glance:

- How many obligations they face across jurisdictions
- How few NIST controls solve most of them
- The 5-10x cost differential vs. direct compliance implementation
- The cross-jurisdictional reuse advantage

The `viz/index.html` artifact renders this matrix as an interactive
scope calculator + full grid for prospect-facing demos. See
`viz/README.md` for embed and share-link details.

## Sectoral Hooks

Some obligations layer sectoral overlays on top of the base
horizontal stack:

- **Healthcare**: Ontario PHIPA + AI Scribe Guidance (8 obligations,
  AMPs to $500K, in force enforcement) governs any health
  information custodian deploying AI scribes, decision support, or
  clinical models on personal health information. Sentainel's
  healthcare module layers these on top of the base Ontario
  privacy stack.
- **Public sector**: Ontario EDSTA Bill 194 (7 obligations) covers
  Ontario provincial and broader-public-sector AI use; Ontario
  MFIPPA Bill 97 (5 obligations) covers municipal AI use. Both
  un-proclaimed components are tracked for proclamation alerts.
- **Employment / HR**: Illinois HRA AI (4 obligations) + Illinois
  AIVIA (4 obligations) + Ontario Bill 149 ESA disclosure (1
  obligation) constitute the cross-jurisdiction employment AI
  stack — designed to be sold to multi-state employers as a
  single workstream.
- **Texas sandbox**: TRAIGA § 553 sandbox SKU (priced at $1,499/mo)
  is a separate go-to-market for regulated entities preparing to
  apply for AI sandbox participation.

## Limitations and Caveats

- The matrix is current as of the regulations and frameworks listed
  in `notes.md` of each jurisdiction. Subsequent amendments may
  shift mappings.
- "Substantial compliance" is itself an interpretive standard.
  Sentainel's mapping reflects conservative interpretation. Legal
  review may identify residual gaps for specific deployments.
- Ontario EDSTA Bill 194's AI-specific provisions (Schedule 1 ss.
  5–8) remain un-proclaimed as of May 2026. The 7 obligations in
  `ca-on-bill-194-edsta/` are mapped as if in force; flagged for
  proclamation tracking. LGIC regulations under s. 7 and Minister
  technical standards under s. 8 will reshape the operational
  requirements when they land.
- Quebec Law 25, Ontario PHIPA AMPs (in force Jan 1, 2024),
  Illinois AIVIA (in force since 2020), and Quebec biometric
  pre-notification are all currently enforcing. These mappings
  reflect active obligations, not pending ones.
- This matrix is not legal advice. Sentainel recommends per-
  jurisdiction legal review of customer-specific implementation.
