# Cover Letter: City of St. Catharines AI Compliance Audit Bundle

**To:** Chief Administrative Officer, City of St. Catharines
**Cc:** Manager of Customer Service (Jonathan Wright); IT Director
**From:** Web · Sentainel Compliance · Montréal, QC
**Date:** May 2026
**Subject:** Audit-ready AI compliance package for the City of St. Catharines and Catharine — built from public-record evidence

---

Dear CAO,

My name is Web. I run Sentainel Compliance, an AI compliance infrastructure company based in Montréal. I built a complete AI compliance audit package for the City of St. Catharines without being asked, and I am writing to share it with you.

The package is public at:

**`github.com/WEBWORKSA1/sentainel-com/tree/main/demos/niagara/st-catharines`**

This cover letter explains why I built it, what is in it, and what I am asking of you.

---

## Why I built it

Between December 2024 and January 2026, Ontario crystallized a four-layer AI regulatory stack that directly applies to your municipality. The IPC and the Ontario Human Rights Commission jointly published Principles for the Responsible Use of Artificial Intelligence on January 21, 2026. The IPC has publicly stated these principles will "ground our assessment" of any AI use under MFIPPA. MFIPPA Bill 97 amendments come into force on July 1, 2026 and January 1, 2027.

The City of St. Catharines is in a more exposed position than its three Niagara peer cities. You have **Catharine** — a named, public-facing, production-grade AI chatbot built on Microsoft Copilot Studio in partnership with HSO. Catharine collects resident personal information at scale. Catharine handled call-overflow during winter storms per HSO's own case study, which makes it operationally critical infrastructure.

In May 2026, your City has more invested in Catharine than any other Niagara municipality has invested in any single AI system. **And the compliance posture has not yet caught up with the operational deployment.** This is typical. It is also fixable.

I built this package to demonstrate what a credible compliance posture looks like for your city specifically — not a template, not a checklist, but a deep, audit-ready bundle built from your actual public-record AI exposures, with Catharine as the centerpiece.

---

## The single most important finding

If you read nothing else in this package, please ensure your IT Director or CIO answers this one question:

**In which Microsoft Azure region does Catharine process resident personal information?**

Microsoft Azure OpenAI Service defaults to US East unless Canadian regions are explicitly selected. The HSO implementation may have chosen defaults for speed of deployment in February 2025. If Catharine is processing in US data centres, the City has a MFIPPA cross-border data-flow issue that must be remediated before July 1, 2026.

This is a single email to HSO. The answer determines whether the next 90 days is a routine compliance project or a high-priority remediation.

I cannot determine the answer from public records. Only you can.

---

## What is in the package

Ten documents, totalling roughly 35–50 pages of audit-ready material:

1. **AI Inventory** — 8 distinct AI exposures at the City, with Catharine as the flagship system, each cited to public records
2. **Privacy Impact Assessment** — for Catharine (the centrepiece), structured to MFIPPA Bill 97 requirements
3. **Algorithmic Impact Assessment** — for Catharine, scored against all 7 IPC-OHRC Principles
4. **IPC-OHRC Alignment Scorecard** — every system × every principle, scored, with remediation paths
5. **Council Brief** — one page, ready for the next council package, recommending 7 specific resolutions
6. **Recourse Workflow** — a public-facing AI-decision challenge mechanism per IPC-OHRC Principle 7
7. **IPC Complaint Preparation Pack** — what to do when an IPC investigation begins
8. **Whistleblower Procedure** — staff reporting of AI non-compliance
9. **Vendor Due Diligence Questionnaire** — specifically tailored for HSO + Microsoft
10. **This cover letter**

Every claim about Catharine and the City's AI exposures is sourced from public records: City press releases, HSO's published case study, and the City's own website. Where I have inferred (e.g., that the City has Microsoft 365 Copilot in the same tenancy that hosts Catharine), the document marks it explicitly.

---

## What I am asking of you

Three things, in order of effort required:

