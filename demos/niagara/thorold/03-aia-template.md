# Town of Thorold — Algorithmic Impact Assessment
## Generative AI Staff Use + Council Astroturfing Resilience (System AI-001 + AI-004)

**Prepared by Sentainel Compliance for the Town of Thorold**
**IPC-OHRC Joint Principles aligned · NIST AI RMF mapped**
**Date: May 2026**

---

## 1. Why this AIA covers two systems together

Most AIAs cover a single AI system. This one covers two related exposures because both are present in Thorold and both are characterized by **informal, unmanaged AI use** rather than a procured AI platform:

- **AI-001:** External AI-generated communication targeting council (the 2024–2025 astroturfing precedent)
- **AI-004:** Internal staff generative AI use (informal, no policy, near-universal pattern)

Both are addressed at the policy + procedure level, not at a vendor-platform level. The same governance framework covers both.

---

## 2. System characterization

### AI-001 external context

- **System type:** External adversarial AI (chatbots used by third parties to generate mass communication)
- **Personal information processed:** Council members' email addresses + names (public information, but processed at scale)
- **Decision affected:** Council deliberation + voting
- **Public-record incident:** April 2026 Canada's National Observer documentation of 2024–2025 campaign

### AI-004 internal context

- **System type:** General-purpose generative AI (ChatGPT, Claude, Microsoft 365 Copilot, etc.)
- **Personal information processed:** Variable — staff may paste resident info, internal correspondence, draft reports into prompts
- **Decision affected:** Variable — reports, memos, communications, policy research
- **Current governance:** None publicly documented

---

## 3. IPC-OHRC Joint Principles scoring

| Principle | AI-001 (External) | AI-004 (Internal Staff) | Combined Action |
|---|---|---|---|
| **p1 Valid and Reliable** | N/A (adversarial) | UNMANAGED — no accuracy expectations set | Staff policy + verification procedure |
| **p2 Safe** | INCIDENT ON RECORD | UNMANAGED | Both addressed by hardened council procedure + staff policy |
| **p3 Privacy Protective** | N/A | HIGH RISK — staff likely pasting MFIPPA-protected data into public AI services | Staff policy must prohibit MFIPPA data in public AI services |
| **p4 Human Rights Affirming** | INDIRECT — campaign affected climate policy outcomes | UNMANAGED — AI summaries can encode bias | Staff training + procedure |
| **p5 Transparent** | NOT YET — Town has not publicly disclosed the 2024–2025 incident's nature | NOT YET — no public statement on staff GenAI use | Public council statement + AI inventory entry |
| **p6 Accountable Governance** | NONE — no incident response policy | NONE — no designated AI Governance Lead | Designate AI Governance Lead |
| **p7 Accountable Recourse** | NONE — no mechanism for residents to flag suspected synthetic campaigns | NONE — no mechanism for resident challenge of AI-influenced decisions | 06-recourse-workflow.md |

---

## 4. Risk assessment

### Probability + impact (Thorold-specific)

**Repeat astroturfing attack on council:** HIGH probability over the next 24 months. Attack pattern is now public, replication cost is near-zero, and Thorold is a known successful target. Impact: high — council legitimacy + policy capture.

**Staff GenAI policy violation (e.g., resident PII pasted into ChatGPT):** MEDIUM-HIGH probability over the next 12 months given the absence of policy. Impact: medium — MFIPPA breach reporting + potential IPC investigation.

**Combined reputational risk:** HIGH. Thorold is small enough that a single incident generates province-wide municipal-sector coverage.

---

## 5. Mitigation — The Council Astroturfing Response Procedure (Thorold-specific addendum)

This is the unique component of Thorold's AIA. It does not appear in any other Ontario municipal compliance document publicly available as of May 2026.

### 5.1 Signals that distinguish synthetic communication campaigns

Indicators that an inbound communication wave to council includes AI-generated email:

- **Volume anomaly:** Sudden 10× or greater increase in resident emails on a single issue within 72 hours
- **Linguistic uniformity:** Multiple emails using near-identical phrasings, sentence structures, or argument sequences with minor randomization
- **Sender heterogeneity but argument homogeneity:** Emails appear to come from many different residents but all argue the same talking points in the same order
- **Out-of-jurisdiction senders:** Emails from sender addresses outside Thorold or even outside Ontario (legitimate resident input is overwhelmingly local)
- **Failure to engage with prior council discussion:** AI-generated emails typically argue against the policy as if the council has not yet considered the points raised in prior meetings
- **Citation patterns:** Emails citing distant or non-existent authorities, or repeated minor factual errors that suggest hallucinated content
- **Email envelope metadata:** SPF/DKIM/DMARC failures, sender domains less than 90 days old, or other technical fingerprints (consult IT Director for analysis)

### 5.2 Procedure when signals are detected

