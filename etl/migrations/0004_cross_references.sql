-- =====================================================================
-- 0004_cross_references.sql — Frameworks + NIST controls + obligation mappings
-- =====================================================================
-- This is the core product moat. The NIST AI RMF cross-reference matrix
-- lets a customer implement one control set and satisfy obligations
-- across multiple jurisdictions via the Texas TRAIGA safe harbor.

-- =====================================================================
-- frameworks
-- NIST AI RMF, ISO/IEC 42001, OECD AI Principles, etc.
-- A framework is voluntary or recognized-but-not-mandatory.
-- =====================================================================
CREATE TABLE IF NOT EXISTS frameworks (
    id                          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    slug                        TEXT NOT NULL UNIQUE,           -- us-federal-nist-ai-rmf, eu-iso-iec-42001
    short_name                  TEXT NOT NULL,                  -- "NIST AI RMF"
    full_name                   TEXT NOT NULL,
    version                     TEXT,                           -- "1.0 + GenAI Profile July 2024"
    issuing_body                TEXT NOT NULL,                  -- "National Institute of Standards and Technology"
    framework_type              TEXT NOT NULL CHECK (framework_type IN (
                                    'voluntary_standard',
                                    'mandatory_standard',
                                    'recognized_safe_harbor',
                                    'guidance',
                                    'best_practice'
                                )),
    status                      TEXT NOT NULL CHECK (status IN (
                                    'current_recognized_standard',
                                    'superseded',
                                    'draft',
                                    'withdrawn'
                                )),
    source_urls                 TEXT[],
    created_at                  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at                  TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Seed the NIST AI RMF as the load-bearing framework
INSERT INTO frameworks (slug, short_name, full_name, version, issuing_body, framework_type, status, source_urls)
VALUES (
    'us-federal-nist-ai-rmf',
    'NIST AI RMF',
    'Artificial Intelligence Risk Management Framework (AI RMF 1.0) plus Generative AI Profile (NIST-AI-600-1)',
    '1.0 + GenAI Profile July 2024',
    'National Institute of Standards and Technology',
    'recognized_safe_harbor',
    'current_recognized_standard',
    ARRAY[
        'https://www.nist.gov/itl/ai-risk-management-framework',
        'https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.100-1.pdf',
        'https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.600-1.pdf'
    ]
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO frameworks (slug, short_name, full_name, issuing_body, framework_type, status)
VALUES (
    'eu-iso-iec-42001',
    'ISO/IEC 42001',
    'ISO/IEC 42001:2023 — Information technology — Artificial intelligence — Management system',
    'International Organization for Standardization',
    'voluntary_standard',
    'current_recognized_standard'
)
ON CONFLICT (slug) DO NOTHING;

-- =====================================================================
-- framework_controls
-- Each NIST control (GOVERN-1.1, MAP-1.1, etc.) gets a row.
-- Also: GenAI Profile items (GAI-1 through GAI-12).
-- ISO 42001 equivalents stored inline for cross-reference.
-- =====================================================================
CREATE TABLE IF NOT EXISTS framework_controls (
    id                          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    framework_id                UUID NOT NULL REFERENCES frameworks(id) ON DELETE CASCADE,
    control_id                  TEXT NOT NULL,                  -- "GOVERN-1.1", "GAI-3", "ALL-GENAI-PROFILE"
    function_group              TEXT NOT NULL CHECK (function_group IN (
                                    'GOVERN',
                                    'MAP',
                                    'MEASURE',
                                    'MANAGE',
                                    'GENAI_PROFILE',
                                    'AGGREGATE'                 -- meta-controls like ALL-GENAI-PROFILE
                                )),
    title                       TEXT NOT NULL,
    description                 TEXT,
    iso_42001_equivalent        TEXT,                           -- "5.1, 5.4" or "A.6.2.2"
    embedding                   vector(1536),
    created_at                  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at                  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    UNIQUE (framework_id, control_id)
);

CREATE INDEX IF NOT EXISTS idx_controls_framework ON framework_controls(framework_id);
CREATE INDEX IF NOT EXISTS idx_controls_function ON framework_controls(function_group);

-- =====================================================================
-- obligation_control_mappings
-- THE MOAT. For each (obligation, control) pair, the coverage level
-- and the implementation note. Source of truth for the cross-reference matrix.
-- =====================================================================
CREATE TABLE IF NOT EXISTS obligation_control_mappings (
    id                          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    obligation_id               UUID NOT NULL REFERENCES obligations(id) ON DELETE CASCADE,
    control_id                  UUID NOT NULL REFERENCES framework_controls(id) ON DELETE CASCADE,

    coverage_level              TEXT NOT NULL CHECK (coverage_level IN (
                                    'fully_satisfies',          -- this control alone satisfies obligation
                                    'partially_satisfies',      -- material progress; combined with others, satisfies
                                    'supports',                 -- useful evidence but not itself sufficient
                                    'safe_harbor'               -- statutorily named affirmative defense path
                                )),
    implementation_note         TEXT,                           -- from the YAML notes
    citation                    TEXT,                           -- the statutory/practitioner basis

    created_at                  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at                  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    UNIQUE (obligation_id, control_id)
);

CREATE INDEX IF NOT EXISTS idx_ocm_obligation ON obligation_control_mappings(obligation_id);
CREATE INDEX IF NOT EXISTS idx_ocm_control ON obligation_control_mappings(control_id);
CREATE INDEX IF NOT EXISTS idx_ocm_coverage ON obligation_control_mappings(coverage_level);

-- =====================================================================
-- framework_safe_harbors
-- Which regulations recognize which frameworks as safe harbors?
-- =====================================================================
CREATE TABLE IF NOT EXISTS framework_safe_harbors (
    id                          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    regulation_id               UUID NOT NULL REFERENCES regulations(id) ON DELETE CASCADE,
    framework_id                UUID NOT NULL REFERENCES frameworks(id) ON DELETE CASCADE,
    safe_harbor_type            TEXT NOT NULL CHECK (safe_harbor_type IN (
                                    'explicit_statutory',       -- e.g., TRAIGA § 552.105(e)(2)(D)
                                    'practitioner_recognized',  -- de facto via legal community consensus
                                    'rebuttable_presumption',   -- shifts burden of proof
                                    'good_faith_evidence'       -- documentary evidence of due diligence
                                )),
    citation                    TEXT,                           -- statutory citation when explicit
    notes                       TEXT,
    UNIQUE (regulation_id, framework_id, safe_harbor_type)
);

CREATE INDEX IF NOT EXISTS idx_safeharbors_regulation ON framework_safe_harbors(regulation_id);
CREATE INDEX IF NOT EXISTS idx_safeharbors_framework ON framework_safe_harbors(framework_id);
