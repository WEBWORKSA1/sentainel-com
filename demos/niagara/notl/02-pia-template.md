# Privacy Impact Assessment — Town of Niagara-on-the-Lake
## Shared NRPS ALPR/ICC + Tripled-Scope Microsoft 365 Tenancy

**Prepared by Sentainel Compliance · MFIPPA Bill 97 aligned**
**Date: May 2026**
**Note:** This PIA addresses two highest-priority NOTL exposures. The NRPS ALPR/ICC reference PIA is at `demos/niagara/niagara-falls/02-pia-template.md`.

---

## 1. Why this PIA exists

The Town of Niagara-on-the-Lake is unique among the four Niagara cities in this bundle: **the Town's IT department serves three distinct MFIPPA institutions** — the Town, NOTL Hydro, and the NOTL Public Library. Each is independently a MFIPPA institution. Each requires its own MFIPPA Bill 97 PIA.

This PIA addresses both the NRPS ALPR shared regional exposure (common to all four Niagara cities) **and** the tripled-scope Microsoft 365 tenancy exposure (unique to NOTL).

---

## Part A: NRPS ALPR/ICC (shared regional exposure)

### A.1 System summary

See `demos/niagara/niagara-falls/02-pia-template.md` for the full system description. NRPS operates Axon ICC + ALPR across all NRPS jurisdictions including NOTL.

### A.2 NOTL-specific contexts

NRPS ALPR captures personal information of NOTL residents and visitors in contexts particularly relevant to the Town:

1. **Queen Street heritage corridor** — high-volume tourist traffic with mass plate-capture during festival season
2. **Niagara Parkway** — cross-border-adjacent traffic, with US visitor data flow implications
3. **Wine country routes (Niagara Stone Road, York Road, John Street)** — international visitor patterns generating substantial out-of-province data capture
4. **Shaw Festival venues + parking** — recurring concentrated capture events tied to performance schedules

### A.3 Heritage-tourism specific risks

**Risk A.3.1: International visitor MFIPPA exposure.** Tourists from outside Ontario whose plates are captured by NRPS ALPR have personal information processed by an Ontario MFIPPA institution without their reasonable awareness. Disclosure language at the regional level is insufficient for international visitor populations.

**Risk A.3.2: Heritage-zone disparate impact.** Parking enforcement and traffic management in the heritage zone disproportionately affects visitors. Where AI-enabled enforcement decisions are made, disparate impact analysis under IPC-OHRC p4 is required.

**Risk A.3.3: Festival-season data volume spikes.** During Shaw Festival, festivals, and peak tourism, NRPS ALPR data volume spikes dramatically. Retention practices and access controls must scale accordingly.

All three risks are addressed by joining the proposed coordinated NRPS + 4-city PIA, with NOTL-specific tourism-context annexes.

---

## Part B: Tripled-Scope Microsoft 365 Tenancy (NOTL-unique exposure)

### B.1 Why this matters

Fred Cervantes, Manager of Information Technology, is named on the Town's public website as the IT lead for the Town, NOTL Hydro, and the NOTL Public Library. This typically implies shared Microsoft 365 tenancy serving all three institutions.

If Microsoft 365 Copilot is enabled in this tenancy — a near-universal pattern for Ontario municipal IT departments by mid-2026 — then **a single AI deployment processes personal information from three distinct MFIPPA institutions simultaneously**:

- **Town:** municipal records, FOI requests, council communications
- **NOTL Hydro:** utility customer billing, smart meter data, outage management
- **NOTL Public Library:** borrower records, reference inquiries, program registrations

Each institution has distinct privacy expectations. **The library has the strongest common-law confidentiality expectation in Ontario; the utility has the most granular personal information (smart meter occupancy patterns); the Town has the most varied data types.** A single Copilot deployment processing across all three creates compliance scope tripling.

### B.2 PIA scope decision

The Town has two options for addressing this:

**Option B.2.1: Three separate PIAs (one per institution).** Higher administrative cost. Clearer institutional accountability. Standard MFIPPA approach.

**Option B.2.2: One cross-institutional PIA with three institutional annexes.** Lower administrative cost. Demonstrates regional best-practice coordination. Requires explicit institutional sign-offs (Town CAO, NOTL Hydro management, Library Board).

Sentainel recommends Option B.2.2 as both more efficient and more illustrative of the IPC-OHRC p6 (Accountable Governance) principle that explicitly endorses shared governance structures.

### B.3 Cross-institutional data flow inventory

| Data category | Town | Hydro | Library | MFIPPA Bill 97 PIA scope |
|---|---|---|---|---|
| Resident personal info | Yes | Customer-facing | Yes (borrower) | All three institutions |
| Financial info | Yes (taxes) | Yes (billing) | Limited (fines) | All three institutions |
| Occupancy / behavioral inference | Limited | Yes (smart meter) | Yes (borrowing patterns) | All three institutions, but Library borrowing has heightened confidentiality |
| Children's information | Limited | No | Yes (children's library) | Library specifically |
| FOI request content | Yes | No | Yes | Town + Library |

