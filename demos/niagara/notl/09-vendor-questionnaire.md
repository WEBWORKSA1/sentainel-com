# Vendor Due Diligence Questionnaire — Town of Niagara-on-the-Lake
## Cross-Institutional Procurement for AI-Containing Products and Services

**Prepared by Sentainel Compliance · May 2026**
**Issuing institutions:** Town of Niagara-on-the-Lake, NOTL Hydro, NOTL Public Library (jointly or individually as applicable)

---

## How to use this questionnaire

NOTL's tripled-scope IT department means many AI-containing products serve more than one institution. This questionnaire is structured to identify single-institution vs. cross-institutional deployments and to apply appropriate compliance scrutiny.

**For procurement officers:** If the vendor's product will be deployed in the shared Microsoft tenancy or otherwise have cross-institutional reach, all three institutions (Town, NOTL Hydro, NOTL Public Library) issue this questionnaire jointly. The vendor responds once; all three institutions review and approve.

---

## Section 1: Vendor identification

1.1 Vendor legal name:
1.2 Vendor principal business address:
1.3 Vendor contact for AI compliance questions:
1.4 Vendor primary regulator (if any):
1.5 Vendor incorporation jurisdiction:
1.6 Vendor's most recent independent audit (SOC 2, ISO 27001, etc.):

---

## Section 2: System description and deployment scope

2.1 Name of the AI-containing product/service:
2.2 What AI techniques does the system use?
2.3 **Cross-institutional scope question: Will this product be deployed in shared infrastructure serving more than one of NOTL's three MFIPPA institutions (Town, NOTL Hydro, NOTL Public Library)?**
 - [ ] Single institution only — specify: ________
 - [ ] Two institutions — specify: ________
 - [ ] All three institutions
 - [ ] Configuration-dependent
2.4 If cross-institutional, does the system provide data segregation between institutional domains? Describe.
2.5 Where is AI processing performed? (Region, country)
2.6 Where is data stored at rest?
2.7 Is any data transferred outside Canada?

---

## Section 3: Data handling per institutional context

For cross-institutional deployments, the vendor responds for each institution:

### 3.A Town context

3.A.1 Personal information of Town residents processed:
3.A.2 Town record types accessed (FOI requests, council communications, etc.):
3.A.3 Data retention period for Town data:

### 3.B NOTL Hydro context

3.B.1 Customer information processed:
3.B.2 Smart meter or operational data accessed:
3.B.3 OEB-relevant data processed (confirm OEB confidentiality compatibility):
3.B.4 Data retention period for Hydro data:

### 3.C NOTL Public Library context

3.C.1 Borrower information processed:
3.C.2 Children's program data accessed (if any):
3.C.3 Reference inquiry / browsing pattern data processed:
3.C.4 Confirmation of common law librarian-borrower confidentiality preservation:
3.C.5 Data retention period for Library data:

### 3.D Cross-institutional safeguards

3.D.1 Are personal information data domains segregated by institution?
3.D.2 Are role-based access controls aligned to institutional employment?
3.D.3 Can Town staff access Library or Hydro data domains? Under what conditions?
3.D.4 Audit logging configuration for cross-institutional access?

---

## Section 4: IPC-OHRC Joint Principles compliance

Standard cross-institutional version of the principles questionnaire. See `demos/niagara/thorold/09-vendor-questionnaire.md` Section 4 for full principle-by-principle treatment, applied across all three institutional contexts where applicable.

Additional NOTL-specific questions:

### p3 Privacy Protective (NOTL-specific)

4.3.NOTL.1 If the vendor processes Library borrower data, what specific protections exist beyond standard data minimization?
4.3.NOTL.2 If the vendor processes Hydro smart meter data, what protections against occupancy inference apply?
4.3.NOTL.3 If the vendor enables Town staff access to Hydro or Library data, what lawful authority assessment is required?

### p4 Human Rights Affirming (NOTL-specific)

4.4.NOTL.1 If the vendor processes heritage-zone enforcement data (e.g., STR enforcement), what disparate impact analysis applies?
4.4.NOTL.2 If the vendor processes Library borrowing patterns, what protections against Code-protected ground inference (religion, sexual orientation, political views) exist?
4.4.NOTL.3 If the vendor processes data about international visitors, what equity considerations apply?

