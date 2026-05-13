-- =====================================================================
-- 0008_compliance_state.sql — Per-customer compliance posture
-- =====================================================================
-- Tracks each customer organization's implementation status against
-- specific obligations and NIST controls. This is the operational
-- core of Sentainel: where evidence collection, gap detection, and
-- audit-readiness scoring live.
--
-- Depends on: 0001-0007 (jurisdictions, obligations, framework_controls,
-- organizations, ai_deployments, evidence_types, audit_log).
--
-- Idempotent: safe to run multiple times.

-- =====================================================================
-- control_implementations
-- A customer's implementation of a specific NIST control. This is the
-- "moat" object: one row per (organization, control) pair, tracking
-- documentation, evidence, owner, and last-review timestamp.
--
-- The compliance score for any obligation is computed by joining
-- obligation_control_mappings to control_implementations and aggregating
-- by coverage_level.
-- =====================================================================
CREATE TABLE IF NOT EXISTS control_implementations (
    id                      UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    organization_id         UUID NOT NULL REFERENCES organizations(id) ON DELETE CASCADE,
    control_id              UUID NOT NULL REFERENCES framework_controls(id) ON DELETE RESTRICT,

    status                  TEXT NOT NULL DEFAULT 'not_started' CHECK (status IN (
                                'not_started',
                                'in_progress',
                                'implemented',
                                'verified',         -- third-party or internal-audit verified
                                'needs_review',     -- policy out of date or evidence stale
                                'not_applicable'    -- scoped out by business decision
                            )),
    implementation_notes    TEXT,                       -- free-form: how the org implements this control
    policy_document_url     TEXT,                       -- pointer to org's internal policy
    owner_email             TEXT,                       -- person responsible
    owner_role              TEXT,                       -- e.g. 'CISO', 'AI Governance Lead', 'GC'

    last_reviewed_at        TIMESTAMPTZ,
    next_review_due_at      TIMESTAMPTZ,                -- driven by control's refresh_cadence_days
    last_audited_at         TIMESTAMPTZ,
    audited_by              TEXT,                       -- 'internal' | 'big-four-name' | 'IDHR' etc.

    confidence_self_score   NUMERIC(3,2) CHECK (confidence_self_score >= 0 AND confidence_self_score <= 1),
    sentainel_score         NUMERIC(3,2) CHECK (sentainel_score >= 0 AND sentainel_score <= 1),

    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at              TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    UNIQUE (organization_id, control_id)
);
CREATE INDEX IF NOT EXISTS idx_ci_org ON control_implementations(organization_id);
CREATE INDEX IF NOT EXISTS idx_ci_control ON control_implementations(control_id);
CREATE INDEX IF NOT EXISTS idx_ci_status ON control_implementations(status);
CREATE INDEX IF NOT EXISTS idx_ci_next_review ON control_implementations(next_review_due_at)
    WHERE next_review_due_at IS NOT NULL;

