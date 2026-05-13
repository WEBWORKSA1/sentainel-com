# IPC Complaint Preparation Pack — Town of Niagara-on-the-Lake
## Cross-Institutional Defensive Runbook

**Prepared by Sentainel Compliance · May 2026**

---

## Purpose

MFIPPA Bill 97 IPC binding order authority is effective January 1, 2027 and applies to all three NOTL MFIPPA institutions: Town, NOTL Hydro, NOTL Public Library. This pack covers complaint preparation across all three.

---

## NOTL-specific IPC complaint risk profile

Three distinguishing factors:

1. **Tripled-scope amplification.** A single IPC complaint may name all three institutions if the system complained of is in the shared tenancy. Response must coordinate across institutions.

2. **Library + Hydro specialized expectations.** Library borrower confidentiality and utility customer protections are heightened. The IPC will apply institution-specific standards even within a single complaint.

3. **International visitor complainants.** Tourists may file complaints. The IPC accepts complaints from non-residents whose personal information was processed by an Ontario MFIPPA institution.

### Most likely IPC complaint scenarios for NOTL

**Scenario A: Cross-institutional Copilot complaint.** A library borrower or Hydro customer files a complaint when they discover that Town staff have accessed information about them through cross-tenancy Copilot. The complaint names all three institutions.

**Scenario B: Heritage-zone STR enforcement complaint.** A host flagged by AI enforcement files a complaint citing IPC-OHRC p4 (disparate impact) and p7 (recourse). Names Town and possibly STR vendor.

**Scenario C: LiveHelp chat complaint.** An international visitor files a complaint regarding AI chat interactions on notl.com. Names Town.

**Scenario D: Smart meter inference complaint.** A Hydro customer files a complaint regarding occupancy pattern inference visible to non-Hydro staff via shared Copilot. Names Hydro and Town.

**Scenario E: Library AI complaint.** A library borrower files a complaint regarding AI-generated reading recommendations or borrowing-pattern analysis. Names Library specifically; may name Town if cross-institutional cross-contamination occurred.

**Scenario F: NRPS ALPR-derived complaint.** Same as other Niagara cities.

---

## Phase 1: NOTL receives an IPC complaint notice

### Immediate steps (Day 0–3)

1. **Acknowledge receipt** within 48 hours
2. **Determine institutional scope.** Which institution(s) are named? Is the complaint cross-institutional?
3. **Convene appropriate Response Team.** AI Governance Lead always; institutional sub-leads as scope requires; Library Board notified if Library involved; NOTL Hydro management notified if Hydro involved
4. **Pull relevant Sentainel evidence packages**
5. **Issue hold** on any pending changes to systems named

### Cross-institutional coordination challenges

- Library Board meetings may be infrequent. If Library response coordination requires Board input, special meeting may be needed within 30 days
- NOTL Hydro management may have parent-utility relationships requiring escalation
- Town legal counsel may not have full Library / Hydro context. Specialized counsel may be needed
- Confidentiality firewalls between institutions must be maintained during internal response coordination

---

## Phase 2: Assembling the response package

Per scenario:

### Scenario A (Cross-institutional Copilot)

- Cross-institutional PIA (`02-pia-template.md` Part B)
- AI Governance Council charter and meeting minutes
- Cross-institutional data segregation configuration evidence (from Microsoft tenancy admin records)
- Library + Hydro institutional sign-offs on cross-institutional approach
- Audit log entries for the specific cross-institutional data flows complained of
- IPC-OHRC alignment scorecard with cross-institutional cells specifically documented

### Scenario B (STR enforcement)

- Vendor due diligence record (`09-vendor-questionnaire.md`)
- STR enforcement disparate impact analysis (if completed)
- Public disclosure documentation
- Recourse workflow record of complainant prior contact (if any)
- Vendor DPA aligned with MFIPPA Bill 97

### Scenario C (LiveHelp chat)

- AI inventory entry for LiveHelp
- Public disclosure documentation
- Vendor questionnaire response
- Multi-language disclosure evidence for international visitor population
- Audit log of specific chat session complained of (preserved subject to retention policy)

### Scenario D (Smart meter inference)

- Hydro PIA for smart meter AI
- Cross-institutional segregation evidence preventing Town staff access to Hydro data
- Audit log of access patterns
- Ontario Energy Board notification (if confidentiality breach has OEB notification implications)

