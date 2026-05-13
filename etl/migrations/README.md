# Sentainel Postgres Migrations

Numbered SQL migrations applied in order by `../migrate.py`. Each file is
idempotent (`CREATE ... IF NOT EXISTS`, `CREATE OR REPLACE VIEW`), so re-runs
on a partially-migrated DB are safe.

## Apply migrations

```bash
export SENTAINEL_DB_URL=postgresql://user:pass@host:5432/sentainel
cd etl
pip install -r requirements.txt
python migrate.py                 # apply all pending
python migrate.py --status        # see what's applied
python migrate.py --dry-run       # print plan, don't run
python migrate.py --version 0005  # apply up to and including 0005
```

Applied versions are tracked in the `schema_migrations` table, with SHA-256
hashes so we can detect drift if a migration file is edited post-apply.

## File layout

| # | File | What it adds |
|---|---|---|
| 0001 | `init.sql` | Extensions (uuid, pg_trgm, vector), `jurisdictions`, `regulations`, `regulation_companion_legislation` |
| 0002 | `articles_obligations.sql` | `regulation_articles`, `obligations`, `obligation_cross_references`; pgvector embedding columns |
| 0003 | `penalties.sql` | `penalty_schedules`, `penalty_authorities` |
| 0004 | `cross_references.sql` | `frameworks` (NIST AI RMF, ISO 42001), `framework_controls`, `obligation_control_mappings`, `framework_safe_harbors` — **the moat** |
| 0005 | `actors_enums.sql` | `actor_types`, `obligation_type_definitions` with evidence-collection patterns |
| 0006 | `evidence_audit.sql` | `evidence_types`, append-only `audit_log` with cryptographic chaining trigger |
| 0007 | `customers_deployments.sql` | `organizations`, `organization_jurisdictions`, `ai_deployments`, `deployment_jurisdictions` |
| 0008 | `compliance_state.sql` | `control_implementations`, `evidence_artifacts`, `obligation_compliance_status`, `compliance_gaps` — per-customer posture |
| 0009 | `indexes.sql` | pgvector HNSW indexes, partial indexes for hot queries, statistics tuning |
| 0010 | `views.sql` | Convenience views consumed by the API/frontend |

## Architecture pointers

- **Regulatory content** (jurisdictions → regulations → articles → obligations) lives in 0001–0003. This is the editorial side of the database; one row per atomic obligation extracted from a statute.
- **Cross-references** (0004) tie obligations to NIST AI RMF controls with coverage levels (`fully_satisfies`, `partially_satisfies`, `supports`, `safe_harbor`). This is what powers the matrix viz and the cross-jurisdictional safe-harbor narrative.
- **Customer state** (0007–0008) is the operational side: per-customer organizations, their AI deployments, which controls they've implemented, what evidence they've collected, where the gaps are.
- **Views** (0010) bridge the editorial and operational sides — `v_customer_compliance_score`, `v_high_leverage_controls`, etc.

## Adding a new migration

1. Create `etl/migrations/NNNN_short_description.sql` with the next 4-digit version.
2. Use only `CREATE ... IF NOT EXISTS`, `CREATE OR REPLACE VIEW`, `DROP ... IF EXISTS` to keep it idempotent.
3. Wrap mutable triggers in `DROP TRIGGER IF EXISTS` then `CREATE TRIGGER` (Postgres has no `CREATE OR REPLACE TRIGGER` until v17).
4. Run `python migrate.py --dry-run` to verify it shows up as pending.
5. Apply with `python migrate.py`.
6. Commit the new SQL file. The runner records its SHA-256 so future runs detect modifications.

## Drift detection

If a migration file is edited after being applied, `migrate.py --status`
shows it as `DRIFTED`. Migrations should be treated as immutable once
applied; corrections go in a new migration. The `DRIFTED` warning is the
forcing function for that discipline.
