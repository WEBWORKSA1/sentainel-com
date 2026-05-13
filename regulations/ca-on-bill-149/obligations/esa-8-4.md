---
slug: ca-on-bill-149-esa-8-4
regulation_id: ca-on-bill-149
article_number: "Employment Standards Act, 2000, s. 8.4"
parent_article: null
obligation_type: DISCLOSE
actors:
  - EMPLOYER
required_action: |
  Every employer who advertises a publicly advertised job posting and
  who uses artificial intelligence to screen, assess or select
  applicants for the position shall include in the posting a statement
  disclosing the use of the artificial intelligence.
plain_language_summary: |
  If you have 25+ employees in Ontario and you use AI anywhere in your
  hiring funnel — resume screening, applicant ranking, video interview
  analysis, skills assessment, predictive matching — you must include
  a clear statement on the public job posting that AI is being used.
trigger_conditions:
  - condition: Employer threshold met
    formal: |
      Employer has 25 or more employees in Ontario on the day the
      publicly advertised job posting is posted.
  - condition: Posting is publicly advertised
    formal: |
      External (not internal-only) and accessible to the general
      public via company website, job boards, social media, or
      recruitment agencies.
  - condition: AI used in screen / assess / select
    formal: |
      Including third-party vendors and AI features enabled by
      default in ATS platforms.
  - condition: Position performed in Ontario
ai_definition_governing: |
  Per O. Reg. 476/24, s. 1: AI is "a machine-based system that, for
  explicit or implicit objectives, infers from the input it receives
  in order to generate outputs such as predictions, content,
  recommendations or decisions that can influence physical or virtual
  environments."

  Broad definition captures: rules-based filtering, machine learning
  models, generative AI, recommendation engines, NLP resume parsers,
  video analysis AI, predictive matching algorithms.
evidence_required:
  - Job posting text with AI disclosure statement
  - Documentation of which AI tools used in hiring funnel
  - Vendor confirmation re AI-enabled features
  - 3-year audit trail (per ESA s. 15.1 retention)
  - Process documentation showing consistent disclosure
deadline:
  type: continuous
  value: At time of every publicly advertised job posting publication
exceptions:
  - description: Employers with fewer than 25 Ontario employees
  - description: Internal-only postings
  - description: General "help wanted" signs
  - description: Positions performed entirely outside Ontario
penalty_for_violation: |
  - Compliance order (s. 108)
  - Notice of contravention with monetary penalty up to $15,000
  - Prosecution up to $100K (individual) / $500K (corp first) /
    $1.5M (corp subsequent)
  - PARALLEL Code complaints for discriminatory AI outcomes (uncapped)
cross_references:
  - ca-on-bill-149-esa-15-1-records
  - ca-on-human-rights-code-s9
  - us-tx-traiga-552-052-a-5
ai_system_types_affected:
  - resume-screening-ai
  - ai-ranking-engine
  - video-interview-ai
  - skills-assessment-ai
  - predictive-matching-ai
  - applicant-tracking-system-ai
  - chatbot-recruiting-ai
  - ai-sourcing-tool
confidence_score: 0.96
confidence_tier: high
extraction_method: claude-opus-4-7-2026-05-12 + manual review
last_reviewed: 2026-05-13
reviewer: web@sentainel.com
---
