# Recourse Workflow — Town of Niagara-on-the-Lake
## Cross-Institutional AI-Decision Challenge Mechanism

**Prepared by Sentainel Compliance · Implementation-ready procedure for three MFIPPA institutions**
**Date: May 2026**

---

## Why this exists

IPC-OHRC Joint Principle 7 (Accountable) requires institutions to establish recourse mechanisms for AI-related concerns. NOTL's tripled-scope IT department creates a challenge: residents, customers, library borrowers, and tourists may have AI-related concerns that span Town, Hydro, or Library jurisdiction without knowing which institution is responsible.

This workflow handles all three institutional pathways through a unified intake while preserving institutional accountability for resolution.

---

## Scope

This workflow handles four categories of concerns, with NOTL-specific institutional routing:

1. **Suspected false output from an AI system** — e.g., ALPR misread, library AI recommendation, smart meter inference
2. **Suspected discriminatory AI use** — Human Rights Code grounds across any institutional context
3. **Suspected undisclosed AI in communications** — Town, Hydro, or Library communications
4. **General AI transparency questions** — across all three institutions

**NOTL-specific category 5:**

5. **Cross-institutional AI concerns** — where a concern spans Town + Hydro + Library and the appropriate institutional responsibility is unclear

---

## Channel design

### Unified public-facing entry point

Add to notl.com: a single page at `/ai-concerns` (with mirrors on notlhydro.com and notlpubliclibrary.org). Single intake form for all three institutions. Intake includes:

- Name (optional)
- Contact email or phone (optional)
- Category (1–5 above)
- Institution involved (dropdown: Town / Hydro / Library / Cross-institutional / Unknown)
- AI system referenced (dropdown of cross-institutional public inventory + "unknown / not listed")
- Description (free text)
- Date of concern
- Supporting documents (file upload)

For international tourists who may not know institutional structure, the form has plain-language labels in multiple languages: English, French, and at minimum Spanish (significant US visitor population).

### Backend routing

Incoming concern routed by category and institution:

| Category | Town | Hydro | Library | Cross-institutional |
|---|---|---|---|---|
| 1 — False output | AI Gov Lead + system owner | Hydro AI sub-lead | Library AI sub-lead | AI Gov Lead (lead) + relevant sub-leads |
| 2 — Discrimination | AI Gov Lead + DEI advisor | Hydro AI sub-lead | Library AI sub-lead + Library Board | AI Gov Lead leads investigation across all affected institutions |
| 3 — Undisclosed AI | Town Clerk + Communications | Hydro Communications | Library Director | AI Gov Lead coordinates institutional disclosure |
| 4 — Transparency | Communications | Hydro Communications | Library Communications | AI Gov Lead produces cross-institutional response |
| 5 — Cross-institutional | AI Gov Lead | AI Gov Lead | AI Gov Lead | AI Gov Lead leads with all sub-leads consulted |

### Service-level commitments

Same as other Niagara cities, with addition:

- **Cross-institutional concerns (Category 5)**: Initial substantive response 15 business days (extra time for coordination), full resolution 60 business days
- **International visitor concerns**: Where the complainant is identified as a tourist, response includes translation if requested and information about home-jurisdiction recourse options

---

## Documentation requirements

For every recourse intake, the AI Governance Lead maintains:

- Intake timestamp + unique ID
- Institutional routing decision
- Cross-institutional coordination log (if Category 5)
- Investigation summary
- Response to resident/visitor with timestamp
- Resolution disposition
- Action taken on AI system(s) or procedure(s)

Quarterly aggregate published on all three institutional websites simultaneously.

---

## Library-specific considerations

Public library borrower confidentiality has heightened common-law protection. The Library AI sub-lead is the primary owner of any AI concern involving library records. The cross-institutional AI Governance Lead is informed but does not have access to specific borrower record details unless the Library AI sub-lead confirms a specific cross-institutional violation has occurred.

This preserves the library-confidentiality firewall while enabling coordinated governance.

---

## Hydro-specific considerations

Utility customer information has both MFIPPA + Ontario Energy Board confidentiality protection. Smart meter data inference is the most granular personal information any of the three institutions handles. The Hydro AI sub-lead has primary ownership of any concern involving meter data.

Where a concern involves cross-institutional inference (e.g., Town staff observing meter-derived occupancy patterns through Copilot), the AI Governance Lead leads investigation with both Hydro and Town sub-leads.

---

## International visitor considerations

NOTL receives substantial international visitor traffic. Where a visitor files a concern:

- Acknowledge in their language of preference if reasonable
- Note that Ontario MFIPPA governs the institutions' AI use regardless of visitor home jurisdiction
- Inform visitor of right to file with IPC even if they are not Ontario residents
- For visitors from EU jurisdictions, acknowledge that GDPR may also apply to their home institutions and offer to coordinate cross-jurisdictional response
- For visitors from US jurisdictions, acknowledge that state privacy laws may apply at home but Ontario MFIPPA governs the captured interaction

---

## Public reporting

Quarterly the AI Governance Lead publishes aggregate summary on all three institutional websites:

- Total concerns received
- Breakdown by category and institution
- Cross-institutional concerns specifically (Category 5)
- International visitor concerns specifically
- Substantiation rate
- Average resolution time
- Actions taken across institutions

This triple-publication is part of NOTL's regional best-practice positioning.

---

## NIST AI RMF mapping

- **GOVERN-5.1, GOVERN-5.2**: Stakeholder feedback channels across three institutions
- **GOVERN-2.1**: Roles & responsibilities documented cross-institutionally
- **MEASURE-3.3**: Stakeholder feedback
- **MANAGE-4.3**: Incidents communicated externally including across institutional boundaries

---

## Approval pathway

Unique to NOTL: three institutional approvals required:

1. Town CAO
2. NOTL Hydro management
3. NOTL Public Library Board

Recommended sequence:

1. Sentainel template adapted by AI Governance Lead
2. Town CAO endorses
3. NOTL Hydro management endorses
4. Library Board adopts at next regular meeting
5. Joint announcement on all three institutional websites

Approval timeline: 60–90 days. Implementation timeline: 30 days after final approval.

---

## Technology requirements

Minimal:

- Single unified web form (hosted on notl.com, embedded on notlhydro.com and library site)
- Dedicated email inbox
- Shared Microsoft Lists tracking spreadsheet accessible to AI Governance Lead + three institutional sub-leads (with role-based access control)

Sentainel Municipal Edition includes production-grade cross-institutional case management for this purpose.