### Scenario E (Library AI)

- Library PIA specifically (separate from Town PIA)
- Library Board endorsement of AI governance framework
- Borrower confidentiality protection evidence
- Children's program AI exclusions evidence
- Common law librarian confidentiality framework documentation

### Scenario F (NRPS ALPR)

- Same as other Niagara cities
- Coordinated PIA with NRPS + 4 cities
- Heritage-zone enforcement equity analysis

### Foundation documents (always)

- `01-ai-inventory.md`
- Cross-institutional AI Governance Council designation
- AI Governance Lead designation
- Published AI policy (or interim policy with adoption record)
- IPC-OHRC alignment scorecard
- NIST AI RMF safe-harbor mapping

---

## Phase 3: NOTL's response

### Tone

The IPC + OHRC prefer engaged municipalities. NOTL's response should:

- Acknowledge the cross-institutional complexity directly
- Demonstrate that NOTL has architected for cross-institutional governance, not retrofitted
- Identify gaps the Town/Hydro/Library have already remediated
- Provide the evidence package
- Propose corrective action where appropriate

### What to avoid

- Institutional finger-pointing (e.g., "That's a Library issue not a Town issue")
- Inconsistent positions across the three institutions
- Failure to address the specific institution-specific principles the complainant invoked
- Disclosure of complainant identity in inter-institutional communications

### Sample defensible posture phrases

For cross-institutional best-practice positioning:

> "The Town of Niagara-on-the-Lake, NOTL Hydro, and the Niagara-on-the-Lake Public Library operate under a cross-institutional AI Governance Framework adopted in [date]. The framework, available at notl.com/ai-governance, is the first of its kind among Ontario shared-IT MFIPPA institutional arrangements. Cross-institutional data segregation, library confidentiality protection, and utility data protection are explicit framework components."

For library-specific posture:

> "The NOTL Public Library Board endorsed the cross-institutional AI Governance Framework subject to library-specific safeguards including: borrower data exclusion from cross-institutional AI indexing, children's program data exclusion, common law librarian confidentiality preservation, and Library AI sub-lead authority. These safeguards are documented at [reference] and were in effect at the time of the matter complained of."

For Hydro-specific posture:

> "NOTL Hydro's smart meter data is governed by both MFIPPA Bill 97 and Ontario Energy Board confidentiality requirements. AI access to meter data is restricted to designated Hydro staff with role-based access controls. The audit log of [date range] confirms no cross-institutional Town or Library staff access to the meter data complained of."

For international visitor scenarios:

> "The Town acknowledges that the complainant is an international visitor and the personal information was processed during their visit. Ontario MFIPPA governs the Town's processing regardless of complainant residency. The Town's recourse workflow at notl.com/ai-concerns is available in multiple languages including the complainant's language of preference."

---

## Phase 4: If the IPC issues a binding order

A binding order may name all three institutions simultaneously. Compliance must be coordinated across:

- Town CAO authority
- NOTL Hydro management authority
- Library Board authority

A single 90-day compliance window may require parallel institutional governance processes. NOTL must have institutional response decision-making protocols pre-arranged to avoid response paralysis.

---

## Phase 5: Lessons-learned

After any IPC complaint:

1. Update cross-institutional AI inventory
2. Update cross-institutional PIA + AIA
3. Brief CAO + NOTL Hydro management + Library Board (in camera if appropriate)
4. Update recourse workflow if procedural gaps identified
5. Update institution-specific procedures (e.g., Library borrower confidentiality framework)
6. Publish in quarterly AI compliance report on all three institutional websites

---

## Coordination with NRPS + Niagara cities

For Scenario F (NRPS ALPR), standard regional coordination applies. NOTL's tripled-scope complexity does not affect NRPS coordination.

For heritage-zone scenarios (B, C), NOTL may benefit from coordinated response with other heritage-tourism municipalities outside the Niagara region (e.g., Stratford, Niagara Falls heritage zones). Sentainel can broker this coordination.

---

## When to engage Sentainel

For NOTL specifically, Sentainel Municipal Edition offers:

- Cross-institutional evidence package compilation
- Library + Hydro + Town specialized templates
- International visitor multi-language documentation support
- IPC response drafting with cross-institutional coordination
- Library Board coordination support
- NOTL Hydro management coordination support

Contact: `web@sentainel.com`