### B.4 Specific Copilot risks across the tripled scope

**Risk B.4.1: Cross-institutional data leakage.** Copilot indexes across the tenancy. A Town staff member asking Copilot a question may receive information drawn from Library borrower records or Hydro customer records. This is technically a data flow that may not satisfy MFIPPA s. 32 purpose limitation across institutional boundaries.

**Risk B.4.2: Library confidentiality violation.** Public library borrower records have heightened confidentiality expectations under common law. Copilot summarization of activity that surfaces borrowing patterns to non-library staff is a serious confidentiality concern.

**Risk B.4.3: Smart meter data inference.** Copilot summarization across Hydro operations may surface household occupancy patterns inferable from smart meter data, processed by Town or Library staff without lawful authority to access utility customer data.

**Risk B.4.4: Children's information cross-flow.** Children's library program data has additional regulatory protection. Copilot access by Town or Hydro staff potentially exposes children's information without lawful authority.

### B.5 Safeguards required

If Option B.2.2 (one cross-institutional PIA) is selected, the following safeguards must be in place:

- **Institutional data segregation in Copilot.** Microsoft 365 Copilot provides administrative controls to segregate data domains. These must be configured before Copilot is enabled in production.
- **Role-based access aligned to institutional employment.** Town staff cannot have Copilot access to Library or Hydro data domains except where lawful authority exists.
- **Library borrower record protection.** Library borrower data must be specifically excluded from Copilot indexing or accessible only to designated Library staff.
- **Children's information protection.** Children's program data must be specifically excluded from Copilot indexing.
- **Audit logging.** All Copilot query and response patterns logged with sufficient detail to support IPC investigation.
- **Annual cross-institutional PIA refresh.** As Copilot capabilities expand, the PIA must be refreshed to reflect new data flows.

### B.6 IPC-OHRC alignment

Cross-institutional AI deployment triggers all seven IPC-OHRC Principles. Particularly significant:

- **p3 Privacy Protective:** Data minimization across three institutional contexts
- **p4 Human Rights Affirming:** Library borrowing patterns can reveal Code-protected information (religion, sexual orientation, political views); cross-institutional access creates discrimination risk
- **p6 Accountable Governance:** Single AI Governance Lead with cross-institutional authority
- **p7 Accountable Recourse:** Residents have access pathways through each institution; AI-specific recourse must work across all three

---

## 3. The strategic position

NOTL's tripled-scope situation is unique in Ontario among municipalities of its size. The Town has two strategic positions:

**Position A: Quiet compliance.** Address each institution separately, low public profile, minimum regulatory exposure.

**Position B: Regional best-practice leadership.** Publish the cross-institutional PIA as a public example of how shared-IT MFIPPA institutions can demonstrate coordinated AI governance. Position NOTL as the Ontario model for shared-service public-sector AI compliance.

For a Town with the international visibility of Niagara-on-the-Lake (Shaw Festival, wine country, heritage tourism), Position B has reputational benefits well beyond compliance.

---

## 4. Recommended action

1. **Within 30 days:** Confirm Microsoft 365 Copilot deployment status with Fred Cervantes, IT Manager
2. **Within 60 days:** Establish cross-institutional AI Governance Council with representatives from Town, Hydro, and Library
3. **Within 90 days:** Complete cross-institutional PIA on Copilot (or equivalent AI in shared tenancy)
4. **Within 90 days:** Join coordinated NRPS + 4-city PIA for ALPR/ICC
5. **Within 180 days:** Publish cross-institutional AI inventory + alignment scorecard
6. **Ongoing:** Sentainel Municipal Edition cross-institutional support

---

## 5. NIST AI RMF mapping

See `cross-references/coverage-matrix.csv`. Key controls:

- **GOVERN-1.1**: Legal & regulatory requirements managed across three institutions
- **GOVERN-1.4**: Risk management documented at cross-institutional level
- **GOVERN-2.1**: Roles & responsibilities defined cross-institutionally
- **GOVERN-2.3**: Executive accountability across institutions
- **GOVERN-6.1**: Third-party policies (Microsoft as cross-institutional vendor)
- **MAP-4.1**: Third-party legal risks (cross-institutional Copilot deployment)
- **MEASURE-2.7**: Security & privacy risks across institutional boundaries
- **MEASURE-2.10**: Privacy risk evaluation for each institutional context
- **MANAGE-3.1**: Third-party risk monitoring (Microsoft + HSO if relevant)

---

## 6. Disclaimers

This PIA template is generated by the Sentainel platform from public-record evidence. Several findings depend on confirmation by Fred Cervantes, IT Manager. Nothing in this document constitutes a legal opinion. The Town should retain Ontario MFIPPA counsel + library law expertise + utility regulatory counsel for the cross-institutional PIA finalization.
