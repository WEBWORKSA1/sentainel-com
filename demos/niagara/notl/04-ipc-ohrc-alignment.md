# IPC-OHRC Joint Principles Alignment Scorecard — Town of Niagara-on-the-Lake

**Prepared by Sentainel Compliance · May 2026**
**Coverage:** 9 identified AI exposures × 7 IPC-OHRC Principles = 63 alignment data points
**Tripled-scope adjustment:** Many cells must be evaluated for Town + Hydro + Library separately

---

## Scoring legend

- ✅ **Aligned**
- 🟡 **Partial**
- ❌ **Gap**
- ⚫ **Out of scope**
- 🔵 **External** (e.g., NRPS)
- 🔴 **Tripled scope** — same row may have different scores for Town vs Hydro vs Library

---

## Alignment matrix (current state)

| AI exposure | p1 | p2 | p3 | p4 | p5 | p6 | p7 |
|---|---|---|---|---|---|---|---|
| AI-001 NRPS ALPR | 🔵 | 🔵 | 🔵 | ❌ | 🟡 | 🔵 | ❌ |
| AI-002 Cross-tenancy M365 Copilot | ❌🔴 | ❌🔴 | ❌🔴 | ❌🔴 | ❌🔴 | ❌🔴 | ❌🔴 |
| AI-003 LiveHelp on notl.com | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ |
| AI-004 STR enforcement AI | 🟡 | 🟡 | ❌ | ❌ | ❌ | ❌ | ❌ |
| AI-005 ArcGIS / ArcGIS Online | 🟡 | 🟡 | 🟡 | 🟡 | ❌ | ❌ | ❌ |
| AI-006 NOTL Library AI services | ❌ | ❌ | ❌🔴 | ❌🔴 | ❌ | ❌ | ❌ |
| AI-007 NOTL Hydro smart-metering AI | ❌ | ❌ | ❌🔴 | ❌🔴 | ❌ | ❌ | ❌ |
| AI-008 Bylaw / hiring / email security AI | 🟡 | 🟡 | 🟡 | 🟡 | ❌ | ❌ | ❌ |
| AI-009 Council astroturfing risk | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ |

---

## Score summary

| Principle | Aligned | Partial | Gap | External | Tripled |
|---|---|---|---|---|---|
| p1 | 0 | 4 | 5 | 0 | 1 |
| p2 | 0 | 4 | 5 | 0 | 1 |
| p3 | 0 | 2 | 7 | 0 | 3 |
| p4 | 0 | 2 | 7 | 0 | 3 |
| p5 | 0 | 1 | 8 | 0 | 0 |
| p6 | 0 | 0 | 9 | 0 | 1 |
| p7 | 0 | 0 | 9 | 0 | 0 |

**Aggregate: 0 of 63 cells fully aligned, 13 partial, 50 gaps, 0 external (NRPS is shared, not external), 9 tripled-scope cells requiring per-institution evaluation.**

This is the most complex alignment posture in the four-city bundle. NOTL's tripled scope multiplies the work but also multiplies the regional leadership opportunity.

---

## Projected scoring after 90-day standup

If the Town adopts the cross-institutional remediation plan, the score shifts to approximately **42 of 63 aligned**. The remaining gaps reflect the additional complexity of cross-institutional governance that cannot be fully closed in 90 days but is on a clear path to closure.

---

## Critical observations

### Observation 1: AI-002 (cross-tenancy Copilot) is the highest-priority remediation

The tripled-scope concern multiplies every other consideration. **Until cross-institutional governance is in place, every other AI deployment in the shared tenancy inherits the compliance gap.** This is the foundation that everything else builds on.

### Observation 2: Library row (AI-006) requires specialized treatment

Public library borrower confidentiality is a heightened expectation in Ontario. The Library Board must be a primary participant in NOTL's AI governance design, not a downstream stakeholder. The NOTL Public Library has the strongest reason among the three institutions to advocate for stringent governance.

### Observation 3: Hydro row (AI-007) has the highest data sensitivity

Smart meter data is the most granular personal information any of the three institutions handles. Occupancy patterns, household composition, and behavioral inference are all derivable from electricity usage. Hydro's AI governance must include explicit smart-meter data treatment.

### Observation 4: The p6 + p7 columns are universally weak

Governance and recourse score zero across all rows. Same as Thorold. Both are remediated by cross-institutional AI Governance Council + cross-institutional recourse workflow. Two artifacts, fourteen cell closures.

### Observation 5: AI-009 (astroturfing risk) applies to NOTL Council

The Thorold precedent applies to all Ontario councils. NOTL Council is exposed to the same risk pattern, though no specific incident has yet been documented for NOTL. Adopting the Thorold-developed procedure (`demos/niagara/thorold/03-aia-template.md` Part B) closes this row.

---

## Comparison to peer Niagara cities

Projected aggregate alignment scores after Sentainel-recommended 90-day standup:

| City | Cells | Today | After 90-day | Complexity factor |
|---|---|---|---|---|
| Niagara Falls | 42 | 2 | 35 | 1.0x |
| St. Catharines | 42 | 3 | 34 | 1.2x (Catharine remediation) |
| **NOTL** | **63** | **0** | **42** | **1.5x (tripled scope)** |
| Thorold | 42 | 0 | 36 | 0.7x (zero-day baseline) |

NOTL has the most cells, the most complexity, and the longest path. But: the path is well-defined and the regional best-practice positioning is uniquely valuable.

---

## Recommendations

1. **Begin with AI-002** (cross-tenancy Copilot governance) — foundation for everything else
2. **Establish cross-institutional AI Governance Council** within 30 days — single artifact, opens all rows
3. **Confirm LiveHelp AI features** with Fred Cervantes — single email determines AI-003 priority
4. **Identify STR enforcement vendor** (if any) — closes AI-004 once vendor questionnaire complete
5. **Adopt Thorold-developed astroturfing procedure** — closes AI-009
6. **Coordinate with NRPS + 3 peer cities** for ALPR/ICC — closes AI-001
7. **Library + Hydro institutional sign-offs** on cross-institutional approach — enables the rest of the matrix
8. **Engage Sentainel** for continuous monitoring

---

## Disclaimers

This scorecard is generated from public-record evidence and standard methodological inference. Many cells depend on confirmation by Fred Cervantes, IT Manager. Tripled-scope cells require institution-specific evaluation by representatives of each of the three MFIPPA institutions. Nothing in this document constitutes a legal opinion.
