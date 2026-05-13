# Town of Niagara-on-the-Lake — Privacy Impact Assessment
## Niagara Regional Police Service Axon In-Car Camera + ALPR (System AI-001)

**Prepared by Sentainel Compliance for the Town of Niagara-on-the-Lake**
**MFIPPA Bill 97 + IPC-OHRC Principles aligned · NIST AI RMF mapped**
**Date: May 2026**

---

## 1. System overview

**System name:** Axon In-Car Camera (ICC) + Automatic License Plate Recognition (ALPR)
**System owner:** Niagara Regional Police Service (NRPS)
**System category:** Cross-municipal shared service — affects all NRPS jurisdictions including NOTL
**Vendor:** Axon Enterprise Inc.
**Deployment status:** Production

**NOTL-specific scope:**

The Town of Niagara-on-the-Lake relies entirely on NRPS for policing services. However, NOTL's deployment context is materially different from peer Niagara cities because:

- NOTL's geography includes the heritage Old Town, Virgil, St. Davids, and Queenston
- Tourism economy generates seasonal traffic surges (Shaw Festival, wine country)
- High volume of out-of-province and international visitor plate captures
- Heritage-zone enforcement activity is concentrated in commercially-dense small areas

This creates a distinct disparate-impact profile relative to permanent residents.

---

## 2. Personal information collected

Identical to the shared ALPR template (see Niagara Falls 02-pia-template.md § 2).

NOTL-specific concerns:

- **High volume of non-resident plates.** ALPR data captured in NOTL is overwhelmingly non-resident. The MFIPPA framework was designed for resident protection; extra-jurisdictional and international visitor protection is less clearly addressed in MFIPPA and may invoke PIPEDA + other privacy regimes.
- **Seasonal surge data volume.** ALPR data volume in NOTL is 3-5× higher during tourist season than off-season. Storage, retention, and processing systems must handle this without degradation that would compromise accuracy.
- **Heritage-zone bylaw enforcement integration.** ALPR data may be cross-referenced with parking enforcement, heritage-bylaw enforcement, and short-term-rental enforcement, creating multi-system data flows that exceed the original ALPR purpose.

---

## 3. MFIPPA Bill 97 PIA requirements

### 3.1 Lawful authority for collection

ALPR processing is authorized under the Police Services Act and MFIPPA s. 28(2). NOTL's compliance posture is derivative on NRPS but is complicated by the tripled-institution IT context (Town, NOTL Hydro, NOTL Public Library).

**Gap identified:** The Town does not have a published statement clarifying how its delegation to NRPS interacts with its own AI compliance obligations across all three MFIPPA institutions.

### 3.2 Purpose limitation, safeguards, data subject rights

See Niagara Falls 02-pia-template.md § 3.2–3.4 for the shared NRPS analysis.

**NOTL-specific concerns:**

- Cross-system data flows (ALPR → parking → STR → heritage bylaw enforcement) may exceed lawful authority for collection if not specifically documented
- Seasonal surge handling capacity must be safeguarded
- Out-of-province visitors have data subject rights that may be unclear under MFIPPA but clear under home-jurisdiction privacy law (Quebec Law 25, US state laws, EU GDPR, etc.)

---

## 4. IPC-OHRC Joint Principles alignment

See Niagara Falls 02-pia-template.md § 4. All seven principles apply identically.

**NOTL-specific concern under p4 Human Rights Affirming:**

ALPR deployments in tourist economies can disproportionately scrutinize particular demographics of visitors (international students at NOTL hostels, racialized visitors to wine country, etc.). The Town has a heightened obligation to monitor for disparate-impact effects despite the transient nature of the affected population.

**NOTL-specific concern under p5 Transparent:**

International visitors have no reasonable expectation of being subject to Ontario-specific ALPR processing unless disclosed. The Town's tourism communications should include AI processing disclosure in a manner accessible to international visitors.

---

## 5. NIST AI RMF mapping

See Niagara Falls 02-pia-template.md § 5. The same 13 NIST controls apply to NOTL.

**NOTL-specific gap analysis:**

- MAP-4.1 (third-party legal risks): heightened concern given international visitor data
- MEASURE-2.10 (privacy risk): heightened concern given cross-system data flows
- MANAGE-3.1 (third-party risk monitoring): NRPS + tourism-marketing partners + STR enforcement vendors form a complex third-party chain

---

## 6. Risk assessment

### NOTL-specific risks

1. **Tourism reputation risk.** A privacy incident affecting Shaw Festival or wine-country visitors generates international media coverage with disproportionate impact on the Town's brand. The economic case for prevention is much stronger than for a non-tourism city.

2. **International visitor compliance complexity.** EU GDPR + Quebec Law 25 + US state laws + Ontario MFIPPA may all apply to the same ALPR data event depending on the visitor's origin. Sentainel's multi-jurisdiction coverage is uniquely valuable here.

3. **Cross-system data flow exposure.** ALPR data combined with heritage bylaw enforcement and STR enforcement creates a richer data picture than any single system, with corresponding higher MFIPPA exposure.

4. **Tripled-institution scope.** The Town's IT shared services arrangement means any ALPR-related data issue may implicate NOTL Hydro or NOTL Public Library systems if data crosses institutional boundaries.

---

## 7. Mitigation plan

| Action | Owner | Deadline | Artifact |
|---|---|---|---|
| Publish AI inventory entry on notl.com | CAO + Clerk + Fred Cervantes (IT) | 30 days | This document + 01-ai-inventory.md |
| Designate AI Governance Lead (cross-institutional) | CAO | 60 days | Governance designation |
| Coordinate with NRPS + 3 peer cities for joint PIA | Clerk | 90 days | Shared PIA |
| Document cross-system data flows (ALPR → parking → STR) | IT Director + Bylaw | 90 days | Data flow diagram |
| International-visitor disclosure update on Tourism NOTL site | Tourism + Clerk | 120 days | Updated visitor information |
| Publish quarterly accuracy report (NRPS-led) | NRPS + Town | 120 days | Reporting template |
| Run disparate-impact analysis with NOTL-specific cuts | NRPS + external auditor | 180 days | Methodology |
| Establish AI recourse mechanism | Clerk + AI Governance Lead | 180 days | 06-recourse-workflow.md |

---

## 8. Reviewer + sign-off

**Prepared by:** Sentainel Compliance Platform, May 2026
**Drawn from:** NRPS public disclosure + MFIPPA Bill 97 + IPC-OHRC Joint Principles + NIST AI RMF + Town public information
**Intended reviewer:** Town of Niagara-on-the-Lake CAO + Clerk + IT Director (Fred Cervantes) + NRPS Privacy Officer

This PIA is a draft template generated by the Sentainel platform. The Town should engage NRPS, Axon, and counsel to complete validated answers and obtain official sign-off.
