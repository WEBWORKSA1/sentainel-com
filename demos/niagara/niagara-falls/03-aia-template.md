# City of Niagara Falls — Algorithmic Impact Assessment
## Generative AI in Council-Presented Staff Reports (System AI-001)

**Prepared by Sentainel Compliance · IPC-OHRC Joint Principles aligned · Trustworthy AI Framework mapped**
**Date: May 2026**

---

## 1. System under assessment

**System:** OpenAI ChatGPT (consumer-tier, presumed) used in staff research and report preparation
**Trigger event:** Sidewalk winter maintenance report presented to council by Erik Nickel, General Manager of Municipal Works, citing ChatGPT findings on Ontario municipal bylaws
**Source:** Canada's National Observer, April 30, 2026

This is an Algorithmic Impact Assessment under IPC-OHRC p6 (Accountable Governance) — "Up front risk assessments should be carried out to identify and assess risks associated with the AI system."

---

## 2. Why this AIA exists

The City of Niagara Falls has no policy on staff use of generative AI in publicly distributed materials. A senior staff member used ChatGPT to generate research findings that were presented to council. The findings were caveated as "not a scientific survey," but the AI-generated content was admitted into a deliberation that informs City policy.

This is precisely the scenario the IPC-OHRC Joint Principles were drafted to address. The IPC has stated these principles "ground our assessment of organizations' adoption of AI systems."

---

## 3. AI lifecycle assessment

The IPC-OHRC lifecycle requires assessment against the principles at every stage. For ChatGPT in staff use:

| Lifecycle stage | Current state | IPC-OHRC alignment |
|---|---|---|
| Design, data, modeling | Vendor-determined (OpenAI) | Outside City control; Trustworthy AI ops-5 requires alignment with FIPPA/MFIPPA |
| Verification & validation | NONE — staff acknowledged outputs are not validated | **p1 violation** — outputs admitted to council deliberation without validation |
| Deployment | Ad hoc, individual staff devices | **p6 violation** — no governance structure |
| Operation & monitoring | None | **p1 + p6 violation** |
| Decommissioning | N/A | **p2 partial violation** — no procedure |

---

## 4. Principle-by-principle scoring

### p1 Valid and Reliable: ❌ FAIL

"AI systems must exhibit valid, reliable and accurate outputs for the purpose(s) for which they are designed, used, or implemented."

The staff member explicitly disclaimed validity. The output was nonetheless used in a council report. ChatGPT consumer-tier is not subjected to municipality-specific validation; it has no "independent testing standard" for Ontario municipal bylaw research.

**Action required:** Either (a) prohibit generative AI in council-distributed materials, or (b) establish a validation procedure requiring staff to cross-check AI outputs against authoritative sources before submission.

### p2 Safe: ⚠️ PARTIAL

Direct harm from a sidewalk bylaw research error is low. But the pattern is unsafe: staff use of generative AI in council materials without governance creates downstream risk in higher-stakes domains (legal opinions, hiring recommendations, social services eligibility).

**Action required:** Decommissioning authority. Designate who can pause generative AI use in council-distributed materials.

### p3 Privacy Protective: ⚠️ UNKNOWN

If staff prompts to ChatGPT include personal information about residents (e.g., complaint context, demographic data, addresses), the use violates MFIPPA s. 32 (purpose limitation). OpenAI consumer-tier ChatGPT does not provide adequate data residency or processing guarantees for MFIPPA institutions.

**Action required:** Mandatory data minimization training. Migrate to enterprise-tier AI with DPA aligned to MFIPPA.

### p4 Human Rights Affirming: ⚠️ POTENTIAL RISK

If generative AI is used to inform service-delivery decisions (e.g., snow clearing priorities, bylaw enforcement targeting), it can introduce or amplify disparate impact discrimination on Ontario Human Rights Code grounds. The current sidewalk maintenance use case is not directly discriminatory, but the pattern is the concern.

**Action required:** Prohibit generative AI in any decision that materially affects an individual or identifiable group on Code-protected grounds.

### p5 Transparent: ❌ FAIL

The public did not know AI had generated content in the council report until investigative journalism surfaced it. The City's website has no AI inventory or transparency statement.

**Action required:** Publish AI inventory. Add AI-content disclosure to all council reports that incorporate generative AI outputs.

### p6 Accountable Governance: ❌ FAIL

No designated AI authority. No risk assessment. No human-in-the-loop documentation. No documented decisions about design or application choices. No pause / decommission authority.

**Action required:** Designate AI Governance Lead. Establish AI Governance Committee with cross-departmental representation. Publish AI policy.

### p7 Accountable Recourse + Whistleblower: ❌ FAIL

No public recourse mechanism for residents who suspect AI-generated content in city communications. No whistleblower channel for staff to report concerns about AI use.

**Action required:** Stand up recourse workflow (06-recourse-workflow.md). Stand up whistleblower channel (08-whistleblower-procedure.md).

---

## 5. Aggregate score: 1.5 / 7

The City of Niagara Falls is in **substantive non-compliance** with the IPC-OHRC Joint Principles for generative AI use by staff. This is the typical state of Ontario municipalities in May 2026, but it is not a defensible state.

---

## 6. Recommended interim policy (90-day standup)

While the City completes its full AI governance buildout, Sentainel recommends adopting the following interim policy:

### Interim Generative AI Policy — City of Niagara Falls

1. **No personal information of residents may be entered into any consumer-tier generative AI tool** (ChatGPT free, Claude free, Gemini consumer, etc.). This includes complaint context, addresses, demographic data, FOI request content, or anything that could re-identify a resident.

2. **Generative AI outputs used in any council-distributed material must be (a) cited with the prompt and date of generation, (b) validated against an authoritative source, and (c) flagged with the disclosure: "This report incorporates content generated by [AI tool] on [date]."**

3. **Staff may not use generative AI for any decision that materially affects an individual or identifiable group**, including hiring, benefits eligibility, bylaw enforcement targeting, or grant evaluation.

4. **Any staff member who becomes aware of generative AI use outside this policy must report it** to the AI Governance Lead (once designated) or to the Clerk's office (interim).

5. **This policy is effective immediately and supersedes any departmental practice until the full AI Policy is adopted by Council.**

---

## 7. NIST AI RMF mapping

Generative AI staff-use compliance maps to:

- **GOVERN-1.1**: Legal & regulatory requirements managed (IPC-OHRC Principles + Trustworthy AI Framework benchmarks)
- **GOVERN-1.6**: AI inventory — staff use of consumer GenAI must be inventoried
- **GOVERN-2.1**: Roles & responsibilities — AI Governance Lead
- **GOVERN-2.2**: Workforce training — mandatory staff training on AI policy
- **MAP-3.5**: Human oversight — no autonomous decision-making
- **MEASURE-2.8**: Transparency — disclosure in council reports
- **GAI-3 + GAI-6 + GAI-9**: NIST AI 600-1 GenAI Profile controls for dangerous content, harmful bias, information security

This aligns with the universal cross-reference in `cross-references/coverage-matrix.csv`.

---

## 8. Reviewer sign-off

This AIA is a draft template generated by the Sentainel platform from public-record evidence. The City should retain MFIPPA counsel + employment law counsel for staff-policy review before adoption.