**First, please read the Council Brief** (document 05). It is one page. It summarizes the regulatory stack, names the seven specific resolutions that bring the City into a defensible posture, and quantifies the cost of inaction.

**Second, please answer the Azure region question.** A 30-second email to HSO is sufficient: *"Which Microsoft Azure region processes Catharine's data?"* Whatever the answer is, it directly determines the City's next move. If you would like, I am happy to send the email myself with the City's permission.

**Third, if any of this is useful, let's talk.** Sentainel Municipal Edition is $1,499/month per municipality. It delivers continuous compliance monitoring, automated PIA and AIA generation, public AI inventory hosting, vendor questionnaire automation, IPC complaint preparation, and the NIST AI RMF safe-harbor mapping. For a city with a flagship AI system like Catharine, this is the lowest-cost way to operationalize the compliance posture without taking on a full-time compliance hire.

Equivalent professional services delivered as a one-time engagement cost $43,000 to $140,000 — break-even vs Sentainel occurs in month 3.

A 30-minute call in May or June would let me show you the platform and answer questions. If after that you decide it is not the right fit, you keep the audit bundle and use it however you wish — it is effectively public-domain to your city. I built it speculatively and I am not asking you to compensate me for it regardless of outcome.

---

## Why I am qualified to do this

I am building Sentainel Compliance in public. Our entire regulatory database is open at `github.com/WEBWORKSA1/sentainel-com`. As of May 2026, it covers **72 atomic regulatory obligations** across 11 regulations and 4 jurisdictions (Texas, Quebec, Ontario, Illinois), with **437 individual mappings** to the NIST AI Risk Management Framework. The interactive matrix is at `sentainel-com.vercel.app/matrix`.

This is more comprehensive Ontario coverage than any commercial AI compliance vendor currently offers. Texas-only vendors like TXAIMS, Quebec-only frameworks like Augure, and enterprise-tier vendors like Credo AI (with $250K+ annual contracts) do not have the atomic obligation granularity that Sentainel does — and they do not have any Ontario municipal-specific content.

I am one person, working from Montréal, and I am betting that the Ontario municipal sector is where the next-generation compliance infrastructure gets built. Your city is the most important deployment of the four in this bundle, and the most public-facing AI commitment in the Niagara Region.

---

## A note specifically to Jonathan Wright

If this letter reaches Jonathan Wright (Manager of Customer Service, named publicly as Catharine's operational lead):

Jonathan, the work you and HSO did with Catharine is genuinely good. The system handled winter-storm call-overflow, which is a high-stakes operational test that most municipal chatbots would fail. The City was ahead of most of Ontario when Catharine launched in early 2025.

The regulatory stack caught up. That is not on you — you delivered before MFIPPA Bill 97 + IPC-OHRC Principles existed. **The opportunity now is to operationalize the compliance posture that matches the early ambition.** This bundle is designed to make that as fast as possible: every document is structured so that 80% of the work is already done, and your team's remaining contribution is confirmation, inference correction, and execution.

If the City decides Catharine warrants a formal compliance program, you are likely the right person to lead it. Sentainel exists to make that role faster, defensible, and not a career risk.

---

## Closing

I know unsolicited outreach to municipal officials is often noise. I built this package to be the opposite of noise — to be specific to your city, sourced from public records, and immediately usable by your staff regardless of whether you choose to engage with Sentainel commercially.

If you would like to discuss, I am at `web@sentainel.com`. A 30-minute call is enough to understand the platform. A 5-minute reply is enough to correct any inference in the inventory. A 0-minute response is also fine — the documents will continue to exist in the repo, the IPC will continue to have public-record notice, and the regulatory stack will continue to harden.

I hope this is useful to you and to the people of St. Catharines.

— Web

**Web** · Sentainel Compliance · `web@sentainel.com`
**Public regulatory database:** `github.com/WEBWORKSA1/sentainel-com`
**Interactive compliance matrix:** `sentainel-com.vercel.app/matrix`
**This bundle:** `github.com/WEBWORKSA1/sentainel-com/tree/main/demos/niagara/st-catharines`
