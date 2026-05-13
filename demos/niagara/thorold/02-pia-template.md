# Privacy Impact Assessment — Town of Thorold
## Shared Niagara Regional Police Service Axon ICC + ALPR System

**Prepared by Sentainel Compliance · MFIPPA Bill 97 aligned**
**Date: May 2026**
**Note:** This PIA template is shared across all four Niagara cities. The NRPS ALPR/ICC system processes information of residents and visitors in all NRPS jurisdictions including Thorold. The full reference PIA is at `demos/niagara/niagara-falls/02-pia-template.md`.

---

## 1. Why this PIA exists

MFIPPA Bill 97 amendments require a Privacy Impact Assessment for any AI system that processes personal information. The amendments are in force July 1, 2026 (PIA, safeguards, breach reporting) and January 1, 2027 (IPC binding orders, whistleblower protection).

Thorold residents are subject to Niagara Regional Police Service Axon In-Car Camera and Automatic License Plate Recognition technology. NRPS public disclosure addresses MFIPPA at the regional level but does not contain a Thorold-specific PIA. **This document is the Thorold-side PIA, providing the municipal record that MFIPPA Bill 97 requires the Town to maintain.**

---

## 2. System description

See `demos/niagara/niagara-falls/02-pia-template.md` Section 2 for full system description. In summary:

- **Vendor:** Axon Enterprise, Inc.
- **Products:** Axon In-Car Camera (ICC), Axon Automatic License Plate Recognition (ALPR)
- **Operator:** Niagara Regional Police Service
- **Coverage:** All NRPS jurisdictions including Thorold
- **Personal information captured:** Vehicle license plates, time, GPS location, vehicle images, occasionally driver/pedestrian images
- **AI components:** Automated character recognition; hot-list matching against police databases; potentially behavioral analytics

---

## 3. Thorold-specific context

Thorold residents and visitors are captured by NRPS ALPR/ICC deployment in three contexts particularly relevant to the Town:

1. **Highway 406 corridor** — high-volume vehicle traffic through Thorold's central spine, generating large quantities of plate-capture data
2. **Welland Canal corridor** — international border-adjacent traffic with cross-border data flow implications
3. **Brock University periphery** — student population creates concentrated, repeating data capture pattern

These contexts create Thorold-specific MFIPPA s. 32 (purpose limitation) concerns that are not addressed in the NRPS-level disclosure.

---

## 4. Personal information collected (per MFIPPA s. 28)

| Element | Collection method | Lawful authority |
|---|---|---|
| Vehicle license plate | Automated optical character recognition | MFIPPA s. 28(2) — lawful authority of NRPS |
| Vehicle image (full plate context) | Automated camera capture | MFIPPA s. 28(2) |
| Geolocation of capture | Automatic | MFIPPA s. 28(2) |
| Time of capture | Automatic | MFIPPA s. 28(2) |
| Sometimes driver / passenger image | Automatic (where camera angle captures) | MFIPPA s. 28(2) — but raises s. 32 purpose limitation concerns |

---

## 5. Specific risks identified

### Risk 5.1 — Purpose limitation under MFIPPA s. 32

Where ALPR captures driver or passenger images incidentally, the secondary use of that image data is not clearly limited to the original ALPR purpose. NRPS retains this data; Thorold residents have no clear municipal-level recourse.

**Severity:** Medium
**Mitigation:** Coordinated PIA across NRPS + four Niagara cities clarifying secondary-use limitations

### Risk 5.2 — Cross-border data flow (Welland Canal proximity)

NRPS shares data with cross-border law enforcement systems. Thorold's location adjacent to the US border creates direct exposure to US-Canada law enforcement information sharing agreements that may not satisfy MFIPPA cross-border transfer standards.

**Severity:** Medium-High
**Mitigation:** Confirm with NRPS what US data-sharing applies and document MFIPPA compliance posture

### Risk 5.3 — Brock University periphery surveillance

Dense student population creates repeated capture patterns that constitute a de facto surveillance gradient. Students from racialized or international backgrounds are disproportionately represented in the Brock community. IPC-OHRC p4 (Human Rights Affirming) requires disparate-impact analysis.

