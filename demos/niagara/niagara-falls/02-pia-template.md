# City of Niagara Falls — Privacy Impact Assessment
## Niagara Regional Police Service Axon In-Car Camera + ALPR (System AI-002)

**Prepared by Sentainel Compliance for the City of Niagara Falls**
**MFIPPA Bill 97 + IPC-OHRC Principles aligned · NIST AI RMF mapped**
**Date: May 2026**

---

## 1. System overview

**System name:** Axon In-Car Camera (ICC) + Automatic License Plate Recognition (ALPR)

**System owner:** Niagara Regional Police Service (NRPS)
**System category:** Cross-municipal shared service — affects all NRPS jurisdictions including Niagara Falls
**Vendor:** Axon Enterprise Inc.
**Deployment status:** Production
**Operational footprint:** All unmarked/marked Traffic Enforcement Unit vehicles and all marked uniform police vehicles

**System function:** Continuous automated scanning of license plates within camera range, with hot-list matching against MTO and CPIC databases. Audio and video recording capabilities integrated.

**Source of system description:** https://www.niagarapolice.ca/what-we-do/road-safety/in-car-camera-and-automatic-licence-plate-recognition/

---

## 2. Personal information collected

| Data element | Collection method | Retention | Lawful authority |
|---|---|---|---|
| License plate number | Automated optical character recognition | Per MFIPPA + Police Services Act | Police Services Act + MFIPPA s. 28 |
| Vehicle image (front or rear) | Camera capture on hot-list match | Per NRPS retention schedule | Same |
| Hot-list match status (offence type) | API call to MTO + CPIC | Per NRPS retention schedule | Same |
| Officer-vehicle audio recording | Continuous in-vehicle recording | Per NRPS retention schedule | Same |
| Roadway video | Continuous on-vehicle recording | Per NRPS retention schedule | Same |
| GPS coordinates of plate read | Embedded metadata | Per NRPS retention schedule | Same |

**Note from NRPS public disclosure:** "ALPR technology is not designed to collect images of drivers or vehicle occupants" and "ALPR technology does not have facial recognition and cannot detect gender, race, or other identifying characteristics."

Sentainel observation: while ALPR itself does not perform facial recognition, the integrated ICC video stream captures footage that **could be subjected to subsequent facial recognition analysis** if the data is processed by other systems. This is a downstream control question that the PIA must address.

---

## 3. MFIPPA Bill 97 PIA requirements (effective July 1, 2026)

### 3.1 Lawful authority for collection

ALPR processing is authorized under the Police Services Act and MFIPPA s. 28(2). The City of Niagara Falls relies on NRPS as its police service provider; the City's compliance posture is therefore derivative.

**Gap identified:** The City of Niagara Falls has no published statement of its own delegation to NRPS for ALPR processing, nor any reciprocal accountability framework documenting how the City exercises oversight of NRPS AI processing of City-resident personal information.

### 3.2 Purpose limitation (MFIPPA s. 32)

ALPR purpose is documented by NRPS as enforcement of (1) suspended driver licences, (2) stolen/missing vehicles, (3) suspended plates, (4) expired validation tags, (5) Canada-wide warrants, (6) missing persons.

**Gap identified:** No published statement whether ALPR data is used for any **secondary purpose** (e.g. traffic flow analysis, retrospective investigation support). The MFIPPA Bill 97 PIA must affirm purpose limitation.

### 3.3 Safeguards (MFIPPA Bill 97 s. 3 amendments)

NRPS public disclosure does not enumerate technical, administrative, or physical safeguards specific to ALPR processing. A compliant PIA must include:

- Encryption at rest + in transit
- Role-based access controls
- Audit logging of ALPR data access
- Vendor (Axon) data processing agreement terms
- Retention enforcement controls
- Secure deletion procedures

### 3.4 Data subject rights

NRPS public statement: "All requests to view data must be made through a Freedom of Information (FOI) request."

**Gap identified:** No mechanism for a person to challenge an ALPR-driven enforcement action on AI-specific grounds (false positive, OCR error, hot-list error). MFIPPA s. 36–37 provides general access; IPC-OHRC p7 requires AI-specific recourse.

---

## 4. IPC-OHRC Joint Principles alignment

| Principle | Compliance posture | Action required |
|---|---|---|
| **p1 Valid and Reliable** | UNKNOWN — no published OCR accuracy metrics, no false-positive/false-negative reporting | Publish quarterly accuracy report; include performance across plate-state variations (Ontario / out-of-province / damaged plates) |
| **p2 Safe** | PARTIAL — NRPS officer verification mitigates direct harm | Document decommissioning procedure if Axon vendor relationship terminates or if accuracy degrades |
| **p3 Privacy Protective** | PARTIAL — MFIPPA framework exists, AI-specific privacy posture not documented | Issue privacy-by-design statement; document data minimization at OCR layer |
| **p4 Human Rights Affirming** | UNKNOWN — no published disparate impact analysis | **CRITICAL GAP.** Run quarterly disparate impact analysis by deployment location vs neighbourhood demographic data. Publish results. |
| **p5 Transparent** | PARTIAL — NRPS disclosure page exists, lacks IPC-OHRC framing | Publish AI inventory entry on Niagara Falls website with explicit cross-reference to NRPS disclosure |
| **p6 Accountable Governance** | UNKNOWN — designated AI authority not named | Designate NRPS AI Governance Lead; establish pause/decommission authority |
| **p7 Accountable Recourse** | INSUFFICIENT — only FOI pathway exists | Establish AI-specific recourse: allow data subjects to flag suspected false positives directly to NRPS without filing FOI |

