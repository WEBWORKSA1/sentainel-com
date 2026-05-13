# Sentainel NIST AI RMF Cross-Reference Matrix

**Version:** v1.0 (2026-05-13)
**Status:** Initial release covering Texas TRAIGA + Quebec Law 25 + Ontario

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
GenAI-specific cross-cutting risks (CG-1 through CG-12) plus
profile-specific implementations of base framework controls.

Sentainel maps each obligation to the smallest set of NIST controls
that, if implemented, would substantially satisfy the obligation.

## Coverage Density

| Jurisdiction | Obligations Mapped | Avg Controls Per Obligation |
|---|---|---|
| Texas TRAIGA | 12 | 3.2 |
| Quebec Law 25 | 17 | 2.8 |
| Ontario Bill 149 | 1 | 4.0 |
| Ontario Human Rights Code | 1 | 5.0 |
| Ontario MFIPPA | 5 | 3.2 |
| **TOTAL** | **36** | **3.1** |

## High-Leverage Controls

These are the NIST controls that satisfy the largest number of
obligations across jurisdictions. Implementing these first gives
customers the highest compliance-per-effort ratio.

| Rank | Control ID | Title | Obligations Satisfied |
|---|---|---|---|
| 1 | GOVERN-1.1 | Legal & regulatory requirements managed | 21 |
| 2 | GOVERN-4.1 | Risk management practices documented | 18 |
| 3 | MAP-1.1 | Context of use established | 16 |
| 4 | MEASURE-2.7 | AI system security & privacy risks evaluated | 15 |
| 5 | MEASURE-2.11 | Fairness & bias evaluated | 14 |
| 6 | MANAGE-1.3 | Decisions inform risk mitigation actions | 14 |
| 7 | GOVERN-5.1 | Stakeholder feedback mechanisms | 12 |
| 8 | MAP-3.1 | AI capabilities & limitations assessed | 12 |
| 9 | MEASURE-3.1 | Performance metrics defined | 11 |
| 10 | MANAGE-2.1 | Treatment of risks prioritized | 11 |

**Bottom line:** A customer implementing these 10 NIST controls
satisfies ~85% of obligations across the four jurisdictions in V1.

The other ~15% requires jurisdiction-specific controls
(e.g., Quebec's 60-day biometric pre-notification, Ontario's
specific job posting language under Bill 149).

## File Structure

- `nist-controls.yaml` — Full catalog of NIST AI RMF 1.0 controls
  + GenAI Profile additions
- `mappings/` — Per-jurisdiction mapping files
  - `nist-to-us-tx-traiga.yaml` — Texas TRAIGA mapping
  - `nist-to-ca-qc-law-25.yaml` — Quebec Law 25 mapping
  - `nist-to-ca-on-bill-149.yaml` — Ontario Bill 149 mapping
  - `nist-to-ca-on-human-rights.yaml` — Ontario Code mapping
  - `nist-to-ca-on-mfippa.yaml` — Ontario MFIPPA mapping
- `iso-42001-equivalents.yaml` — ISO/IEC 42001:2023 control
  numbers cross-referenced to NIST AI RMF (for customers
  pursuing ISO route instead of NIST)
- `coverage-matrix.csv` — Flattened matrix for analytics: rows are
  obligations, columns are NIST controls, cell values are coverage
  level (fully_satisfies, partially_satisfies, supports, safe_harbor)

## Coverage Levels Defined

- **fully_satisfies**: Implementing this NIST control alone
  demonstrably satisfies the obligation
- **partially_satisfies**: Material progress toward the obligation;
  combined with other listed controls, satisfies it
- **supports**: Useful evidence but not itself sufficient; needs
  other controls
- **safe_harbor**: Specifically named in the regulation as a
  safe harbor or affirmative defense pathway

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
   demands, CAI inquiries, or Ontario IPC investigations.
5. **Continuous tracking**: As regulations evolve (new obligations,
   amendments) or customer deployments change (new AI use cases,
   new jurisdictions), the matrix updates and Sentainel re-computes
   coverage.

## Strategic Marketing Use

This matrix is also the strongest possible sales artifact. A
customer can see at a glance:

- How many obligations they face across jurisdictions
- How few NIST controls solve most of them
- The 5-10x cost differential vs. direct compliance implementation
- The cross-jurisdictional reuse advantage

## Limitations and Caveats

- The matrix is current as of the regulations and frameworks listed
  in `notes.md` of each jurisdiction. Subsequent amendments may
  shift mappings.
- "Substantial compliance" is itself an interpretive standard.
  Sentainel's mapping reflects conservative interpretation. Legal
  review may identify residual gaps for specific deployments.
- Sectoral overlays (healthcare, financial services, insurance)
  add jurisdiction-specific controls on top of the base NIST
  mappings. Sentainel's sectoral modules layer these in.
- This matrix is not legal advice. Sentainel recommends per-
  jurisdiction legal review of customer-specific implementation.
