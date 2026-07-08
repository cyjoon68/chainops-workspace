# chainops-workspace

Root workspace for ChainOps. Child repos are managed as git submodules.

```text
chainops-workspace/
  chainops-fe/
  chainops-be/
```

## Run

```bash
git submodule update --init --recursive
docker compose up --build
```

## Resume evidence

- GitOps incident operations: deploy event, incident lifecycle, rollback checklist, MTTR metric.
- Frontend: Next.js App Router, React Compiler, TypeScript, ky.
- Backend: Kotlin, Spring Boot MVC, PostgreSQL schema.
- Infra: Docker Compose, Kubernetes manifests, Helm chart, Terraform namespace, Argo CD GitOps app.
- CI: FE lint/build, BE Gradle test.
