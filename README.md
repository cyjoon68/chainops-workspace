# ChainOps

ChainOps is an incident operations console for connecting deployment history, incident state, rollback checks, log references, and MTTR tracking.

```text
chainops-workspace/
  chainops-fe/
  chainops-be/
```

## Services

- `chainops-fe`: operations console for incidents, deployment history, and MTTR.
- `chainops-be`: incident lifecycle API and MTTR calculation.

## Run

```bash
git submodule update --init --recursive
docker compose up --build
```

## Core Flow

- Register deployment events.
- Create and update incidents.
- Track rollback checklist progress.
- Link incidents to log search references.
- Calculate average MTTR for resolved incidents.

## Operations

- Incident records store `trace_id` and `elk_url` instead of raw log bodies.
- ELK services are included for local log exploration.
- Terraform, Kubernetes, Helm, and Argo CD manifests describe deployment structure.
