# IPC Complaint Preparation Pack — Town of Thorold
## What to do when an IPC investigation begins

**Prepared by Sentainel Compliance · Defensive runbook**
**Date: May 2026**

---

## Purpose

MFIPPA Bill 97 (effective January 1, 2027) gives the IPC binding order authority against MFIPPA institutions including the Town of Thorold. The IPC has stated the IPC-OHRC Joint Principles "ground our assessment" of any AI use under MFIPPA.

This pack contains the materials the Town should have ready **before** an IPC complaint arrives. Preparation is faster, cheaper, and more credible than reactive response. For a Town of Thorold's administrative scale, preparation is also essential because reactive response would consume disproportionate staff resources.

---

## Thorold-specific IPC complaint risk profile

Thorold's IPC complaint risk profile differs from peer Niagara cities in three ways:

1. **Lower base-rate exposure** — no flagship production AI like St. Catharines' Catharine
2. **Higher AI-incident-derived exposure** — the 2024–2025 astroturfing incident creates a public-record duty to demonstrate hardened procedures
3. **Smaller administrative buffer** — reactive response capacity is limited, making preparation more strategically valuable

The most likely IPC complaint scenarios for Thorold:

**Scenario A: NRPS ALPR-derived complaint.** A resident wrongly flagged on the ALPR hot-list complains. The complaint names NRPS but also names the Town as an MFIPPA institution under whose jurisdiction the resident lives. Town must demonstrate MFIPPA Bill 97 coordination posture.

**Scenario B: Generative AI council report complaint.** A future Erik-Nickel-style staff use of consumer AI in council material draws a complaint. Town must demonstrate it had a generative AI policy in place.

**Scenario C: Astroturfing repeat incident.** Another AI-driven email campaign targets Council; a resident files an IPC complaint arguing the Town's deliberation procedures did not adequately distinguish authentic from synthetic input. Town must demonstrate procedural integrity hardening.

**Scenario D: Bylaw enforcement AI complaint.** AI-informed bylaw enforcement decision affects a resident on Code-protected grounds. Town must demonstrate disparate-impact analysis was conducted.

---

## Phase 1: The Town receives an IPC complaint notice

### What the Town will receive

The IPC will send formal notice identifying:

- The complainant (may be redacted)
- The Town system or practice complained of
- The specific MFIPPA + IPC-OHRC Principles cited
- A deadline for the Town's response (typically 30 days, sometimes shorter)

### Immediate steps (Day 0–3)

1. **Acknowledge receipt** to the IPC within 48 hours
2. **Convene IPC Response Team**: AI Governance Lead + Clerk + Town legal counsel + CAO + (depending on scenario) NRPS liaison or Mayor
3. **Pull the relevant Sentainel evidence package** for the system or scenario complained of
4. **Issue a hold** on any pending changes to the system
5. **Identify the complaint category** and corresponding scenario above

---

## Phase 2: Assembling the response package

The IPC will expect to see evidence corresponding to the scenario. For each Thorold-specific scenario:

### Scenario A (NRPS ALPR)

- This Sentainel package's `02-pia-template.md`
- Town's signed coordinated PIA with NRPS + peer Niagara cities (if completed by then)
- Sentainel matrix entry for ALPR (cross-references/coverage-matrix.csv)
- NIST AI RMF mapping from `cross-references/mappings/nist-to-ca-on-mfippa.yaml`

### Scenario B (Generative AI council report)

- Interim Generative AI Use Policy adoption record (Council resolution)
- This Sentainel package's `03-aia-template.md` Part A
- AI Governance Lead designation
- Specific incident documentation: who used what AI, what disclosure was made, what validation occurred

### Scenario C (Astroturfing repeat incident)

- Council Astroturfing Response Procedure adoption record (Council resolution)
- This Sentainel package's `03-aia-template.md` Part B
- Procedural integrity log for the affected deliberation
- AI Governance Lead briefing memo to Council prior to deliberation
- Quarterly public report on communication patterns (if procedure was in place)

### Scenario D (Bylaw enforcement AI)

