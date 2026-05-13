---
slug: us-tx-traiga-552-104-cure-period
regulation_id: us-tx-traiga
article_number: "Tex. Bus. & Comm. Code § 552.104"
parent_article: null
obligation_type: IMPLEMENT_CONTROL
status: in_force
effective_date: 2026-01-01
actors:
  - DEVELOPER
  - DEPLOYER
  - PERSON_LEGAL_ENTITY
  - GOVERNMENT_AGENCY
  - HEALTHCARE_PROVIDER
required_action: |
  (a) If the attorney general determines that a person has violated
  or is violating this chapter, the attorney general shall notify
  the person in writing of the determination, identifying the
  specific provisions of this chapter the attorney general alleges
  have been or are being violated.

  (b) The attorney general may not bring an action against the
  person:
    (1) before the 60th day after the date the attorney general
        provides the notice under Subsection (a); or
    (2) if, before the 60th day after the date the attorney general
        provides the notice under Subsection (a), the person:
        (A) cures the identified violation; and
        (B) provides the attorney general with a written statement
            that the person has:
            (i)   cured the alleged violation;
            (ii)  provided supporting documentation to show the
                  manner in which the person cured the violation;
                  and
            (iii) made any necessary changes to internal policies
                  to reasonably prevent further violation of this
                  chapter.
plain_language_summary: |
  TRAIGA includes a UNIQUELY GENEROUS 60-day cure period before AG
  enforcement. If the AG sends a written notice of violation, the
  person has 60 days to:
  1. Cure the violation
  2. Submit a written statement to the AG with:
     - Confirmation of cure
     - Supporting documentation
     - Description of internal policy changes preventing
       recurrence

  If the cure is timely and complete, no enforcement action follows.

  CRITICAL FOR AI: The cure period is the strongest mitigation
  tool in TRAIGA. Most TRAIGA violations have a clear cure path:
  - Disclosure violation → add disclosure
  - Discrimination intent → remediate or remove the AI
  - Biometric consent failure → obtain consent or cease processing
  - Content moderation gap → implement controls

  BUT: cure must be REAL. A breach of the cure statement
  (§ 552.105(a)(1)) triggers curable-violation penalty
  ($10K-$12K) — and demonstrates bad faith for future violations.

  Sentainel's role: maintain pre-existing evidence of internal
  policy and controls so that cure is FAST (under 60 days) and
  DEFENSIBLE. A customer without infrastructure faces an
  impossible 60-day buildout. A Sentainel customer can cure in
  days.
trigger_conditions:
  - condition: AG written notice of alleged violation
    formal: |
      Must be in writing and identify the specific TRAIGA
      provisions alleged violated. Oral notice or unspecific
      notice doesn't trigger.
evidence_required:
  - AG notice receipt log
  - Incident response procedure (60-day cure workflow)
  - Cure plan with timeline and accountable parties
  - Cure execution documentation (what was changed, when, by whom)
  - Supporting documentation showing manner of cure (screenshots,
    policy revisions, training records, system configuration
    changes, etc.)
  - Internal policy changes (formal policy revisions)
  - Written statement to AG meeting § 552.104(b)(2)(B) criteria
  - AG receipt acknowledgment
deadline:
  type: relative
  value: |
    60 days from AG written notice. Cure AND written statement to
    AG must both be complete within the 60-day window.
exceptions:
  - description: |
      "Pattern violations" (per Colorado-style language not in
      TRAIGA itself) — TRAIGA does NOT explicitly disqualify
      repeat violators from the cure benefit, unlike some other
      state laws. However, "breach of cure statement" violations
      (§ 552.105(a)(1)) suggest the cure pathway is not infinite.
  - description: |
      If the AG determines the violation is uncurable (§
      552.105(a)(2)), the cure period is moot — enforcement can
      proceed regardless.
penalty_for_violation: |
  Failure to cure within 60 days enables AG enforcement at the full
  curable-or-uncurable penalty range under § 552.105:
  - Curable: $10K-$12K per violation
  - Uncurable: $80K-$200K per violation
  - Continuing: $2K-$40K/day

  Breach of cure statement: separately penalized at $10K-$12K per
  violation under § 552.105(a)(1).
ai_specific_application: |
  Sentainel's 60-day cure module:

  1. AG NOTICE INTAKE: Templated workflow for receiving and
     parsing AG violation notices. Auto-identifies which TRAIGA
     sections are alleged.
  2. CURE PLAN GENERATOR: Maps alleged violations to standard
     cure pathways:
     - Disclosure: deploy disclosure template (existing in
       Sentainel library)
     - Discrimination: bias testing + remediation workflow
     - Biometric: consent capture deployment
     - Content moderation: enable additional safety controls
  3. CURE EXECUTION TRACKING: 60-day countdown with milestone
     checkpoints, accountability assignment
  4. DOCUMENTATION ASSEMBLY: Automated generation of supporting
     documentation package (screenshots, config diffs, policy
     revisions, training records)
  5. WRITTEN STATEMENT TEMPLATE: § 552.104(b)(2)(B)-compliant
     statement template, customized per cure type
  6. POLICY-CHANGE ENGINE: Auto-generates internal policy
     revisions preventing recurrence, satisfying the prevent-
     recurrence prong
cross_references:
  - us-tx-traiga-552-101-enforcement
  - us-tx-traiga-552-103-investigative
  - us-tx-traiga-552-105-penalties
  - us-tx-traiga-552-105-nist-safe-harbor
ai_system_types_affected:
  - all-ai-deployments-in-texas
confidence_score: 0.95
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-13 + direct statute review
ambiguity_notes: |
  - The AG has discretion to classify violations as curable vs.
    uncurable (§ 552.105(a)). Intent-based violations (§§ 552.052,
    552.055, 552.056, 552.057) are most likely classified as
    uncurable.
  - The "necessary changes to internal policies" prong requires
    forward-looking remediation, not just past-violation fix.
    Customers must demonstrate institutional change.
  - Whether AG can extend the 60-day window for complex cures is
    unclear from the statute. Conservative reading: assume strict
    60-day deadline.
sentainel_value_prop: |
  The 60-day cure period is the most operationally significant
  TRAIGA provision for Sentainel:
  - Customers WITHOUT Sentainel face an impossible 60-day
    buildout: detect issue, design fix, implement, document,
    submit, and revise policies all from scratch.
  - Customers WITH Sentainel face a manageable process: most
    cure pathways are pre-built; documentation is auto-generated;
    policy revisions are templated.
  - A single successful cure (avoiding $80K-$200K penalty per
    violation) covers Sentainel's annual subscription many times
    over.

  Marketing positioning: "Sentainel: turning a 60-day TRAIGA cure
  scramble into a 60-hour managed workflow."
extracted_at: 2026-05-13T10:10:00Z
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