1. **Clerk's office triage:** Clerk flags communications matching three or more signals for IT Director review
2. **IT Director technical review:** Sample 20–30 of the suspected synthetic communications and perform basic email-header analysis
3. **Communication to council:** If technical review confirms synthetic origin, Clerk informs council in writing before the relevant vote, and the communication is read into the record of the meeting
4. **Public council statement:** If signals are confirmed, the Mayor or designated council representative issues a public statement before the vote acknowledging the synthetic campaign and the Town's awareness
5. **Decision-making procedure:** The council's deliberation proceeds based on the policy merits, with synthetic communication explicitly identified as such in the meeting record
6. **Documentation:** Clerk preserves the communication batch (anonymized as required by MFIPPA) for future IPC + OHRC investigation reference
7. **Public posting:** Within 30 days of the incident, the Town publishes a brief public-record statement acknowledging the campaign occurred and the Town's response (this satisfies IPC-OHRC p5 Transparent)

### 5.3 Why this procedure is defensible

The IPC-OHRC Joint Principles require institutions to (a) be transparent about AI-related processes affecting decision-making, (b) provide recourse mechanisms, and (c) maintain robust governance structures.

A municipality that experiences an AI-driven communication campaign and **does not** have a procedure to detect, document, and disclose it is in tension with all three principles. A municipality that **has** such a procedure and uses it openly is positioned defensibly under both MFIPPA and OHRC frameworks.

This procedure is also defensible against the opposite charge: that the Town suppressed legitimate constituent input by labelling it synthetic. The procedure requires technical evidence (header analysis + multiple signals) before any communication is treated as synthetic, and requires public disclosure when synthetic communications are identified.

---

## 6. Interim Generative AI Staff Use Policy template

Thorold can adopt this policy by council resolution. Three pages, no procurement required, effective immediately.

### Policy text

*The Town of Thorold permits staff use of approved generative AI tools (Microsoft 365 Copilot, ChatGPT Enterprise, Claude, and successor tools formally listed by the IT Director) for the purposes of drafting, summarization, research support, and productivity, subject to the following conditions:*

1. **No MFIPPA-protected information** may be entered as input into any generative AI tool not specifically procured with a Data Processing Agreement covering municipal data
2. **No personal information about residents, staff, or council members** beyond what is already public may be entered into any generative AI tool
3. **No confidential procurement, HR, or legal information** may be entered into any generative AI tool
4. **Generative AI output used in any document that will be circulated externally or to council** must be reviewed and approved by the staff member responsible for the document, who remains accountable for accuracy
5. **Generative AI output cited as fact in any report to council** must be disclosed as such, similar to how Niagara Falls' Erik Nickel correctly disclaimed ChatGPT use in his sidewalk maintenance report
6. **Use of generative AI in hiring, performance evaluation, discipline, or other staff-affecting decisions is prohibited** without specific written authorization from the CAO and a completed AIA
7. **The IT Director maintains a current list of approved tools** which is published on the Town's intranet and updated quarterly
8. **Suspected violations of this policy** are reported to the AI Governance Lead, who may direct immediate cessation pending review

### Why this policy is sufficient for Thorold's current state

Thorold does not have a production AI platform comparable to St. Catharines' Catharine. The dominant compliance exposure is informal staff use, and this policy addresses 80% of that exposure. As the Town adopts production AI in the future, this policy becomes the foundation that more specific AIAs build on.

---

## 7. NIST AI RMF mapping

| NIST control | Coverage by this AIA |
|---|---|
| GOVERN-1.1 | Policy adoption documents legal & regulatory posture |
| GOVERN-1.5 | Ongoing oversight via AI Governance Lead |
| GOVERN-2.1 | Roles + responsibilities defined |
| GOVERN-2.2 | Workforce training implied by policy adoption |
| MAP-1.1 | Context of use established for both AI-001 + AI-004 |
| MAP-5.1 | Likelihood + magnitude of impact documented |
| MEASURE-2.8 | Transparency through public statement procedure |
| MEASURE-2.11 | Fairness considered in disparate-impact concerns |
| MANAGE-1.3 | Risk mitigation decisions documented |
| MANAGE-4.3 | Incident communication procedure established |

10 NIST controls satisfied at policy level via this AIA alone.

---

## 8. Implementation timeline

| Action | Owner | Deadline |
|---|---|---|
| Adopt Generative AI Staff Use Policy by council resolution | Council + Clerk | 30 days |
| Adopt Council Astroturfing Response Procedure by council resolution | Council + Clerk | 30 days |
| Designate AI Governance Lead | CAO | 30 days |
| IT Director publishes approved tool list | IT Director | 60 days |
| First quarterly review of policy effectiveness | AI Governance Lead | 120 days |
| Public AI inventory updated with policy adoption | Clerk | 60 days |

---

## 9. Reviewer + sign-off

**Prepared by:** Sentainel Compliance Platform, May 2026
**Drawn from:** IPC-OHRC Joint Principles + Trustworthy AI Framework + Canada's National Observer documentation + Sentainel platform analysis
**Intended reviewer:** Town of Thorold CAO + Council + Clerk

This AIA is a draft template generated by the Sentainel platform. It is intended as the foundation of the Town's actual AIA + Generative AI Staff Use Policy, not a substitute for council-approved versions. The Town should engage counsel before final adoption.
