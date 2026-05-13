# Sentainel Obligation Extraction Methodology

## Why Atomic Obligations Matter

Most AI compliance products treat regulations as monolithic documents.
A customer asks "am I compliant with Bill 149?" and gets a yes/no answer
from a checkbox somewhere. This is useless when the IPC, Attorney
General, or HRTO comes knocking.

Sentainel treats each statute as a collection of **atomic obligations** —
individual legal requirements that can each be:
- Triggered by specific conditions
- Satisfied with specific evidence
- Violated specifically (with specific penalties)
- Cross-referenced to NIST AI RMF controls and other jurisdictions

This atomic structure is what makes the **safe-harbor matrix** possible:
"Implement these 10 NIST controls, satisfy every Sentainel-tracked
obligation in your jurisdiction stack."

## Extraction Process

For each statute we cover:

### Step 1: Source acquisition
- Obtain authoritative text (legislature URL, government gazette)
- Capture companion regulations and Official guidance documents
- Note effective dates, staged provisions, sunset clauses
- Store PDFs in `source-text/` subfolder

### Step 2: Atomic decomposition
- Identify each distinct legal obligation
- One obligation = one citation + one actor + one required action
- A statute with 15 obligations needs 15 markdown files
- Cross-references to other obligations captured explicitly

### Step 3: YAML frontmatter completion
- Use the standard schema (see `OBLIGATION_SCHEMA.md`)
- Required fields: slug, regulation_id, article_number, obligation_type,
  actors, required_action, plain_language_summary, trigger_conditions,
  evidence_required, deadline, penalty_for_violation, confidence_score
- Optional but recommended: ambiguity_notes, cross_references,
  ai_system_types_affected, sentainel_value_prop

### Step 4: Confidence scoring
- Score 0.95+: explicit statutory language, no interpretive ambiguity
- Score 0.85-0.95: clear language with some interpretive gaps
- Score 0.70-0.85: requires interpretation; flag for legal review
- Score below 0.70: do not extract; needs more research

### Step 5: Manual review
- Senior reviewer (currently web@sentainel.com) reviews each obligation
- Cross-reference verification
- Legal counsel spot-check for confidence < 0.90

### Step 6: Cross-jurisdictional mapping
- Once two or more jurisdictions covered, identify parallels
- Add `cross_references` entries linking equivalent obligations
- Example: TX TRAIGA discrimination prohibition ↔ CO AI Act consequential
  decision rules ↔ IL HRA AI amendment

## Quality Standards

- Every obligation must cite the source statute precisely
- Plain-language summaries must read at Grade 8 level
- Ambiguities must be flagged, not papered over
- Penalty calculations must reflect current jurisprudence
- Cross-references must be reciprocal (if A references B, B references A)

## Refresh Cadence

- Quarterly review of all live obligations
- Immediate refresh when amendments enacted (e.g., Bill 97 → MFIPPA)
- Annual deep refresh including penalty schedule recalibration

## Audit Trail

Every obligation file includes:
- `extracted_at` — initial extraction timestamp
- `last_reviewed` — most recent review date
- `reviewer` — accountable individual
- `extraction_method` — model/version + manual review indicator

Combined with Git history, this creates a complete provenance trail
for every legal claim in the database.
