# Datadog-Compatible Observability

ChainOps exposes Spring Boot Actuator Prometheus metrics at `/actuator/prometheus` and annotates Kubernetes workloads for Datadog OpenMetrics autodiscovery.

## Local Check

```bash
docker compose --profile observability config
```

## Kubernetes Evidence

- `infra/k8s/chainops-api.yaml` contains `ad.datadoghq.com/api.checks`
- `infra/helm/templates/api.yaml` contains the same OpenMetrics autodiscovery annotation
- `chainops-be/src/main/resources/application.properties` exposes `health,info,metrics,prometheus`

## Evidence Boundary

This repo proves Datadog-ready instrumentation and agent wiring. It does not prove a live Datadog dashboard unless `DD_API_KEY` is configured and exported dashboard evidence is attached.
