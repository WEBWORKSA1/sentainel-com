# Town of Niagara-on-the-Lake — Algorithmic Impact Assessment
## Cross-Institutional AI Governance for the Tripled-Scope Environment

**Prepared by Sentainel Compliance for the Town of Niagara-on-the-Lake**
**IPC-OHRC Joint Principles aligned · NIST AI RMF mapped**
**Date: May 2026**

---

## 1. Why this AIA is structurally different

Most AIAs cover a single AI system at a single institution. This one covers a **shared IT environment serving three MFIPPA institutions** (Town of Niagara-on-the-Lake, NOTL Hydro, NOTL Public Library) where AI tools and platforms operate cross-institutionally.

This is the central methodological innovation of this AIA: it treats the IT environment as the primary unit of analysis, not any single AI system, because that environment is where multi-institutional AI compliance is actually managed.

---

## 2. Tripled-scope architecture

### 2.1 The shared environment

Fred Cervantes, Manager of Information Technology, leads IT support to all three institutions per the Town's published directory. The three institutions are:

- **Town of Niagara-on-the-Lake** — municipality, MFIPPA institution under Schedule 1, Part 1
- **Niagara-on-the-Lake Public Library** — library board, MFIPPA institution under Schedule 1, Part 4
- **NOTL Hydro** — local distribution company, MFIPPA institution under separate framework + Ontario Energy Board confidentiality regime

Each is a distinct legal entity with distinct compliance obligations. They share IT services.

### 2.2 What "shared IT" likely means in practice

Based on the Town's documented technology stack (Microsoft IIS, ASP.NET, Drupal 7, ArcGIS, LiveHelp, Microsoft hosting) and the small-municipality pattern, the shared IT environment likely includes:

- A single Microsoft 365 tenancy serving staff at all three institutions
- Shared identity management (likely Azure AD / Entra ID)
- Shared collaboration tools (Teams, SharePoint, OneDrive)
- Shared productivity AI (Microsoft 365 Copilot, if licensed)
- Shared website infrastructure on Microsoft hosting
- Shared geospatial environment (ArcGIS / ArcGIS Online)
- Potentially shared library and hydro customer-facing systems

The IT Manager has unified administrative authority across all three. Compliance obligations are not unified.

### 2.3 Why this is a regulatory innovation challenge

MFIPPA, the IPC-OHRC Joint Principles, the Trustworthy AI Framework, and EDSTA were all written assuming a one-institution-one-IT-environment model. The cross-institutional architecture means:

- A single AI tool licensed by NOTL IT processes data for three different MFIPPA regimes simultaneously
- A single privacy incident may trigger three different breach reporting timelines
- A single IPC complaint may name all three institutions as respondents
- A single AI Governance Lead may be operationally efficient but legally complex (which institution does this lead serve?)

No published Ontario IPC guidance specifically addresses this architecture. NOTL has the opportunity to develop the precedent.

---

## 3. Cross-institutional governance model

### 3.1 Single cross-institutional AI Governance Lead with institutional sub-leads

Recommended structure:

- **Primary AI Governance Lead** — reports to the Town's CAO, has authority across all three institutions
- **Institutional sub-lead, Library** — designated by the Library Board, reports to the primary AI Governance Lead for AI compliance matters and to the Library Board for institutional matters
- **Institutional sub-lead, Hydro** — designated by NOTL Hydro leadership, same dual reporting structure

This preserves institutional autonomy while enabling unified AI compliance oversight.

### 3.2 Cross-institutional Memorandum of Understanding

A written MOU among the three institutions documents:

- AI Governance Lead authority across institutions
- Confidentiality requirements (especially for Library borrower records)
- Breach notification responsibilities and timelines
- IPC complaint coordination procedures
- Vendor procurement coordination (avoiding three separate vendor relationships)
- Cost allocation for shared compliance infrastructure

This MOU does not exist in public record as of May 2026. Drafting it is one of the highest-leverage actions in this audit.

---

## 4. AI system inventory per institution

### 4.1 Town of Niagara-on-the-Lake AI exposures

- NRPS ALPR (umbrella, see 02-pia-template.md)
- Microsoft 365 Copilot in shared tenancy (inferred)
- LiveHelp chatbot on notl.com (possibly AI-enabled)
- ArcGIS Online geospatial AI
- Possible STR enforcement third-party AI
- Possible bylaw enforcement AI
- Standard email security AI

### 4.2 NOTL Public Library AI exposures

- Microsoft 365 Copilot in shared tenancy (inferred)
- Possible AI-powered reference chat services
- Possible AI recommendation engines
- Possible AI-enhanced digital archive / digitization services
- Standard email security AI