**Severity:** Medium
**Mitigation:** Disparate impact study of NRPS ALPR deployment patterns near Brock; remediation if patterns are inequitable

### Risk 5.4 — Hot-list false positives

ALPR systems generate false-positive hot-list matches. A Thorold resident wrongly flagged faces direct law enforcement consequences with no AI-specific recourse mechanism.

**Severity:** Medium
**Mitigation:** Town-level recourse workflow (`06-recourse-workflow.md`) provides a residents-facing complaint channel that supplements NRPS-internal review

---

## 6. Safeguards required under MFIPPA Bill 97

| Safeguard category | Current state | Required by July 1, 2026 |
|---|---|---|
| Technical (encryption, access control) | NRPS-managed | Confirm NRPS standards in writing |
| Administrative (training, policy) | NRPS-managed | Town-side acknowledgment policy required |
| Physical (premises security) | NRPS-managed | Out of scope |
| Logical (audit trails, retention) | NRPS-managed | Confirm retention periods in writing |

---

## 7. Breach reporting (MFIPPA Bill 97 effective July 1, 2026)

If NRPS experiences a breach affecting Thorold residents' ALPR data, the Town must:

- Receive notice from NRPS within established service-level commitment
- Notify affected Thorold residents per MFIPPA Bill 97 requirements
- Report to the IPC within mandatory window
- Document the breach in the Town's MFIPPA Bill 97 breach register

**Action required:** Town must establish written breach-notification SLA with NRPS before July 1, 2026.

---

## 8. Recommended coordinated action

All four Niagara cities share this exposure. Sentainel recommends:

1. **Joint Niagara Regional MFIPPA Bill 97 PIA on NRPS ALPR/ICC** — reduces per-city legal cost, harmonizes Town-side positions
2. **Standing inter-municipal AI coordination protocol** — see `demos/niagara/niagara-falls/07-ipc-complaint-prep.md`
3. **Annual NRPS attestation** to all four Niagara cities confirming continued MFIPPA Bill 97 compliance

For Thorold specifically, given the smaller administrative capacity, joining a coordinated PIA is significantly more efficient than producing a standalone PIA.

---

## 9. Lawful authority assessment

NRPS operates ALPR/ICC under multiple statutory authorities including the Police Services Act and the Criminal Code. MFIPPA s. 28(2) requires collection to be authorized by statute and necessary for the proper administration of a lawfully authorized activity.

For the Town of Thorold's purposes, MFIPPA-side lawful authority is satisfied at the NRPS level. The Town's role is to ensure:

- MFIPPA Bill 97 PIA documentation exists for residents to access on request
- Breach notification flow is in place
- IPC-OHRC Principles alignment is documented at the Town level
- Resident recourse mechanism is available for AI-specific concerns

---

## 10. NIST AI RMF mapping

See `cross-references/coverage-matrix.csv` for full mapping. Key controls:

- **GOVERN-1.1**: Legal & regulatory requirements managed
- **GOVERN-4.3**: Testing & incident sharing across regional cities
- **MEASURE-2.7**: Security & privacy risks documented
- **MEASURE-2.10**: Privacy risk evaluation
- **MEASURE-2.11**: Fairness & bias eval (Brock periphery disparate-impact concern)
- **MANAGE-3.1**: Third-party risk monitoring (NRPS as Town's vendor in PIA terms)

---

## 11. Approval pathway

This PIA template is **not** a final PIA. It is a starting point for the Town's MFIPPA Privacy Officer (typically the Town Clerk in a municipality of Thorold's size) to formalize before July 1, 2026.

**Recommended approval pathway:**

1. Town Clerk reviews and adapts this template
2. Town legal counsel reviews lawful authority assessment
3. CAO approves
4. Filed in Town's MFIPPA records
5. Submitted to NRPS as part of regional coordination
6. Made available to residents on request under MFIPPA s. 36

---

## 12. Disclaimers

This PIA is a template generated by the Sentainel platform from public-record evidence. The Town should retain Ontario MFIPPA counsel for any specific legal question. Nothing in this document constitutes a legal opinion.
