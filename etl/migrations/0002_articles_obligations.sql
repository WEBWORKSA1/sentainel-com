-- =====================================================================
-- 0002_articles_obligations.sql — Regulation articles + atomic obligations
-- =====================================================================
-- An "article" is one section of a regulation (e.g., § 552.051).
-- An "obligation" is the atomic compliance duty extracted from an article.
-- A single article may contain multiple obligations (e.g., disclose AND
-- not use dark patterns) so the relationship is one-to-many.

CREATE TABLE IF NOT EXISTS regulation_articles (
    id                          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    regulation_id               UUID NOT NULL REFERENCES regulations(id) ON DELETE CASCADE,
    article_number              TEXT NOT NULL,                  -- "Tex. Bus. & Comm. Code § 552.051(b)-(e)"
    full_text                   TEXT,                           -- verbatim or near-verbatim statutory text
    plain_language_summary      TEXT,
    citation_format             TEXT,                           -- "Tex. Bus. & Comm. Code § 552.051(b)"
    embedding                   vector(1536),                   -- OpenAI text-embedding-3-small dim
    created_at                  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at                  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    UNIQUE (regulation_id, article_number)
);

CREATE INDEX IF NOT EXISTS idx_articles_regulation ON regulation_articles(regulation_id);
CREATE INDEX IF NOT EXISTS idx_articles_fulltext_trgm ON regulation_articles USING gin (full_text gin_trgm_ops);
-- Vector index added in 0009 once we know data shape

-- =====================================================================
-- obligations
-- The atomic unit of compliance duty. One markdown file → one row.
-- =====================================================================
CREATE TABLE IF NOT EXISTS obligations (
    id                          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    slug                        TEXT NOT NULL UNIQUE,           -- us-tx-traiga-552-051-gov-disclosure
    article_id                  UUID NOT NULL REFERENCES regulation_articles(id) ON DELETE CASCADE,
    regulation_id               UUID NOT NULL REFERENCES regulations(id) ON DELETE CASCADE,

    obligation_type             TEXT NOT NULL CHECK (obligation_type IN (
                                    'DISCLOSE',
                                    'PROHIBIT',
                                    'DOCUMENT',
                                    'IMPLEMENT_CONTROL',
                                    'NOTIFY_AUTHORITY',
                                    'RETAIN_RECORDS',
                                    'REPORT',
                                    'CONDUCT_ASSESSMENT',
                                    'OBTAIN_CONSENT',
                                    'GRANT_RIGHT',
                                    'DESIGNATE_ROLE',
                                    'CONTRACT_REQUIREMENT'
                                )),

    actors                      TEXT[] NOT NULL,                -- ['EMPLOYER', 'GOVERNMENT_AGENCY', etc.]
    required_action             TEXT NOT NULL,                  -- verbatim or near-verbatim
    plain_language_summary      TEXT NOT NULL,                  -- Grade 8 readable

    trigger_conditions          JSONB DEFAULT '[]'::jsonb,      -- array of {condition, formal}
    evidence_required           TEXT[] DEFAULT ARRAY[]::TEXT[], -- what Sentainel will collect/track
    exceptions                  JSONB DEFAULT '[]'::jsonb,      -- array of {exception, formal}

    deadline_type               TEXT CHECK (deadline_type IN (
                                    'continuous',
                                    'relative',
                                    'fixed',
                                    'event_triggered',
                                    NULL
                                )),
    deadline_value              TEXT,                           -- "72 hours", "before interaction", "2026-09-01"

    penalty_for_violation       TEXT,
    ai_specific_application     TEXT,                           -- how Sentainel operationalizes this
    sentainel_value_prop        TEXT,                           -- sales-ready positioning

    confidence_score            NUMERIC(3,2) NOT NULL CHECK (confidence_score >= 0 AND confidence_score <= 1),
    confidence_tier             TEXT CHECK (confidence_tier IN ('high', 'medium', 'low')),
    ambiguity_notes             TEXT,

    extraction_method           TEXT,
    extracted_at                DATE,
    reviewed_at                 DATE,
    reviewed_by                 TEXT,

    embedding                   vector(1536),

    created_at                  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at                  TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_obligations_regulation ON obligations(regulation_id);
CREATE INDEX IF NOT EXISTS idx_obligations_article ON obligations(article_id);
CREATE INDEX IF NOT EXISTS idx_obligations_type ON obligations(obligation_type);
CREATE INDEX IF NOT EXISTS idx_obligations_actors ON obligations USING gin (actors);
CREATE INDEX IF NOT EXISTS idx_obligations_summary_trgm ON obligations USING gin (plain_language_summary gin_trgm_ops);

-- =====================================================================
-- obligation_cross_references
-- Internal cross-refs: which Quebec obligations are companions to TRAIGA obligations, etc.
-- Distinct from the NIST control mappings in 0004.
-- =====================================================================
CREATE TABLE IF NOT EXISTS obligation_cross_references (
    id                          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    obligation_id               UUID NOT NULL REFERENCES obligations(id) ON DELETE CASCADE,
    related_obligation_slug     TEXT NOT NULL,                  -- soft ref by slug
    relationship_type           TEXT NOT NULL CHECK (relationship_type IN (
                                    'companion',                -- both apply when customer is in both
                                    'stricter_version',         -- e.g., Ontario "adverse impact" vs TX "intent"
                                    'sectoral_overlay',         -- healthcare layer on top of base
                                    'extraterritorial_overlap', -- both reach same customer
                                    'safe_harbor_provides_for'  -- compliance with X satisfies Y
                                )),
    notes                       TEXT,
    created_at                  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    UNIQUE (obligation_id, related_obligation_slug, relationship_type)
);

CREATE INDEX IF NOT EXISTS idx_oxref_obligation ON obligation_cross_references(obligation_id);
CREATE INDEX IF NOT EXISTS idx_oxref_related_slug ON obligation_cross_references(related_obligation_slug);
