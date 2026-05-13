# IPC Complaint Preparation Pack — City of Niagara Falls
## What to do when an IPC investigation begins

**Prepared by Sentainel Compliance · Defensive runbook**
**Date: May 2026**

---

## Purpose

MFIPPA Bill 97 (effective January 1, 2027) gives the Information and Privacy Commissioner of Ontario binding order authority against MFIPPA institutions including municipalities. The IPC has stated that the IPC-OHRC Joint Principles "ground our assessment" of any AI use under MFIPPA.

This pack contains the materials the City of Niagara Falls should have ready **before** an IPC complaint arrives. Preparation is faster, cheaper, and more credible than reactive response.

---

## Phase 1: The City receives an IPC complaint notice

### What the City will receive

The IPC will send a formal notice identifying:

- The complainant (may be redacted)
- The City system or practice complained of
- The specific MFIPPA + IPC-OHRC Principles cited
- A deadline for the City's response (typically 30 days, sometimes shorter)

### Immediate steps (Day 0–3)

1. **Acknowledge receipt** to the IPC within 48 hours
2. **Convene IPC Response Team**: AI Governance Lead + Clerk + IT Director + CAO + Legal Counsel
3. **Pull the relevant Sentainel evidence package** (or, in absence of Sentainel, manually compile the documents listed in Phase 2)
4. **Issue a hold** on any pending changes to the AI system complained of
5. **Identify the complaint category**: privacy / discrimination / transparency / recourse failure

---

## Phase 2: Assembling the response package

The IPC will expect to see the following evidence per IPC-OHRC + MFIPPA Bill 97 standards. The City must produce at minimum:

### Foundation documents

1. **AI Inventory entry** for the system in question — what it is, who owns it, when deployed
2. **PIA** (this Sentainel package: `02-pia-template.md` is the starting point)
3. **AIA** (this Sentainel package: `03-aia-template.md`)
4. **Lawful authority statement** — MFIPPA s. 28 + relevant statutory authority
5. **Vendor DPA** if third-party AI involved
6. **AI Governance Lead designation** with name + role + delegation authority

### Per-principle evidence (IPC-OHRC alignment)

7. **p1 evidence**: validity + reliability testing reports
8. **p2 evidence**: safety monitoring + decommissioning procedure
9. **p3 evidence**: privacy-by-design statement + data minimization measures
10. **p4 evidence**: disparate impact analysis + remediation if any
11. **p5 evidence**: public AI inventory entry + transparency disclosures
12. **p6 evidence**: governance committee minutes + risk assessment + human-oversight documentation
13. **p7 evidence**: recourse mechanism + whistleblower channel + complaint history

### NIST AI RMF safe-harbor mapping

14. **The Sentainel matrix entry** for the system showing NIST AI RMF control alignment — this is the universal cross-reference. Available at `sentainel-com.vercel.app/matrix` and in repo at `cross-references/coverage-matrix.csv`.

---

## Phase 3: The City's response

### Tone

The IPC + OHRC are not adversarial. They prefer engaged municipalities. The response should:

- Acknowledge the concern substantively
- Demonstrate good-faith compliance posture
- Identify any gaps the City itself has already remediated
- Provide the evidence package
- Propose corrective action where appropriate

### What to avoid

- Stonewalling or boilerplate denials
- Citing MFIPPA s. 28 alone without addressing IPC-OHRC Principles
- Failing to address the principle the complainant specifically invoked
- Promising remediation without timeline
- Disclosing the complainant's identity in any internal communication

### Defensible posture phrases (sample language for use in response)

When demonstrating NIST AI RMF alignment:

> "The City of Niagara Falls has mapped this system to the NIST AI Risk Management Framework. The mapping is published as part of our regulatory database at sentainel-com.vercel.app/matrix. The specific controls satisfied are [GOVERN-1.1, MEASURE-2.7, etc.]. This alignment is consistent with the safe-harbor approach recognized in Texas TRAIGA s. 552.105 and increasingly referenced in Canadian regulatory guidance."

When demonstrating IPC-OHRC alignment:

> "The City has assessed this system against all seven IPC-OHRC Joint Principles. Our scoring and remediation plan is attached as Appendix [X]. We have implemented [specific actions] and have established the AI Governance Lead role per Principle 6 effective [date]."

When there is a documented gap:

> "The City acknowledges that, at the time of the matter complained of, we did not have a documented [specific element]. We have since implemented [remediation]. The IPC is invited to review our governance committee minutes of [date] for the corrective action."

---

## Phase 4: If the IPC issues a binding order

### Compliance window

MFIPPA Bill 97 IPC binding orders are typically subject to a 30–90 day compliance window depending on the remedy required.

### Compliance options

1. **Fully comply** — the cheapest and fastest outcome. The Sentainel platform provides the templates and procedures to comply efficiently.
2. **Seek judicial review** — only where the order is clearly outside IPC jurisdiction or facially unreasonable. Legal cost: $100K+.
3. **Negotiated compliance** — common middle path. The IPC will engage cooperatively with a municipality that demonstrates good-faith remediation.

### Reporting on compliance

All compliance actions are reported back to the IPC with documentary evidence. The Sentainel platform's audit log + governance committee minutes + remediation tracking form the compliance evidence package.

---

## Phase 5: Lessons-learned + remediation

After any IPC complaint (resolved or not), the AI Governance Lead must:

1. **Update the AI inventory** to reflect any lessons learned
2. **Update the relevant PIA + AIA** with corrective measures
3. **Brief Council** on the complaint and remediation (in camera if appropriate)
4. **Update the recourse workflow** if procedural gaps were identified
5. **Publish a quarterly AI compliance report** that includes this complaint in the aggregate statistics

---

## Coordination across the four Niagara cities

Many IPC complaints involving the NRPS ALPR/ICC system will affect all four Niagara cities simultaneously. Sentainel recommends the four cities establish a **standing inter-municipal AI coordination protocol** so a single IPC investigation does not produce four contradictory responses.

Proposed protocol:

- Joint quarterly AI Governance Lead meeting
- Shared NIST AI RMF mapping for NRPS shared systems
- Coordinated PIA for ALPR/ICC + any future shared AI deployments
- Joint response procedure if an IPC complaint targets a shared system

The Sentainel Municipal Edition supports multi-tenant deployment for this exact use case.

---

## NIST AI RMF mapping

- **GOVERN-1.1**: Legal & regulatory requirements managed — this prep pack IS the regulatory tracking
- **GOVERN-4.3**: Testing & incident sharing — across the four cities
- **MANAGE-4.1**: Post-deployment monitoring
- **MANAGE-4.3**: Incidents communicated — to the IPC, to council, to the public

---

## When to engage Sentainel

If the City of Niagara Falls receives an IPC complaint involving AI, Sentainel Compliance offers:

- Immediate evidence package compilation (typically 5–7 business days)
- NIST AI RMF mapping for any system in the complaint
- IPC response drafting support
- Coordination across the four Niagara cities if shared systems involved

Contact: `web@sentainel.com`