- AI inventory entry for the bylaw enforcement system
- IPC-OHRC alignment scorecard (this package's `04-ipc-ohrc-alignment.md`)
- Disparate impact analysis (if completed) or commitment to complete
- Recourse workflow record of the resident's prior complaint, if any (`06-recourse-workflow.md`)

### Foundation documents (always include)

- This package's `01-ai-inventory.md`
- AI Governance Lead designation
- Town's published AI policy or interim policy
- IPC-OHRC alignment scorecard
- NIST AI RMF safe-harbor mapping for the system

---

## Phase 3: The Town's response

### Tone

The IPC and OHRC are not adversarial. They prefer engaged municipalities. The response should:

- Acknowledge the concern substantively
- Demonstrate good-faith compliance posture
- Identify any gaps the Town itself has already remediated
- Provide the evidence package
- Propose corrective action where appropriate

### What to avoid

- Stonewalling or boilerplate denials
- Citing MFIPPA s. 28 alone without addressing IPC-OHRC Principles
- Failing to address the principle the complainant specifically invoked
- Promising remediation without timeline
- Disclosing the complainant's identity in any internal communication

### Sample defensible posture phrases

For demonstrating NIST AI RMF alignment:

> "The Town of Thorold has mapped this system to the NIST AI Risk Management Framework via the Sentainel compliance infrastructure. The mapping is published at sentainel-com.vercel.app/matrix. The specific controls satisfied are [GOVERN-1.1, MEASURE-2.7, etc.]. This safe-harbor approach is recognized in Texas TRAIGA s. 552.105 and increasingly referenced in Canadian regulatory guidance."

For demonstrating astroturfing-procedure compliance (Scenario C):

> "The Town adopted a Council Astroturfing Response Procedure in [date] in response to the documented 2024–2025 incident. The procedure is the first such municipal procedure in Ontario. For the deliberation complained of, the procedural log demonstrates [specific signals reviewed, briefing provided to Council, transparency disclosure made]."

For demonstrating Generative AI policy compliance (Scenario B):

> "The Town's Interim Generative AI Use Policy was adopted by Council resolution on [date]. The policy requires citation, validation, and disclosure of all generative AI outputs used in council-distributed materials. The specific staff use complained of [either was or was not] in compliance with the policy. [If non-compliant: corrective action taken includes...]"

For demonstrating regional coordination (Scenario A):

> "The Niagara Regional Police Service ALPR system is governed by a coordinated MFIPPA Bill 97 PIA across all four Niagara cities, completed [date]. The Town of Thorold's role in the coordinated PIA is documented at [reference]. Resident-facing recourse for ALPR-specific concerns is available through both NRPS-internal review and the Town's public AI Concerns workflow at thorold.com/ai-concerns."

---

## Phase 4: If the IPC issues a binding order

### Compliance window

MFIPPA Bill 97 IPC binding orders are typically subject to 30–90 day compliance windows.

### Compliance options

1. **Fully comply** — the cheapest and fastest outcome
2. **Seek judicial review** — only where the order is clearly outside IPC jurisdiction or facially unreasonable (legal cost: $100K+)
3. **Negotiated compliance** — common middle path; the IPC engages cooperatively with municipalities demonstrating good-faith remediation

### Reporting on compliance

All compliance actions are reported to the IPC with documentary evidence.

---

## Phase 5: Lessons-learned + remediation

After any IPC complaint (resolved or not), the AI Governance Lead must:

1. Update the AI inventory
2. Update the relevant PIA / AIA / scorecard
3. Brief Council in camera if appropriate
4. Update the recourse workflow if procedural gaps were identified
5. Update the Council Astroturfing Response Procedure if the incident was Scenario C
6. Publish a quarterly AI compliance report including the complaint in aggregate statistics

---

## Coordination across the four Niagara cities

For Scenarios A and (potentially) C, IPC complaints may affect all four Niagara cities. Sentainel recommends:

- Standing inter-municipal AI coordination protocol (see `demos/niagara/niagara-falls/07-ipc-complaint-prep.md`)
- Joint quarterly AI Governance Lead meetings across the four cities
- Shared response procedure for shared-system complaints

For a Town of Thorold's administrative scale, regional coordination is particularly valuable because the per-city cost of complaint response is amortized across larger neighbours.

---

## When to engage Sentainel

If the Town of Thorold receives an IPC complaint involving AI, Sentainel Compliance offers:

- Immediate evidence package compilation (typically 5–7 business days)
- NIST AI RMF mapping for any system in the complaint
- IPC response drafting support
- Regional coordination across the four Niagara cities if shared systems involved
- Specific Scenario C support (astroturfing-related complaints, drawing on the unique Thorold procedural framework)

Contact: `web@sentainel.com`
