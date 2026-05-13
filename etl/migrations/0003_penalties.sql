-- =====================================================================
-- 0003_penalties.sql — Penalty schedules tied to regulations
-- =====================================================================
-- One regulation typically has multiple penalty tiers (curable,
-- uncurable, continuing, per-day, etc.). This table holds all of them.

CREATE TABLE IF NOT EXISTS penalty_schedules (
    id                          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    regulation_id               UUID NOT NULL REFERENCES regulations(id) ON DELETE CASCADE,
    tier_name                   TEXT NOT NULL,                  -- 'curable_violation', 'uncurable_violation', etc.
    basis                       TEXT NOT NULL CHECK (basis IN (
                                    'per_violation',
                                    'per_day',
                                    'per_individual',
                                    'percentage_of_turnover',
                                    'actual',                   -- attorney's fees, court costs
                                    'fixed',                    -- one-time penalty
                                    'license_action'            -- suspension/revocation, no dollar amount
                                )),
    min_amount                  NUMERIC(12,2),                  -- nullable: not all penalties are monetary
    max_amount                  NUMERIC(12,2),
    percentage_of_turnover      NUMERIC(5,2),                   -- e.g., 4.00 for Quebec's 4% of worldwide turnover
    currency                    TEXT,                           -- ISO 4217: USD, CAD, EUR
    citation                    TEXT,
    notes                       TEXT,
    created_at                  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at                  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    UNIQUE (regulation_id, tier_name)
);

CREATE INDEX IF NOT EXISTS idx_penalties_regulation ON penalty_schedules(regulation_id);

-- =====================================================================
-- penalty_authorities
-- Who enforces? AG, sectoral regulator, IPC, CAI, etc.
-- =====================================================================
CREATE TABLE IF NOT EXISTS penalty_authorities (
    id                          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    regulation_id               UUID NOT NULL REFERENCES regulations(id) ON DELETE CASCADE,
    authority_name              TEXT NOT NULL,                  -- "Texas Attorney General"
    authority_type              TEXT NOT NULL CHECK (authority_type IN (
                                    'attorney_general',
                                    'data_protection_authority',
                                    'sectoral_regulator',
                                    'civil_court',
                                    'administrative_tribunal',
                                    'specialized_ai_council',
                                    'class_action'              -- private right of action
                                )),
    portal_url                  TEXT,                           -- where complaints filed
    contact_email               TEXT,
    enforcement_active          BOOLEAN NOT NULL DEFAULT TRUE,
    notes                       TEXT,
    UNIQUE (regulation_id, authority_name)
);

CREATE INDEX IF NOT EXISTS idx_penalty_auth_regulation ON penalty_authorities(regulation_id);
