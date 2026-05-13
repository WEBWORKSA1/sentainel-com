# Town of Niagara-on-the-Lake — AI Vendor Due Diligence Questionnaire
## Cross-Institutional Edition

**Prepared by Sentainel Compliance for the Town of Niagara-on-the-Lake**
**Date: May 2026**

---

## How to use this questionnaire

The core questionnaire is identical to Thorold 09-vendor-questionnaire.md sections A through J. NOTL adds **Section K** specifically for the tripled-scope context.

The questionnaire is used in:

- All new AI-containing procurements by any of the three institutions
- Retroactive vendor reviews for AI-containing products already in use
- Shared-IT environment vendor reviews (Microsoft, hosting providers, etc.) where the vendor serves all three institutions

---

## Sections A–J

Identical to Thorold 09-vendor-questionnaire.md sections A through J. Refer to that document for full text.

NOTL-specific notes on those sections:

- **B5 (data residency):** Particularly critical for the shared M365 tenancy. If Microsoft processes data in US regions by default, the implications cascade across all three institutions.
- **B7 (retention):** Library borrower data has additional retention considerations under common-law confidentiality. The vendor must support institution-specific retention configuration.
- **E4 (Ontario regulatory compliance):** Must cover MFIPPA Bill 97 + IPC-OHRC + (when proclaimed) EDSTA + Public Libraries Act + OEB rules.
- **G3 (subprocessor geography):** Critical given the international visitor data flowing through NOTL systems during tourist season.

---

## Section K — Cross-institutional architecture (NOTL-specific)

K1. Will your product or service be deployed across multiple distinct legal entities sharing a common IT environment (specifically: Town of Niagara-on-the-Lake, NOTL Public Library, NOTL Hydro)? *(Yes / No / Unknown)*

K2. If yes, can your product support institution-specific data isolation such that:
- Library borrower information is not accessible to Town or Hydro staff?
- Hydro customer information is not accessible to Town or Library staff?
- Cross-institutional administrators (e.g., the cross-institutional AI Governance Lead) have controlled access for compliance purposes only? *(Describe technical capabilities)*

K3. Can your product support institution-specific retention policies such that different retention periods can apply to different data categories from different institutions? *(Yes / No / Partial)*

K4. Can your product support institution-specific recourse routing such that an end user's challenge to AI output is routed to the appropriate institutional sub-lead? *(Yes / No / Possible with configuration)*

K5. Does your contract pricing allow for differential billing across the three institutions, such that each institution can be billed separately or the Town can act as procurement lead with internal allocation? *(Describe)*

K6. Will you sign a single Cross-Institutional Data Processing Agreement that addresses obligations to all three institutions, or do you require separate DPAs? *(Describe preference + flexibility)*

K7. In the event of a privacy incident, will you support the cross-institutional notification approach where the AI Governance Lead receives initial notification and routes to institution-specific sub-leads? *(Yes / No / Conditional)*

K8. Have you served similar shared-IT arrangements at other Ontario municipalities? If yes, can you provide references? *(Yes / No / Names)*

K9. Are you familiar with the Ontario Public Libraries Act + common-law borrower confidentiality requirements? Specifically, can you ensure that AI features do not surface borrowing patterns, reading preferences, or library interaction history inappropriately? *(Yes / No / Will commit)*

K10. Are you familiar with Ontario Energy Board confidentiality requirements applicable to LDC customer data? Specifically, can you ensure that AI features handling smart meter data, outage prediction, or customer service comply with OEB Code of Conduct? *(Yes / No / Will commit)*

---

## Scoring rubric

Responses scored on the 3-point scale described in Thorold 09-vendor-questionnaire.md.

**Critical NOTL-specific questions** that require Strong (3) response or AI Governance Lead review:

- B5, B6 (data residency)
- E3, E4 (NIST + Ontario regulatory)
- K2, K3, K9, K10 (cross-institutional + Library + Hydro specific)

---

## Notes for cross-institutional procurement

NOTL has the opportunity to lead in vendor due diligence for cross-institutional public-sector environments. The Section K questions are not standard in Ontario municipal procurement; they represent NOTL's specific architecture.

Vendors serving Ontario public sector will increasingly need to answer these questions as more municipalities adopt shared-IT arrangements. NOTL using this questionnaire effectively trains the vendor ecosystem.

---

## NIST AI RMF mapping

See Thorold 09-vendor-questionnaire.md § NIST mapping. Plus:

- GOVERN-6.1 (third-party shared infrastructure policies)
- MANAGE-3.1 (cross-institutional risk monitoring of vendors serving multiple institutions)

---

## Reviewer + sign-off

**Prepared by:** Sentainel Compliance Platform, May 2026
**Intended reviewer:** Town of NOTL Procurement + Fred Cervantes (IT Manager) + AI Governance Lead + Library Board procurement + Hydro procurement + Clerk
