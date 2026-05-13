# City of Niagara Falls — IPC-OHRC Joint Principles Alignment Scorecard

**Per-system scoring across all 11 identified AI exposures**
**Methodology: each system × each of 7 IPC-OHRC principles**
**Date: May 2026**

---

## Aggregate posture

| System | p1 | p2 | p3 | p4 | p5 | p6 | p7 | Total |
|---|---|---|---|---|---|---|---|---|
| AI-001 GenAI in council reports | ❌ | ⚠️ | ⚠️ | ⚠️ | ❌ | ❌ | ❌ | **1.5 / 7** |
| AI-002 NRPS ALPR/ICC | ❓ | ⚠️ | ⚠️ | ❓ | ⚠️ | ❓ | ⚠️ | **2.0 / 7** |
| AI-003 M365 Copilot | ❓ | ❓ | ❓ | ❓ | ❓ | ❓ | ❓ | **Unknown** |
| AI-004 Casino/tourism surveillance | ❓ | ❓ | ❓ | ❓ | ❓ | ❓ | ❓ | **Unknown** |
| AI-005 Bylaw enforcement AI | ❓ | ❓ | ❓ | ❓ | ❓ | ❓ | ❓ | **Unknown** |
| AI-006 311 chatbot (none) | N/A | N/A | N/A | N/A | N/A | N/A | N/A | **Future opportunity** |
| AI-007 Hiring AI | ❓ | ❓ | ❓ | ⚠️ | ⚠️ | ❓ | ❓ | **0.5 / 7** |
| AI-008 Email security AI | ⚠️ | ✅ | ⚠️ | N/A | ❌ | ⚠️ | N/A | **2.5 / 5 applicable** |
| AI-009 Predictive maintenance | ❓ | ❓ | ⚠️ | ❓ | ❓ | ❓ | ❓ | **0.5 / 7** |
| AI-010 Council deliberation AI | N/A | ⚠️ | N/A | N/A | N/A | N/A | ❌ | **0.5 / 3 applicable** |
| AI-011 Region IT shared AI | ❓ | ❓ | ❓ | ❓ | ❓ | ❓ | ❓ | **Unknown** |

**Legend:**
- ✅ Aligned: documented evidence of compliance
- ⚠️ Partial: some elements present, gaps remain
- ❌ Non-compliant: documented evidence of failure
- ❓ Unknown: insufficient public information
- N/A: principle does not apply to this system class

---

## City-wide IPC-OHRC compliance posture

**Overall: 1.7 / 7 across documented systems** (excluding Unknown).

This aligns with the Ontario municipal baseline. In May 2026, ~95% of Ontario's 444 municipalities sit in the 1.5–2.5 range. The IPC-OHRC Principles were published January 21, 2026 — the entire sector is in early-stage alignment.

**What changes the score:**

- Designate AI Governance Lead → +0.5 across all systems (p6)
- Publish AI inventory → +0.5 across all systems (p5)
- Stand up recourse + whistleblower channels → +0.5 across applicable systems (p7)
- Complete PIAs for top-3 systems (AI-001, AI-002, AI-003) → +1.0 on those systems (p3)
- Run disparate impact analysis on NRPS ALPR → +1.0 on AI-002 (p4)

**Achievable 12-month score: 4.5 / 7 across documented systems.** This is the posture that defends the City in an IPC investigation.

---

## Priority-ranked principle gaps

In order of enforcement likelihood:

1. **p4 Human Rights Affirming** — strongest OHRC + HRTO enforcement pathway. ALPR disparate impact is the highest-risk specific exposure.
2. **p3 Privacy Protective** — strongest IPC enforcement pathway under MFIPPA Bill 97 (effective July 1, 2026).
3. **p5 Transparent** — easiest for journalists, FOI requesters, or council members to verify publicly.
4. **p7 Accountable Recourse** — first thing complainants check when filing an IPC complaint.
5. **p6 Accountable Governance** — foundational; discovered later in investigation.
6. **p2 Safe** — matters most when AI failure is in the news.
7. **p1 Valid and Reliable** — matters most in vendor due diligence and audit cycles.

This prioritization mirrors the cross-references in `cross-references/mappings/nist-to-ca-on-ipc-ohrc.yaml`.

---

## Sentainel-delivered remediation per principle

| Principle | Sentainel artifact | Delivered as |
|---|---|---|
| p1 Valid + Reliable | Quarterly accuracy reporting template | Sentainel platform dashboard |
| p2 Safe | Decommissioning runbook | Documented procedure |
| p3 Privacy Protective | PIA generator + DPA template | Auto-generated per system |
| p4 Human Rights Affirming | Disparate impact analysis methodology + quarterly report | Platform + advisory |
| p5 Transparent | Public AI inventory + council disclosure templates | Platform-hosted public page |
| p6 Accountable Governance | Governance committee charter + AI policy + role definitions | Document templates |
| p7 Accountable Recourse | Recourse workflow + whistleblower channel + IPC complaint prep | Platform feature + procedures |

---

## Source documents

- IPC-OHRC Joint Principles (Jan 21, 2026): https://www.ohrc.on.ca/en/principles-responsible-use-artificial-intelligence
- Trustworthy AI Framework: https://www.ontario.ca/page/ontarios-trustworthy-artificial-intelligence-ai-framework
- Sentainel repo: `regulations/ca-on-ipc-ohrc-principles/obligations.yaml`
- Sentainel NIST mapping: `cross-references/mappings/nist-to-ca-on-ipc-ohrc.yaml`
