-- =====================================================================
-- 0010_views.sql — Convenience views for the API layer
-- =====================================================================
-- These views are consumed by the Sentainel API and frontend. They are
-- not materialized — Postgres recomputes them on every query. The
-- underlying tables are indexed for this purpose (see 0009).
--
-- If query latency becomes a problem on any of these, the right move is
-- to convert them to MATERIALIZED VIEWs with scheduled REFRESH.
--
-- Idempotent: uses CREATE OR REPLACE.

-- =====================================================================
-- v_obligation_coverage_summary
-- For each obligation, aggregate how many NIST controls map to it
-- by coverage level. Drives the "this regulation needs N controls" UI.
-- =====================================================================
CREATE OR REPLACE VIEW v_obligation_coverage_summary AS
SELECT
    o.id                                            AS obligation_id,
    o.slug                                          AS obligation_slug,
    o.regulation_id,
    r.slug                                          AS regulation_slug,
    r.short_name                                    AS regulation_name,
    r.jurisdiction_id,
    j.code                                          AS jurisdiction_code,
    o.article_number,
    o.obligation_type,
    o.confidence_score,
    COUNT(DISTINCT ocm.control_id) FILTER (WHERE ocm.coverage_level = 'fully_satisfies')      AS controls_full,
    COUNT(DISTINCT ocm.control_id) FILTER (WHERE ocm.coverage_level = 'partially_satisfies')  AS controls_partial,
    COUNT(DISTINCT ocm.control_id) FILTER (WHERE ocm.coverage_level = 'supports')             AS controls_support,
    COUNT(DISTINCT ocm.control_id) FILTER (WHERE ocm.coverage_level = 'safe_harbor')          AS controls_safe_harbor,
    COUNT(DISTINCT ocm.control_id)                                                            AS controls_total
FROM obligations o
JOIN regulations r ON r.id = o.regulation_id
JOIN jurisdictions j ON j.id = r.jurisdiction_id
LEFT JOIN obligation_control_mappings ocm ON ocm.obligation_id = o.id
GROUP BY o.id, o.slug, o.regulation_id, r.slug, r.short_name, r.jurisdiction_id,
         j.code, o.article_number, o.obligation_type, o.confidence_score;

-- =====================================================================
-- v_jurisdiction_obligation_count
-- Per-jurisdiction headline numbers. Drives the marketing-site stat blocks
-- and the viz hero stats.
-- =====================================================================
CREATE OR REPLACE VIEW v_jurisdiction_obligation_count AS
SELECT
    j.id                                            AS jurisdiction_id,
    j.code                                          AS jurisdiction_code,
    j.name                                          AS jurisdiction_name,
    COUNT(DISTINCT r.id)                            AS regulation_count,
    COUNT(DISTINCT o.id)                            AS obligation_count,
    ROUND(AVG(o.confidence_score)::numeric, 2)      AS avg_confidence,
    MAX(o.reviewed_at)                              AS most_recent_review
FROM jurisdictions j
LEFT JOIN regulations r ON r.jurisdiction_id = j.id AND r.status IN ('in_force', 'enacted_not_in_force')
LEFT JOIN obligations o ON o.regulation_id = r.id
GROUP BY j.id, j.code, j.name;

-- =====================================================================
-- v_customer_compliance_score
-- Per-customer rollup: weighted compliance score across all in-scope
-- obligations. This is the "you are 87% compliant" badge metric.
-- =====================================================================
CREATE OR REPLACE VIEW v_customer_compliance_score AS
SELECT
    org.id                                          AS organization_id,
    org.name                                        AS organization_name,
    org.plan_tier,
    COUNT(DISTINCT ocs.obligation_id) FILTER (WHERE ocs.in_scope)                                      AS in_scope_obligations,
    COUNT(DISTINCT ocs.obligation_id) FILTER (WHERE ocs.coverage_summary = 'fully_compliant')          AS fully_compliant,
    COUNT(DISTINCT ocs.obligation_id) FILTER (WHERE ocs.coverage_summary = 'partially_compliant')      AS partially_compliant,
    COUNT(DISTINCT ocs.obligation_id) FILTER (WHERE ocs.coverage_summary = 'gaps_identified')          AS gaps_identified,
    COUNT(DISTINCT ocs.obligation_id) FILTER (WHERE ocs.coverage_summary = 'not_started')              AS not_started,
    ROUND(AVG(ocs.score) FILTER (WHERE ocs.in_scope)::numeric, 3)                                      AS weighted_score,
    COUNT(DISTINCT g.id) FILTER (WHERE g.resolved_at IS NULL)                                          AS open_gaps,
    COUNT(DISTINCT g.id) FILTER (WHERE g.resolved_at IS NULL AND g.severity = 'critical')              AS critical_open_gaps