**Library-specific concerns:** Borrower confidentiality has additional protections beyond MFIPPA. AI systems that surface borrowing patterns or reading preferences create exposures that the Town side of the shared environment may not be tuned to recognize.

### 4.3 NOTL Hydro AI exposures

- Microsoft 365 Copilot in shared tenancy (inferred)
- Smart meter data analytics AI (inferred from utility-industry standard practice)
- Outage prediction AI (inferred)
- Customer service AI / IVR features
- Standard email security AI

**Utility-specific concerns:** Smart meter data is high-granularity personal information. Outage prediction AI affects which neighbourhoods get prioritized restoration — a potential IPC-OHRC p4 disparate-impact concern. Ontario Energy Board confidentiality requirements layer additional obligations on top of MFIPPA.

---

## 5. IPC-OHRC Joint Principles cross-institutional scoring

See 04-ipc-ohrc-alignment.md for the detailed scoring matrix.

Summary findings:

- **p1 Valid and Reliable:** Inconsistent across the three institutions
- **p2 Safe:** No decommissioning authority designated at any institution
- **p3 Privacy Protective:** Cross-institutional data flows undocumented; Library borrower confidentiality at heightened risk
- **p4 Human Rights Affirming:** Hydro outage prediction + ALPR disparate-impact concerns not assessed
- **p5 Transparent:** No public AI inventory at any institution
- **p6 Accountable Governance:** No designated AI Governance Lead at any institution
- **p7 Accountable Recourse:** No public-facing recourse mechanism at any institution

---

## 6. The unique tripled-scope opportunity

NOTL has the opportunity to develop the **first cross-institutional AI compliance MOU in Ontario**, which would address an architecture (shared IT serving multiple MFIPPA institutions) that is common across Ontario small municipalities, library boards, and utility districts but has no published compliance precedent.

This MOU + governance structure could be replicated across:

- Other small Ontario towns with shared IT serving town + library + utility
- Conservation authorities serving multiple municipalities
- Inter-municipal service boards
- Regional partnerships

NOTL's leadership on this would be cited in:

- AMO best-practice guidance
- IPC ombudsman commentary
- OHRC discussion documents
- Ontario library sector communications
- Ontario utility regulator communications

This is reputational and policy-leadership value that exceeds the cost of compliance work many times over.

---

## 7. Implementation timeline

| Action | Owner | Deadline |
|---|---|---|
| Confirm shared M365 tenancy + Copilot status | Fred Cervantes (IT) | 14 days |
| Confirm LiveHelp AI feature status | Fred Cervantes (IT) | 14 days |
| Designate cross-institutional AI Governance Lead | CAO + Library Board + Hydro leadership | 30 days |
| Draft Cross-Institutional AI Compliance MOU | AI Governance Lead + external counsel | 60 days |
| Adopt MOU at all three institutions | Council + Library Board + Hydro board | 90 days |
| Cross-institutional MFIPPA Bill 97 PIA | AI Governance Lead | 90 days |
| Library-specific borrower confidentiality assessment | Library AI sub-lead | 90 days |
| Hydro-specific OEB compliance assessment | Hydro AI sub-lead | 90 days |
| Cross-institutional public AI inventory | AI Governance Lead | 120 days |
| Cross-institutional recourse mechanism | AI Governance Lead | 120 days |

---

## 8. NIST AI RMF mapping

| NIST control | Coverage by this AIA |
|---|---|
| GOVERN-1.1 | Cross-institutional legal posture documented |
| GOVERN-1.2 | Risk management characterizes cross-institutional commitments |
| GOVERN-1.5 | Ongoing oversight via cross-institutional AI Governance Lead |
| GOVERN-2.1 | Roles & responsibilities defined (primary lead + sub-leads) |
| GOVERN-2.3 | Executive accountability anchored at CAO + Library Board chair + Hydro leadership |
| GOVERN-6.1 | Third-party (shared infrastructure) policies documented |
| MAP-1.1 | Context of use established for tripled-scope environment |
| MAP-3.5 | Human oversight cross-institutional |
| MEASURE-2.10 | Privacy risk evaluated at institutional and cross-institutional levels |
| MANAGE-3.1 | Third-party (shared infrastructure) risk monitoring |

10 NIST controls covered.

---

## 9. Reviewer + sign-off

**Prepared by:** Sentainel Compliance Platform, May 2026
**Intended reviewer:** Town of NOTL CAO + Council + Library Board + Hydro Board + Fred Cervantes (IT Manager) + external counsel

This AIA is a draft template generated by the Sentainel platform. It is intended as the foundation for the Town's actual cross-institutional AI compliance program, not a substitute for council/board-approved versions. The Town should engage counsel before final adoption, especially regarding the cross-institutional MOU.