---

## Section 5: NIST AI RMF alignment

Standard. See `demos/niagara/thorold/09-vendor-questionnaire.md` Section 5.

---

## Section 6: Library + Hydro specific certifications

6.1 If the vendor's product is used in Library operations:
 - Has the vendor provided written commitment to preserve common law librarian confidentiality?
 - Has the vendor reviewed Public Libraries Act applicability?
 - Has the vendor agreed to Library Board oversight terms?
6.2 If the vendor's product is used in Hydro operations:
 - Has the vendor confirmed OEB confidentiality compatibility?
 - Has the vendor provided written commitment regarding smart meter data inference?
 - Has the vendor agreed to OEB notification protocols where applicable?

---

## Section 7: Regional considerations for Niagara cities

7.1 Vendor's other Ontario municipal customers:
7.2 Vendor's other Niagara Region customers:
7.3 Cross-municipality coordination supported?
7.4 Inter-municipal coordinated PIA support?

---

## Section 8: Heritage-tourism specific considerations (NOTL-specific)

8.1 If the vendor's product processes international visitor data, what multi-jurisdictional compliance support is provided?
8.2 If the vendor's product has user-facing interactions, what language support exists for international visitors?
8.3 If the vendor's product is operationally critical during festival season, what scaling commitments exist?
8.4 If the vendor's product affects tourism / heritage operations, what reputational risk acknowledgment is provided?

---

## Section 9: Contractual provisions required

Standard plus:

9.1 MFIPPA Bill 97 Data Processing Agreement
9.2 Breach notification SLA
9.3 Audit rights for the three institutions or joint designee
9.4 Right to require AIA / PIA documentation
9.5 Right to require vendor cooperation in IPC investigations involving any of the three institutions
9.6 **Cross-institutional accountability:** Vendor acknowledges that data processing for the shared tenancy may affect multiple MFIPPA institutions and accepts joint accountability
9.7 **Library borrower confidentiality provision:** Vendor agrees to specific confidentiality treatment for any Library borrower data
9.8 **OEB confidentiality provision:** Vendor agrees to OEB-compatible confidentiality for any Hydro customer data
9.9 Indemnification
9.10 Right to terminate without penalty if vendor compliance posture weakens
9.11 Survival of confidentiality, audit, and indemnification post-termination

---

## Section 10: Vendor commitment

Vendor confirms accuracy of responses and acceptance of contractual provisions.

Signature block.

---

## Section 11: NOTL review checklist

Tri-institutional review:

- [ ] Vendor identification complete
- [ ] Cross-institutional scope clearly identified (Section 2.3)
- [ ] Town-side data handling acceptable (Section 3.A)
- [ ] NOTL Hydro-side data handling acceptable + OEB compatible (Section 3.B)
- [ ] NOTL Public Library-side data handling acceptable + Library Board input received (Section 3.C)
- [ ] Cross-institutional safeguards adequate (Section 3.D)
- [ ] IPC-OHRC principle alignment satisfactory (Section 4)
- [ ] NIST AI RMF alignment present or agreed to be added (Section 5)
- [ ] Library + Hydro specific certifications received (Section 6)
- [ ] Regional Niagara coordination supported (Section 7)
- [ ] Heritage-tourism considerations addressed (Section 8)
- [ ] Contractual provisions accepted (Section 9)
- [ ] AI Governance Lead approval
- [ ] Cross-institutional sub-lead approvals (Town, Hydro, Library)
- [ ] Library Board approval (if Library data processed)
- [ ] Hydro management approval (if Hydro data processed)
- [ ] Town CAO approval (procurement value threshold)
- [ ] Council approval (procurement value threshold)

---

## When to engage Sentainel

Sentainel Municipal Edition's vendor management module is particularly valuable for NOTL's tripled-scope procurement:

- Tri-institutional vendor questionnaire workflow
- Cross-institutional vendor scoring against MFIPPA Bill 97 + IPC-OHRC standards
- Vendor change-monitoring for cross-institutional implications
- Library + Hydro specialized vendor categories

Contact: `web@sentainel.com`
