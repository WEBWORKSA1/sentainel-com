# Illinois AIVIA — Strategic Notes

## Why AIVIA Is High-Value Inventory for Sentainel

AIVIA has been in force for over six years (since January 1, 2020), yet enterprise compliance is notoriously weak. Most users of video-interview AI (HireVue, Modern Hire/Harver, Yobs, etc.) do not have:

- Per-applicant pre-interview consent records tied to AI tool versions
- Audited vendor DPAs restricting downstream video use
- Tested 30-day deletion workflows with vendor confirmation
- Annual DCEO demographic reports (if in sole-AI scope)

This means an AIVIA audit reliably produces 3–5 findings within the first week of a Sentainel engagement. The findings are concrete, well-documented in the statute, and unambiguously remediable. They build customer confidence in the platform and justify ARR.

## AIVIA-BIPA-HRA AI Stack

Illinois employers using video-interview AI face concurrent exposure under three statutes:

| Statute | Trigger | Maximum exposure | Private right of action |
|---|---|---|---|
| **AIVIA** (820 ILCS 42) | Video interview + AI analysis | Civil rights remedies via IHRA | Indirect, via IHRA |
| **BIPA** (740 ILCS 14) | Facial geometry / voiceprint extraction | $1K–$5K per violation per applicant | YES, direct |
| **HRA AI** (775 ILCS 5/2-102(L)) | AI in any employment decision | Civil rights remedies; up to $100K aggravated | Indirect, via IHRA |

**BIPA is the financial pain point.** Most modern video-interview AI tools extract facial expression data (which courts have found includes "biometric identifiers" under BIPA). Each applicant whose video was analyzed without BIPA-compliant consent represents $1,000–$5,000 in statutory damages. For an employer running 10,000 applications/year through video-AI, that is $10M–$50M in annualized BIPA exposure.

**Sentainel positioning**: AIVIA is the entry-point audit. BIPA is where the dollar exposure justifies the Continuous tier ($60K/yr) easily. The combined Illinois compliance posture for video-interview AI is the strongest sales argument in the V1 stack.

## BIPA Extraction Decision

BIPA is not technically an AI statute — it's a biometric data privacy statute. But it bites AI hiring tools harder than any AI-specific statute. Sentainel should extract BIPA in V1.5 (after Ontario stack completion) because:

1. Customer exposure under AIVIA inevitably surfaces BIPA exposure
2. Sales conversations about AIVIA naturally pivot to BIPA damages math
3. The Illinois AI hiring sub-vertical narrative is incomplete without BIPA

BIPA requires its own metadata structure (biometric-specific obligations: written policy, consent timeline, retention schedule, destruction policy). Worth a dedicated extraction session.

## Five-Year Compliance Gap Audit Playbook

For any Sentainel customer using video-interview AI:

1. **Existence check**: do you have a written AIVIA notice template?
2. **Coverage check**: is the notice delivered to every applicant before video submission?
3. **Tool-version match**: does the notice describe the actual AI in use (not generic boilerplate)?
4. **Consent capture**: per-applicant consent record with timestamp predating video submission?
5. **Vendor contract audit**: does the vendor DPA include downstream-use restrictions matching s. 10?
6. **Training data audit**: does the vendor use customer applicant videos to train models for other customers?
7. **Deletion workflow**: has the customer ever processed a deletion request? In how many days?
8. **Backup deletion verification**: does the customer's IT operations team have a documented backup-exclusion process for deleted videos?
9. **Sole-reliance determination**: is the AI the only filter or is there meaningful human review?
10. **DCEO reporting (if sole-reliance)**: has the customer filed annual demographic reports since 2022?

Most customers fail at least 6 of these 10 checks. Each failure is a specific, defensible audit finding.

## NIST AI RMF Mapping for AIVIA

AIVIA's obligations are heavily procedural (notice, consent, sharing, deletion) rather than substantive (no discrimination requirement in AIVIA itself — that's HRA AI's job). NIST mapping leans toward:

- GOVERN-1.1 (legal & regulatory requirements managed) — universal
- GOVERN-5.1 (stakeholder feedback) — supports consent workflow
- MAP-2.2 (knowledge limits) — supports explanation requirement
- MEASURE-2.8 (transparency) — supports notice requirement
- MANAGE-2.3 (superseded systems response) — supports deletion workflow
- MANAGE-4.3 (incidents communicated) — supports non-compliance disclosure
- GAI-4 (data privacy) — supports BIPA overlay
- ISO 42001 cross-references: A.6 (lifecycle), A.8 (data)

Detailed mapping in `cross-references/mappings/nist-to-us-il-aivia.yaml`.

## Legal Review Budget

- US labor & employment lawyer (Illinois bar): 3 hours × $400–$500 USD = $1,200–$1,500
- BIPA specialist (if customer requires combined coverage): additional 2 hours × $500–$600 USD = $1,000–$1,200
- Focus: validate "sole reliance" determinations, review vendor DPA amendment language, confirm deletion workflow meets statutory standard

## Decisions Awaiting Confirmation

- **BIPA inclusion in V1.5**: confirmed below in pending list
- **AIVIA-HRA AI relationship in matrix**: maintain separately (different statutes, different effective dates, different scope) but cross-reference heavily
- **DCEO report generation**: build template automation in Continuous tier; not in Operations tier