-- =====================================================================
-- evidence_artifacts
-- Concrete pieces of evidence linked to a control_implementation.
-- One control can have many artifacts (policy doc + test result + screenshot).
-- =====================================================================
CREATE TABLE IF NOT EXISTS evidence_artifacts (
    id                      UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    control_implementation_id UUID NOT NULL REFERENCES control_implementations(id) ON DELETE CASCADE,
    evidence_type_code      TEXT NOT NULL REFERENCES evidence_types(code) ON DELETE RESTRICT,

    title                   TEXT NOT NULL,
    description             TEXT,
    storage_uri             TEXT,                       -- s3://sentainel-evidence/{org}/{artifact-id}.pdf
    sha256                  TEXT,                       -- cryptographic fingerprint for tamper-evidence
    file_size_bytes         BIGINT,
    mime_type               TEXT,

    collected_at            TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    expires_at              TIMESTAMPTZ,                -- when this evidence goes stale (drives refresh)
    collected_by            TEXT,                       -- automated source name OR user email
    collection_method       TEXT CHECK (collection_method IN (
                                'manual_upload',
                                'mcp_tool_pull',        -- e.g. Sentainel queried Google Drive for the artifact
                                'scheduled_job',        -- nightly screenshot of public AI disclosure page
                                'webhook',              -- incoming SIEM event
                                'api_export'            -- export from third-party tool
                            )),

    is_active               BOOLEAN NOT NULL DEFAULT TRUE,
    superseded_by           UUID REFERENCES evidence_artifacts(id),

    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_evidence_ci ON evidence_artifacts(control_implementation_id);
CREATE INDEX IF NOT EXISTS idx_evidence_type ON evidence_artifacts(evidence_type_code);
CREATE INDEX IF NOT EXISTS idx_evidence_expires ON evidence_artifacts(expires_at)
    WHERE expires_at IS NOT NULL AND is_active = TRUE;

-- =====================================================================
-- obligation_compliance_status
-- Per-customer view of obligation-level compliance, denormalized for
-- query speed. Computed asynchronously by Sentainel's scoring engine
-- from control_implementations × obligation_control_mappings.
--
-- This is what shows up in the customer dashboard "you are 87% compliant
-- with Quebec Law 25" badge.
-- =====================================================================
CREATE TABLE IF NOT EXISTS obligation_compliance_status (
    id                      UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    organization_id         UUID NOT NULL REFERENCES organizations(id) ON DELETE CASCADE,
    obligation_id           UUID NOT NULL REFERENCES obligations(id) ON DELETE CASCADE,

    in_scope                BOOLEAN NOT NULL DEFAULT TRUE,
    in_scope_reason         TEXT,                       -- 'operations_in_state', 'extraterritorial_data_subject', etc.

    score                   NUMERIC(3,2) CHECK (score >= 0 AND score <= 1),
    coverage_summary        TEXT CHECK (coverage_summary IN (
                                'fully_compliant',
                                'partially_compliant',
                                'gaps_identified',
                                'not_started',
                                'out_of_scope'
                            )),

    last_computed_at        TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    last_gap_count          INTEGER DEFAULT 0,

    UNIQUE (organization_id, obligation_id)
);
CREATE INDEX IF NOT EXISTS idx_obl_status_org ON obligation_compliance_status(organization_id);
CREATE INDEX IF NOT EXISTS idx_obl_status_obligation ON obligation_compliance_status(obligation_id);
CREATE INDEX IF NOT EXISTS idx_obl_status_summary ON obligation_compliance_status(coverage_summary);

-- =====================================================================
-- compliance_gaps
-- Specific identified gaps that block full compliance with an obligation.
-- One row per (org, obligation, missing-control) tuple.
-- Drives the "what to do next" queue in the customer dashboard.
-- =====================================================================
CREATE TABLE IF NOT EXISTS compliance_gaps (
    id                      UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    organization_id         UUID NOT NULL REFERENCES organizations(id) ON DELETE CASCADE,
    obligation_id           UUID NOT NULL REFERENCES obligations(id) ON DELETE CASCADE,
    missing_control_id      UUID REFERENCES framework_controls(id) ON DELETE SET NULL,

    gap_type                TEXT NOT NULL CHECK (gap_type IN (
                                'no_control_implemented',
                                'control_status_not_started',
                                'evidence_stale',
                                'evidence_missing',
                                'policy_out_of_date',
                                'jurisdiction_not_yet_assessed'
                            )),
    severity                TEXT NOT NULL CHECK (severity IN ('critical', 'high', 'medium', 'low')),

    suggested_action        TEXT,
    sentainel_template_url  TEXT,                       -- link to template doc Sentainel auto-generates

    identified_at           TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    resolved_at             TIMESTAMPTZ,
    resolution_notes        TEXT,
    is_open                 BOOLEAN GENERATED ALWAYS AS (resolved_at IS NULL) STORED
);
CREATE INDEX IF NOT EXISTS idx_gaps_org ON compliance_gaps(organization_id) WHERE resolved_at IS NULL;
CREATE INDEX IF NOT EXISTS idx_gaps_obligation ON compliance_gaps(obligation_id);
CREATE INDEX IF NOT EXISTS idx_gaps_severity ON compliance_gaps(severity) WHERE resolved_at IS NULL;
CREATE INDEX IF NOT EXISTS idx_gaps_is_open ON compliance_gaps(is_open);

-- =====================================================================
-- Updated-at trigger for control_implementations (only mutable table here)
-- =====================================================================
CREATE OR REPLACE FUNCTION touch_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at := NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS trg_ci_touch ON control_implementations;
CREATE TRIGGER trg_ci_touch
    BEFORE UPDATE ON control_implementations
    FOR EACH ROW
    EXECUTE FUNCTION touch_updated_at();
