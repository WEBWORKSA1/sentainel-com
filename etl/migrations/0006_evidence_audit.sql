-- =====================================================================
-- 0006_evidence_audit.sql — Evidence repository + immutable audit log
-- =====================================================================
-- Where Sentainel stores customer-supplied evidence of compliance.
-- The audit log captures every state change for AG/CAI/IPC defensibility.

-- =====================================================================
-- evidence_types
-- Catalog of evidence types Sentainel accepts (policy docs, test results, etc.)
-- =====================================================================
CREATE TABLE IF NOT EXISTS evidence_types (
    code                        TEXT PRIMARY KEY,
    display_name                TEXT NOT NULL,
    description                 TEXT NOT NULL,
    file_formats_accepted       TEXT[],                         -- ['pdf', 'docx', 'md', 'json']
    requires_signoff            BOOLEAN NOT NULL DEFAULT FALSE,
    refresh_cadence_days        INTEGER                         -- NULL = one-time; 365 = annual review
);

INSERT INTO evidence_types (code, display_name, description, file_formats_accepted, requires_signoff, refresh_cadence_days) VALUES
    ('policy_document',         'Policy Document',          'Written organizational policy (privacy, AI use, governance)',          ARRAY['pdf', 'docx', 'md'], TRUE,  365),
    ('test_result',             'Test/Evaluation Result',   'Output of fairness, bias, performance, or safety testing',             ARRAY['pdf', 'json', 'csv'], FALSE, 90),
    ('audit_log_export',        'Audit Log Export',         'System audit log demonstrating ongoing monitoring',                    ARRAY['json', 'csv'],       FALSE, 30),
    ('disclosure_screenshot',   'Disclosure Screenshot',    'UI/UX evidence of consumer-facing disclosure',                         ARRAY['png', 'jpg', 'pdf'],FALSE,  180),
    ('training_record',         'Training Record',          'Workforce training completion records',                                ARRAY['csv', 'pdf'],        FALSE, 365),
    ('consent_capture',         'Consent Capture',          'Per-individual consent record (timestamp, scope, version of policy)',  ARRAY['json'],              FALSE, NULL),
    ('pia_document',            'PIA / AIA / DPIA',         'Privacy or AI impact assessment with sign-offs',                       ARRAY['pdf', 'docx'],       TRUE,  365),
    ('contract_clause',         'Contract Clause',          'Third-party agreement evidencing required terms',                      ARRAY['pdf', 'docx'],       TRUE,  NULL),
    ('breach_notification',     'Breach Notification',      'Filed breach report to regulator + individual notification proof',     ARRAY['pdf', 'json'],       FALSE, NULL),
    ('vendor_due_diligence',    'Vendor Due Diligence',     'Third-party AI vendor assessment + ongoing monitoring',                ARRAY['pdf', 'docx'],       FALSE, 365),
    ('inventory_export',        'AI Inventory Export',      'Snapshot of all AI systems in scope with categorization',              ARRAY['csv', 'json'],       FALSE, 90),
    ('red_team_report',         'Red-Team Report',          'Adversarial testing or security review results',                       ARRAY['pdf', 'json'],       FALSE, 180)
ON CONFLICT (code) DO NOTHING;

-- =====================================================================
-- audit_log
-- Immutable record of every state change. Defense-ready: append-only,
-- cryptographically chained via prev_row_hash. Required for AG investigative
-- demand response under TRAIGA § 552.103(b)(7-8).
-- =====================================================================
CREATE TABLE IF NOT EXISTS audit_log (
    id                          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    event_at                    TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    actor_type                  TEXT NOT NULL CHECK (actor_type IN (
                                    'system',                   -- automated ETL, scheduler
                                    'human',                    -- analyst, admin, customer user
                                    'customer_api',             -- programmatic customer write
                                    'sentainel_internal'        -- Sentainel staff action
                                )),
    actor_identifier            TEXT,                           -- user email, system component name

    event_type                  TEXT NOT NULL,                  -- 'obligation.upserted', 'evidence.uploaded', etc.
    entity_type                 TEXT NOT NULL,                  -- 'obligation', 'regulation', 'evidence', etc.
    entity_id                   TEXT NOT NULL,                  -- UUID or slug

    before_state                JSONB,                          -- entity state pre-change (null for inserts)
    after_state                 JSONB,                          -- entity state post-change (null for deletes)

    correlation_id              UUID,                           -- groups related events
    customer_id                 UUID,                           -- nullable for system-level events

    prev_row_hash               TEXT,                           -- SHA-256 of previous row's canonical form
    row_hash                    TEXT NOT NULL                   -- SHA-256 of this row's canonical form
);

-- Append-only enforcement: deny UPDATE and DELETE
-- (Production deployments should also use row-level security to enforce this)
CREATE OR REPLACE FUNCTION audit_log_immutable() RETURNS TRIGGER AS $$
BEGIN
    RAISE EXCEPTION 'audit_log is append-only — UPDATE and DELETE are forbidden';
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS audit_log_no_update ON audit_log;
CREATE TRIGGER audit_log_no_update
    BEFORE UPDATE OR DELETE ON audit_log
    FOR EACH ROW EXECUTE FUNCTION audit_log_immutable();

CREATE INDEX IF NOT EXISTS idx_audit_event_at ON audit_log(event_at);
CREATE INDEX IF NOT EXISTS idx_audit_entity ON audit_log(entity_type, entity_id);
CREATE INDEX IF NOT EXISTS idx_audit_correlation ON audit_log(correlation_id);
CREATE INDEX IF NOT EXISTS idx_audit_customer ON audit_log(customer_id);