---

## 5. NIST AI RMF mapping (the safe-harbor matrix)

This section maps the Niagara Falls / NRPS ALPR system to NIST AI Risk Management Framework controls. Cross-reference: `cross-references/coverage-matrix.csv` in this repo.

| NIST control | Applies to ALPR? | Current status |
|---|---|---|
| GOVERN-1.1 (legal & regulatory) | ✅ | Partial — MFIPPA cited, IPC-OHRC + Trustworthy AI Framework not addressed |
| GOVERN-1.6 (AI inventory) | ✅ | Missing — no city-level AI inventory |
| GOVERN-2.1 (roles & responsibilities) | ✅ | Missing — no designated AI Governance Lead |
| MAP-1.1 (context of use) | ✅ | Partial — purposes listed, secondary use unclear |
| MAP-5.1 (likelihood & magnitude) | ✅ | Missing — no published harm analysis |
| MEASURE-2.1 (test sets & metrics) | ✅ | Missing — no published accuracy reports |
| MEASURE-2.7 (security & privacy risks) | ✅ | Partial — MFIPPA covers privacy, security stack undocumented |
| MEASURE-2.10 (privacy risk) | ✅ | Partial |
| MEASURE-2.11 (fairness & bias) | ✅ | Missing — disparate impact not analyzed |
| MANAGE-2.4 (supersede deficient AI) | ✅ | Missing — no decommissioning procedure |
| MANAGE-3.1 (third-party risk) | ✅ | Missing — Axon DPA not public |
| MANAGE-4.1 (post-deployment monitoring) | ✅ | Missing — no ongoing monitoring published |
| MANAGE-4.3 (incident communication) | ✅ | Partial — FOI exists, no proactive incident disclosure |

**13 NIST controls applicable, 0 fully satisfied on public record.** This is the documentation gap Sentainel closes.

---

## 6. Risk assessment

### High-likelihood / high-impact risks

1. **Disparate impact discrimination claim under Human Rights Code s. 9 + IPC-OHRC p4.** If a public-interest researcher demonstrates ALPR deployments cluster in lower-income/racialized neighborhoods, NRPS faces simultaneous OHRC complaint + IPC inquiry. Cost: legal counsel + remediation + reputation = $250K–$1M.

2. **OCR false-positive cascade.** A misread plate triggers an unwarranted stop. Without published accuracy metrics, NRPS has no defense to a tort claim or Charter s. 8 challenge. Cost: settlement + program suspension.

3. **Axon vendor data breach.** Vendor-side incident exposes all four NRPS cities simultaneously. Cost: MFIPPA breach notification + IPC binding order + class-action exposure.

### Medium-likelihood / medium-impact risks

4. **Charter s. 8 challenge** to scope of ALPR scanning (precedent in other jurisdictions).
5. **Council political risk** when public-interest journalism reveals undisclosed AI use (cf. Erik Nickel's case for ChatGPT).

---

## 7. Mitigation plan

| Action | Owner | Deadline | Sentainel artifact |
|---|---|---|---|
| Publish AI inventory entry on niagarafalls.ca | City Clerk + IT Director | 30 days | This document |
| Designate AI Governance Lead | CAO | 60 days | Governance committee charter |
| Complete MFIPPA Bill 97 PIA in coordination with NRPS | NRPS + 4 city Clerks | 90 days | This document |
| Publish quarterly accuracy report | NRPS | 120 days | Reporting template |
| Run disparate impact analysis | NRPS + external auditor | 180 days | Analysis methodology |
| Establish AI recourse mechanism | City Clerk + NRPS | 180 days | 06-recourse-workflow.md |

---

## 8. Reviewer + sign-off

**Prepared by:** Sentainel Compliance Platform, May 2026
**Drawn from:** NRPS public disclosure + MFIPPA Bill 97 + IPC-OHRC Joint Principles + NIST AI RMF
**Intended reviewer:** City of Niagara Falls CAO + IT Director + NRPS Privacy Officer

This PIA is a draft template generated by the Sentainel platform from public-record evidence. It is intended as the starting point for the City of Niagara Falls' actual MFIPPA Bill 97 PIA, not a substitute for it. The City should engage NRPS, Axon, and counsel to complete validated answers and obtain official sign-off.
