-- =====================================================================
-- 0007_customers_deployments.sql — Customer organizations + AI deployments
-- =====================================================================
-- The customer-facing side of the platform. An organization has AI
-- deployments and is subject to a set of jurisdictions based on where
-- it operates and where its users are.

-- =====================================================================
-- organizations
-- A Sentainel customer.
-- =====================================================================
CREATE TABLE IF NOT EXISTS organizations (
    id                          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    workos_org_id               TEXT UNIQUE,                    -- WorkOS organization ID (auth provider)
    name                        TEXT NOT NULL,
    legal_name                  TEXT,
    domain                      TEXT,                           -- primary email domain for SSO match
    industry                    TEXT,                           -- 'saas', 'healthcare', 'financial_services', etc.
    size_band                   TEXT CHECK (size_band IN (
                                    'startup_under_50',
                                    'mid_market_50_500',
                                    'mid_market_500_2000',
                                    'enterprise_2000_plus'
                                )),
    headquarters_country        TEXT,                           -- ISO 3166-1 alpha-2
    headquarters_state          TEXT,
    plan_tier                   TEXT NOT NULL DEFAULT 'discovery' CHECK (plan_tier IN (
                                    'discovery',                -- free
                                    'operations',               -- $2,499/mo
                                    'continuous',               -- $4,999/mo
                                    'municipal_edition',        -- $1,499/mo (phase 3)
                                    'sandbox_sku'               -- $1,499/mo for TRAIGA Ch. 553 participants
                                )),
    plan_started_at             TIMESTAMPTZ,
    created_at                  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at                  TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_orgs_workos ON organizations(workos_org_id);
CREATE INDEX IF NOT EXISTS idx_orgs_plan ON organizations(plan_tier);
CREATE INDEX IF NOT EXISTS idx_orgs_industry ON organizations(industry);

-- =====================================================================
-- organization_jurisdictions
-- Which jurisdictions does this organization fall under?
-- Determined by: operations location, user locations, sectoral overlay.
-- =====================================================================
CREATE TABLE IF NOT EXISTS organization_jurisdictions (
    id                          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    organization_id             UUID NOT NULL REFERENCES organizations(id) ON DELETE CASCADE,
    jurisdiction_id             UUID NOT NULL REFERENCES jurisdictions(id),
    in_scope_basis              TEXT NOT NULL CHECK (in_scope_basis IN (
                                    'operations_in_jurisdiction',
                                    'users_in_jurisdiction',
                                    'data_subjects_in_jurisdiction',
                                    'extraterritorial_reach',
                                    'sectoral_overlay',
                                    'voluntary_compliance'
                                )),
    notes                       TEXT,
    in_scope_since              DATE,
    out_of_scope_since          DATE,                           -- nullable: NULL = still in scope
    created_at                  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    UNIQUE (organization_id, jurisdiction_id, in_scope_basis)
);

CREATE INDEX IF NOT EXISTS idx_org_juris_org ON organization_jurisdictions(organization_id);
CREATE INDEX IF NOT EXISTS idx_org_juris_juris ON organization_jurisdictions(jurisdiction_id);

-- =====================================================================
-- ai_deployments
-- A single AI system that an organization deploys. Each deployment has
-- its own obligation footprint.
-- =====================================================================
CREATE TABLE IF NOT EXISTS ai_deployments (
    id                          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    organization_id             UUID NOT NULL REFERENCES organizations(id) ON DELETE CASCADE,
    name                        TEXT NOT NULL,                  -- "Customer Support Chatbot v2"
    purpose                     TEXT NOT NULL,                  -- "Triage customer support inquiries"
    deployment_type             TEXT NOT NULL CHECK (deployment_type IN (
                                    'customer_facing_chatbot',
                                    'internal_productivity_tool',
                                    'hiring_screening',
                                    'credit_scoring',
                                    'insurance_underwriting',
                                    'healthcare_clinical_decision_support',
                                    'content_generation',
                                    'content_moderation',
                                    'biometric_identification',
                                    'predictive_analytics',
                                    'other'
                                )),
    is_generative               BOOLEAN NOT NULL DEFAULT FALSE, -- triggers GenAI Profile controls
    makes_consequential_decisions BOOLEAN NOT NULL DEFAULT FALSE, -- triggers automated-decision rules
    processes_biometric_data    BOOLEAN NOT NULL DEFAULT FALSE,
    processes_health_data       BOOLEAN NOT NULL DEFAULT FALSE,
    processes_minor_data        BOOLEAN NOT NULL DEFAULT FALSE,

    underlying_model            TEXT,                           -- "claude-opus-4-7", "gpt-4o", "custom-finetuned-llama-3"
    model_provider              TEXT,                           -- "Anthropic", "OpenAI", "self-hosted"

    status                      TEXT NOT NULL DEFAULT 'planned' CHECK (status IN (
                                    'planned',
                                    'in_development',
                                    'in_production',
                                    'sandboxed',                -- TRAIGA Ch. 553
                                    'sunsetted'
                                )),
    deployed_at                 DATE,
    sunsetted_at                DATE,

    discovery_source            TEXT,                           -- 'manual', 'browser_extension', 'inline_proxy', 'api_self_report'

    created_at                  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at                  TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_deployments_org ON ai_deployments(organization_id);
CREATE INDEX IF NOT EXISTS idx_deployments_type ON ai_deployments(deployment_type);
CREATE INDEX IF NOT EXISTS idx_deployments_status ON ai_deployments(status);
CREATE INDEX IF NOT EXISTS idx_deployments_generative ON ai_deployments(is_generative);

-- =====================================================================
-- deployment_jurisdictions
-- Which jurisdictions apply to this specific deployment?
-- May be narrower than organization_jurisdictions if deployment is geo-fenced.
-- =====================================================================
CREATE TABLE IF NOT EXISTS deployment_jurisdictions (
    deployment_id               UUID NOT NULL REFERENCES ai_deployments(id) ON DELETE CASCADE,
    jurisdiction_id             UUID NOT NULL REFERENCES jurisdictions(id),
    PRIMARY KEY (deployment_id, jurisdiction_id)
);