FROM organizations org
LEFT JOIN obligation_compliance_status ocs ON ocs.organization_id = org.id
LEFT JOIN compliance_gaps g ON g.organization_id = org.id
GROUP BY org.id, org.name, org.plan_tier;

-- =====================================================================
-- v_high_leverage_controls
-- The "10 controls that cover 85% of obligations" insight from the viz,
-- as a query. Ranked by how many obligations each control satisfies
-- (fully or partially).
-- =====================================================================
CREATE OR REPLACE VIEW v_high_leverage_controls AS
SELECT
    fc.id                                           AS control_id,
    fc.control_id                                   AS control_code,            -- e.g. 'GOVERN-1.1'
    fc.title                                        AS control_title,
    fc.function_group,
    f.slug                                          AS framework_slug,
    COUNT(DISTINCT ocm.obligation_id) FILTER (WHERE ocm.coverage_level = 'fully_satisfies')      AS full_coverage_obligations,
    COUNT(DISTINCT ocm.obligation_id) FILTER (WHERE ocm.coverage_level = 'partially_satisfies')  AS partial_coverage_obligations,
    COUNT(DISTINCT ocm.obligation_id) FILTER (WHERE ocm.coverage_level = 'safe_harbor')          AS safe_harbor_obligations,
    COUNT(DISTINCT ocm.obligation_id)                                                            AS total_obligations_touched
FROM framework_controls fc
JOIN frameworks f ON f.id = fc.framework_id
LEFT JOIN obligation_control_mappings ocm ON ocm.control_id = fc.id
GROUP BY fc.id, fc.control_id, fc.title, fc.function_group, f.slug
ORDER BY total_obligations_touched DESC, full_coverage_obligations DESC;

-- =====================================================================
-- v_regulation_with_penalty_ceiling
-- Pre-joined regulation + maximum penalty exposure. Powers the
-- "this jurisdiction can fine you up to $X" stat blocks.
-- =====================================================================
CREATE OR REPLACE VIEW v_regulation_with_penalty_ceiling AS
SELECT
    r.id                                            AS regulation_id,
    r.slug                                          AS regulation_slug,
    r.short_name,
    r.long_name,
    r.citation,
    r.status,
    r.effective_date,
    j.code                                          AS jurisdiction_code,
    j.name                                          AS jurisdiction_name,
    MAX(ps.max_amount)                              AS max_penalty_amount,
    MAX(ps.percentage_of_turnover)                  AS max_penalty_pct_turnover,
    (
        SELECT currency
        FROM penalty_schedules ps2
        WHERE ps2.regulation_id = r.id
        ORDER BY ps2.max_amount DESC NULLS LAST
        LIMIT 1
    )                                               AS max_penalty_currency,
    BOOL_OR(r.private_right_of_action)              AS has_private_right_of_action
FROM regulations r
JOIN jurisdictions j ON j.id = r.jurisdiction_id
LEFT JOIN penalty_schedules ps ON ps.regulation_id = r.id
GROUP BY r.id, r.slug, r.short_name, r.long_name, r.citation, r.status,
         r.effective_date, j.code, j.name;

-- =====================================================================
-- v_safe_harbor_anchors
-- The strategic anchor: which jurisdictions have explicit statutory
-- safe harbors via NIST AI RMF or ISO 42001. Drives the "implement
-- once, defend everywhere" sales narrative.
-- =====================================================================
CREATE OR REPLACE VIEW v_safe_harbor_anchors AS
SELECT
    r.slug                                          AS regulation_slug,
    r.short_name                                    AS regulation_name,
    j.code                                          AS jurisdiction_code,
    f.slug                                          AS framework_slug,
    f.name                                          AS framework_name,
    fsh.safe_harbor_type,
    fsh.citation,
    fsh.notes
FROM framework_safe_harbors fsh
JOIN regulations r ON r.id = fsh.regulation_id
JOIN jurisdictions j ON j.id = r.jurisdiction_id
JOIN frameworks f ON f.id = fsh.framework_id
ORDER BY
    CASE fsh.safe_harbor_type
        WHEN 'explicit_statutory' THEN 1
        WHEN 'rebuttable_presumption' THEN 2
        WHEN 'practitioner_recognized' THEN 3
        WHEN 'good_faith_evidence' THEN 4
        ELSE 5
    END,
    j.code, r.slug;
