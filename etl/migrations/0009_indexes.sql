-- =====================================================================
-- 0009_indexes.sql — Performance indexes
-- =====================================================================
-- Adds indexes beyond the baseline that 0001-0008 created. Focus areas:
-- - pgvector HNSW indexes for semantic search on embedded text
-- - Partial indexes for common filter-heavy queries
-- - Composite indexes for join-heavy reporting paths
--
-- Run AFTER 0008. Idempotent.

-- =====================================================================
-- HNSW vector indexes for semantic retrieval
-- HNSW (Hierarchical Navigable Small World) is the recommended pgvector
-- index type for high-recall similarity search. The parameters chosen
-- here are pgvector defaults; tune `m` and `ef_construction` later if
-- recall or build time becomes a problem.
-- =====================================================================

-- Regulation articles: full-text source embeddings for "find me regulations like X"
CREATE INDEX IF NOT EXISTS idx_articles_embedding_hnsw
    ON regulation_articles
    USING hnsw (embedding vector_cosine_ops)
    WHERE embedding IS NOT NULL;

-- Obligations: atomic-obligation embeddings. The most important vector index
-- in the system — powers obligation discovery and dedupe across jurisdictions.
CREATE INDEX IF NOT EXISTS idx_obligations_embedding_hnsw
    ON obligations
    USING hnsw (embedding vector_cosine_ops)
    WHERE embedding IS NOT NULL;

-- Framework controls: control-text embeddings. Used to suggest NIST mappings
-- when a new obligation is extracted.
CREATE INDEX IF NOT EXISTS idx_controls_embedding_hnsw
    ON framework_controls
    USING hnsw (embedding vector_cosine_ops)
    WHERE embedding IS NOT NULL;

-- =====================================================================
-- Partial indexes for common operational queries
-- =====================================================================

-- "Open gaps for this org" — the most common dashboard query
CREATE INDEX IF NOT EXISTS idx_gaps_open_by_org
    ON compliance_gaps(organization_id, severity, identified_at DESC)
    WHERE resolved_at IS NULL;

-- "Controls due for review" — drives the proactive notification system
CREATE INDEX IF NOT EXISTS idx_ci_due_for_review
    ON control_implementations(organization_id, next_review_due_at)
    WHERE status IN ('implemented', 'verified')
      AND next_review_due_at IS NOT NULL;

-- "Active evidence by control" — drives compliance scoring
CREATE INDEX IF NOT EXISTS idx_evidence_active_by_ci
    ON evidence_artifacts(control_implementation_id, collected_at DESC)
    WHERE is_active = TRUE;

-- "Find me regulations in force in a jurisdiction"
CREATE INDEX IF NOT EXISTS idx_regulations_in_force
    ON regulations(jurisdiction_id, effective_date)
    WHERE status = 'in_force';

-- "Pending obligations to extract" — feeds the editorial pipeline
CREATE INDEX IF NOT EXISTS idx_regulations_pending_extraction
    ON regulations(jurisdiction_id)
    WHERE status IN ('proposed', 'enacted_not_in_force');

-- "AI deployments handling sensitive data" — risk dashboard
CREATE INDEX IF NOT EXISTS idx_deployments_high_risk
    ON ai_deployments(organization_id, deployment_type)
    WHERE makes_consequential_decisions = TRUE
       OR processes_biometric_data = TRUE
       OR processes_health_data = TRUE
       OR processes_minor_data = TRUE;

-- =====================================================================
-- Composite indexes for reporting queries
-- =====================================================================

-- Coverage matrix rebuild: obligation × control with coverage level
CREATE INDEX IF NOT EXISTS idx_ocm_coverage_composite
    ON obligation_control_mappings(obligation_id, control_id, coverage_level);

-- Per-jurisdiction compliance rollup
CREATE INDEX IF NOT EXISTS idx_obl_status_org_summary
    ON obligation_compliance_status(organization_id, coverage_summary, score DESC);

-- Cross-jurisdictional safe-harbor lookup
CREATE INDEX IF NOT EXISTS idx_safeharbors_lookup
    ON framework_safe_harbors(regulation_id, framework_id, safe_harbor_type);

-- =====================================================================
-- Statistics targets — tune planner for skewed columns
-- =====================================================================
ALTER TABLE obligations ALTER COLUMN obligation_type SET STATISTICS 500;
ALTER TABLE obligation_control_mappings ALTER COLUMN coverage_level SET STATISTICS 500;
ALTER TABLE compliance_gaps ALTER COLUMN severity SET STATISTICS 500;
