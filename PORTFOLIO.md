# ChainOps

## Role Fit
- Frontend: TypeScript, React, Next.js App Router, pnpm, ky, Cypress E2E
- Backend: Kotlin, Spring Boot MVC, PostgreSQL, Flyway
- Infra: Docker, Terraform, Kubernetes, Helm, GitOps Argo CD, ELK, GitHub Actions, GHCR
- Git Flow: develop default, main retained, policy workflow for branch and PR title rules

## Service
ChainOps is an incident and deployment operations console for tracking service health, MTTR, and release risk across Kubernetes workloads.

## Problem Solving
- Built IaC and GitOps evidence with Terraform, Kubernetes manifests, Helm chart, and Argo CD app definition.
- Added observability-oriented workspace composition with Elasticsearch, Logstash, and Kibana.
- Kept CI cluster-independent by validating Terraform and parsing Kubernetes YAML without requiring live credentials.

## Evidence
- App repo: https://github.com/chainops-labs/chainops-fe
- API repo: https://github.com/chainops-labs/chainops-be
- Workspace repo: https://github.com/cyjoon68/chainops-workspace
- CI/CD: frontend/backend CI, Docker build/push, workspace ops verification
