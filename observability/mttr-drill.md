# ChainOps MTTR Drill Evidence

This is portfolio drill evidence, not a claim of production AWS traffic.

## Measurement

- Source of truth: PostgreSQL `incident.started_at` and `incident.resolved_at`
- API: `GET /api/metrics/mttr`
- Formula: average `resolved_at - started_at` across resolved incidents
- Seed dataset: `chainops-be/src/main/resources/db/migration/V2__seed_incident_drill.sql`

## Drill Result

| Scenario | Before | After |
| --- | ---: | ---: |
| Manual rollback checklist + log search | 37m | 18m |
| Argo CD drift recovery | 24m | 9m |
| DB pool saturation triage | 31m | 16m |

The seeded API sample returns 14.33m average MTTR for resolved drill incidents.

## Evidence Boundary

- Strong claim: DB-backed MTTR calculation, GitOps rollback checklist, Prometheus/Datadog-compatible telemetry wiring.
- Do not claim: production MTTR reduction on live customer traffic without external incident records.
