# Council Brief — City of St. Catharines
## AI Compliance Posture Under the Ontario Municipal Regulatory Stack

**Prepared by Sentainel Compliance · For City Council, Mayor, CAO**
**Date: May 2026 · One-page summary**

---

### The picture

The City of St. Catharines is **the most AI-exposed of the four Niagara cities**. The City operates **Catharine**, a named, public-facing, production AI chatbot built on Microsoft Copilot Studio in partnership with HSO. Catharine has been live since approximately February 2025. It collects name, email, and phone numbers from residents. It processes natural-language complaints, inquiries, and personal information at scale.

As of May 2026, public records do not show:

- A published MFIPPA Bill 97 Privacy Impact Assessment for Catharine
- An Algorithmic Impact Assessment aligned with the IPC-OHRC Joint Principles
- A public AI inventory on stcatharines.ca
- A designated AI Governance Lead at the City's corporate level
- A public recourse mechanism for residents to challenge Catharine's outputs
- Disclosure of which Microsoft Azure region processes Catharine's data

This is typical for Ontario municipalities with production AI in May 2026. **It is not defensible under the four-layer Ontario AI regulatory stack** that crystallized between December 2024 and January 2026.

---

### Why this is more urgent than peer cities

A City running an unmanaged staff use of ChatGPT (like Niagara Falls) has plausible deniability — the AI is informal, individual, ungovern. A City running a **named, branded, marketed, public-facing production AI system** has none of that defence. Catharine appears on stcatharines.ca, was the subject of City press releases and vendor case studies, and is operationally critical infrastructure (it handled call-overflow during winter storms per HSO's own case study).

This means:

1. **The IPC will treat Catharine as a Tier-1 enforcement target** under MFIPPA Bill 97 starting July 1, 2026
2. **Any resident complaint about Catharine** — incorrect routing, inappropriate response, missed emergency information, language inequity — escalates directly to the IPC
3. **Each planned extension** (internal IT support chatbot, Microsoft Teams integration, phone-system integration) is a **new** AI system requiring its own PIA and AIA before deployment

---

### The single most important question

**In which Microsoft Azure region does Catharine process St. Catharines resident personal information?**

Microsoft Azure OpenAI Service defaults to US East unless Canadian regions are explicitly selected. The HSO implementation team may have chosen defaults for speed of deployment in February 2025. If Catharine is processing resident personal information in US data centres, the City has an existing MFIPPA cross-border data-flow issue that must be addressed before MFIPPA Bill 97 takes effect on July 1, 2026.

This is a single email to HSO. The answer determines whether the next 90 days is a routine compliance project or a high-priority remediation.

---

### The shared regional exposure

The Niagara Regional Police Service operates Axon In-Car Camera + Automatic License Plate Recognition technology across all NRPS jurisdictions including St. Catharines. The full PIA template for this shared system is at `demos/niagara/niagara-falls/02-pia-template.md`. A **coordinated PIA across all four Niagara cities** is more cost-effective than four separate PIAs and creates regional best-practice positioning.

---

### The 90-day path forward

Council can direct the following actions in 90 days at low cost and high regulatory value:

1. **Resolution: Designate AI Governance Lead** at the corporate-services level. Recommendation: Jonathan Wright (current operational lead) elevated formally, or a peer at IT Director level. Satisfies IPC-OHRC p6, Trustworthy AI ops-4, and EDSTA s. 6(2)(b) simultaneously.

2. **Resolution: Confirm Catharine Azure data residency with HSO + Microsoft.** Single email. Determines remediation urgency.

3. **Resolution: Complete and publish Catharine PIA** by June 30, 2026 — before MFIPPA Bill 97 effective date. Template at `02-pia-template.md` in this bundle.

4. **Resolution: Complete Catharine AIA** against IPC-OHRC Joint Principles by July 31, 2026. Template at `03-aia-template.md`.

5. **Resolution: Publish AI inventory + recourse mechanism** on stcatharines.ca by September 1, 2026. Templates at `01-ai-inventory.md` and `06-recourse-workflow.md`.

6. **Resolution: Coordinate with NRPS + the three other Niagara cities** for shared MFIPPA Bill 97 PIA on ALPR/ICC.

7. **Resolution: Engage Sentainel Compliance** for Municipal Edition continuous monitoring at $1,499/month, or equivalent in-house effort. Break-even vs one-time professional services is month 3.

---

### The cost of inaction

Catharine is the **highest-visibility municipal AI in the Niagara Region**. The City has invested significant communications budget in publicizing it. That visibility cuts both ways: it positions St. Catharines as a digital-services leader, **and** it makes Catharine the first place a complainant, journalist, or IPC investigator looks.

Under MFIPPA Bill 97, the IPC has binding order authority effective January 1, 2027. An IPC binding order against the City related to Catharine would:

- Carry direct legal and remediation cost (estimated $300K–$600K)
- Potentially require Catharine to be taken offline pending remediation
- Generate media coverage in the city, the region, and the AI compliance press
- Establish negative precedent for the City's other digital-services initiatives
- Affect HSO's and Microsoft's reputational positioning, with downstream consequences for vendor pricing
- Affect bond rating considerations under cybersecurity-aware ratings frameworks

---

### Why St. Catharines is well-positioned to lead

This brief is not a warning. It is a recognition that the City of St. Catharines made an **early, public, well-engineered AI commitment** with Catharine in early 2025 — ahead of most Ontario municipalities. The regulatory stack caught up over the following year. The City now has the opportunity to **operationalize the compliance posture that matches its early ambition** — and to position itself as the Niagara regional leader on responsible municipal AI.

Doing this in 2026 is significantly easier and cheaper than doing it in response to an IPC investigation in 2027.

---

### Sentainel's role

Sentainel is the AI compliance infrastructure built for Ontario municipalities and other mid-market public sector entities. Built in Montréal. Full regulatory database is public at `github.com/WEBWORKSA1/sentainel-com`. Interactive compliance matrix mapping 72 atomic obligations to NIST AI Risk Management Framework controls is at `sentainel-com.vercel.app/matrix`.

Sentainel Municipal Edition: $1,499/month. Replaces $43K–$140K of one-time professional services per city. Available May 2026.

For a municipality with a flagship production AI system like Catharine, Sentainel delivers:

- Continuous PIA + AIA refresh as the system evolves
- Vendor compliance attestation tracking (HSO, Microsoft)
- Public-facing AI inventory hosting + automatic updates
- IPC complaint preparation in the event of investigation
- NIST AI RMF safe-harbor matrix as the universal evidence anchor
- Designated AI Governance Lead dashboard + quarterly reporting templates

---

**Contact:** Web · `web@sentainel.com` · Sentainel Compliance, Montréal, QC.
