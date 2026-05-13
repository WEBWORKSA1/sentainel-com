-- =====================================================================
-- 0001_init.sql — Extensions, jurisdictions, regulations
-- =====================================================================
-- Sentainel regulatory database core schema.
-- Idempotent: safe to run multiple times.

-- Extensions
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "pg_trgm";       -- fuzzy search on regulation/obligation text
CREATE EXTENSION IF NOT EXISTS "vector";        -- pgvector for embedding-based retrieval

-- =====================================================================
-- jurisdictions
-- A jurisdiction is a government body that can issue AI regulation.
-- Hierarchical: US-Federal → US-TX → US-TX-Austin (rare but allowed).
-- =====================================================================
CREATE TABLE IF NOT EXISTS jurisdictions (
    id              UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    code            TEXT NOT NULL UNIQUE,                       -- US-TX, CA-QC, CA-ON, EU, US-Federal
    name            TEXT NOT NULL,
    level           TEXT NOT NULL CHECK (level IN (
                        'supranational',     -- EU
                        'federal',           -- US-Federal, CA-Federal
                        'state_province',    -- US-TX, CA-QC, CA-ON
                        'municipality',      -- US-TX-Austin, CA-ON-Toronto
                        'agency'             -- specific regulator (CAI, IPC, FTC)
                    )),
    parent_code     TEXT REFERENCES jurisdictions(code),
    iso_country     TEXT,                                       -- ISO 3166-1 alpha-2: US, CA, MX
    created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at      TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_jurisdictions_parent ON jurisdictions(parent_code);
CREATE INDEX IF NOT EXISTS idx_jurisdictions_country ON jurisdictions(iso_country);

-- Seed top-level jurisdictions
INSERT INTO jurisdictions (code, name, level, parent_code, iso_country) VALUES
    ('US-Federal', 'United States Federal', 'federal', NULL, 'US'),
    ('CA-Federal', 'Canada Federal', 'federal', NULL, 'CA'),
    ('EU', 'European Union', 'supranational', NULL, NULL)
ON CONFLICT (code) DO NOTHING;

-- =====================================================================
-- regulations
-- A regulation is a specific statute, regulation, or guidance document.
-- =====================================================================
CREATE TABLE IF NOT EXISTS regulations (
    id                          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    slug                        TEXT NOT NULL UNIQUE,           -- us-tx-traiga, ca-qc-law-25
    jurisdiction_id             UUID NOT NULL REFERENCES jurisdictions(id),
    short_name                  TEXT NOT NULL,                  -- "Texas TRAIGA"
    long_name                   TEXT NOT NULL,                  -- "Texas Responsible Artificial..."
    citation                    TEXT NOT NULL,                  -- "Tex. Bus. & Comm. Code §§ 551.001..."
    status                      TEXT NOT NULL CHECK (status IN (
                                    'proposed',
                                    'enacted',
                                    'in_force',
                                    'partially_in_force',
                                    'sunset',
                                    'repealed',
                                    'guidance_only',
                                    'deferred'
                                )),
    signed_date                 DATE,
    effective_date              DATE,
    enforcement_date            DATE,                           -- when enforcement actually begins
    sunset_date                 DATE,
    source_url                  TEXT,
    statute_url                 TEXT,
    summary                     TEXT,
    scope_description           TEXT,
    extraterritorial_reach      BOOLEAN NOT NULL DEFAULT FALSE,
    extraterritorial_notes      TEXT,
    safe_harbor_via             TEXT[] DEFAULT ARRAY[]::TEXT[], -- list of framework slugs
    private_right_of_action     BOOLEAN,
    notes                       TEXT,
    confidence_score            NUMERIC(3,2),                   -- 0.00 to 1.00
    extraction_method           TEXT,
    last_reviewed               DATE,
    reviewer                    TEXT,
    created_at                  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at                  TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_regulations_jurisdiction ON regulations(jurisdiction_id);
CREATE INDEX IF NOT EXISTS idx_regulations_status ON regulations(status);
CREATE INDEX IF NOT EXISTS idx_regulations_effective_date ON regulations(effective_date);
CREATE INDEX IF NOT EXISTS idx_regulations_summary_trgm ON regulations USING gin (summary gin_trgm_ops);

-- =====================================================================
-- regulation_companion_legislation
-- Many-to-many: regulations that travel together (e.g., TRAIGA + CUBI + 541)
-- =====================================================================
CREATE TABLE IF NOT EXISTS regulation_companion_legislation (
    regulation_id           UUID NOT NULL REFERENCES regulations(id) ON DELETE CASCADE,
    companion_slug          TEXT NOT NULL,                      -- soft-ref by slug; may not be in DB yet
    relationship_type       TEXT NOT NULL DEFAULT 'companion'
                            CHECK (relationship_type IN (
                                'companion',
                                'precursor',
                                'successor',
                                'amendment',
                                'cross-reference'
                            )),
    notes                   TEXT,
    PRIMARY KEY (regulation_id, companion_slug)
);

CREATE INDEX IF NOT EXISTS idx_companion_slug ON regulation_companion_legislation(companion_slug);
