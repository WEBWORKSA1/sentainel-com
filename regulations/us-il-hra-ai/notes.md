# Illinois HRA AI — Strategic Notes

## Why Illinois Matters for Sentainel

Illinois closes the disparate-impact gap that Texas TRAIGA left open. A national employer running AI-driven hiring tools faces:

- **Texas**: intent-based standard, narrow harm set, AG enforcement only (no class actions)
- **Illinois**: disparate-impact standard, broad harm set (19 protected classes), private right of action (via IDHR or direct court)
- **Quebec**: automated-decision rights + Law 25 framework (right to human review)
- **Ontario**: job posting disclosure (Bill 149) + Code disparate impact (s. 9)

Sentainel's positioning: customers in any one of these states face exposure under all four. The cost differential vs. running four separate compliance workstreams is the sales argument. Adding Illinois to the matrix makes the cross-jurisdiction story materially stronger — three U.S. states + two Canadian provinces.

## Disparate Impact vs. Intent — The Operational Gap

This is the most important practitioner-level distinction for sales conversations.

| Jurisdiction | Standard | Plaintiff burden |
|---|---|---|
| Texas TRAIGA | Intent (s. 552.056(c) expressly excludes pure disparate impact) | Must show intent to discriminate |
| Illinois HRA AI | Effect ("has the effect of subjecting...") | Statistical disparity sufficient prima facie |
| Federal Title VII | Both available (intent + disparate impact) | Either pathway |
| Ontario Code s. 9 | Adverse impact (similar to disparate impact) | Show adverse impact on protected ground |

A Texas-compliant AI hiring tool, deployed to a Chicago applicant, generates Illinois exposure on the first decision. The "we passed our TRAIGA audit" claim is non-responsive to an Illinois IDHR complaint. Customers need disparate-impact testing regardless of where headquarters is — and Sentainel's platform delivers it.

## IDHR Rulemaking Watch

As of May 2026, IDHR has issued proposed rules and is digesting public comment. Final rules expected Q3 2026. Key indicators to track:

1. **Notice content requirements** — likely items include AI system description, decision categories, complaint rights
2. **Notice timing** — likely "before or at the time" of AI use
3. **Notice form** — likely permits multiple forms (written, electronic, posted)
4. **Vendor due diligence** — may require third-party AI vendor attestation
5. **Fairness testing standards** — IDHR may incorporate NIST AI RMF MEASURE-2.11 by reference

Sentainel should pre-build templates and procedures against proposed-rule language now, then refresh when finals publish. Customers who wait for final rules will face a compressed transition window.

## Illinois AI Statute Stack (Layered Exposure)

| Statute | Citation | Trigger | Damages |
|---|---|---|---|
| HRA AI (this regulation) | 775 ILCS 5/2-102(L) | AI in employment decisions | Civil rights remedies; up to $100K aggravated |
| AIVIA | 820 ILCS 42 | AI analysis of video interviews | Civil rights remedies |
| BIPA | 740 ILCS 14 | Biometric data collection (incl. via AI) | $1,000–$5,000 per violation (private right of action) |
| ADM Act (HB 5116) | pending | AI impact assessment for "deployers" | TBD |

The layering means a single AI-driven hiring tool that:
1. Uses video interviews (AIVIA)
2. Extracts facial geometry (BIPA)
3. Scores applicants for hiring decisions (HRA AI)

…faces concurrent exposure under three statutes. BIPA is the highest-damages exposure ($1K/$5K per applicant per violation with private right of action) — Sentainel customers must understand the BIPA overlay even though it's not directly in the V1 jurisdiction set yet.

**Decision deferred**: BIPA extraction is a separate workstream. It's not directly an AI law — it's a biometric data law that happens to bite hiring AI hard. Extraction is high-value but requires its own metadata structure (biometric-specific, not AI-specific). Track in pending list.

## NIST AI RMF Mapping Approach

Illinois lacks an explicit statutory safe harbor for NIST AI RMF compliance. However, the practitioner consensus is that NIST AI RMF substantial compliance constitutes good-faith evidence in:

1. **IDHR investigations** — analogous to a federal contractor's affirmative action plan demonstrating good faith
2. **Disparate-impact defense** — fairness testing aligned with NIST MEASURE-2.11 strengthens the business-necessity rebuttal
3. **Aggravated-penalty defense** — the additional $100K penalty under 5/8A-104(F) requires "willful" violation; documented NIST compliance is strong evidence against willfulness

Sentainel positioning: Illinois doesn't grant you the safe harbor explicitly, but if you have the same NIST documentation you'd need for Texas, you have the strongest available defense for Illinois too. This is the cross-jurisdiction value the matrix communicates.

## Sales-Critical Facts for Account Executives

1. **15-employee threshold**: almost all national mid-market employers are in scope as soon as one Illinois employee is hired
2. **Notice failure is a standalone violation**: an employer with a fair AI tool still has Illinois exposure if notice was missed
3. **Disparate impact ≠ intent**: customers with TRAIGA compliance need additional Illinois testing
4. **2-year statute of limitations**: longer than federal Title VII's 300 days
5. **Aggravated $100K penalty for willful violation**: this is the budget figure to anchor on in conversations with CFOs
6. **IDHR rulemaking pending**: notice format will get more prescriptive — early adopters benefit

## Legal Review Budget

- US labor & employment lawyer (Illinois bar): 4 hours × $400–$500 USD = $1,600–$2,000
  - Suggested firms: Seyfarth Shaw (issued the load-bearing commentary on HB 3773), Jones Day, Duane Morris, Littler Mendelson
- Review focus: validate disparate-impact analysis approach, verify notice-template language tracks proposed IDHR rules, confirm BIPA-overlay analysis

## Decisions Awaiting Confirmation

- **BIPA extraction priority**: not in V1 jurisdictions; consider as V1.5 add for any customer running biometric hiring AI in Illinois
- **AIVIA in same regulation directory or separate**: separated for V1 (distinct statute, different obligations, different effective dates). Could merge if cross-referencing gets cumbersome.
- **Federal Title VII overlay**: not currently in V1; track for the EU AI Act extraction wave (which will require federal/state interaction analysis)
