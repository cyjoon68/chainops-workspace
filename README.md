# ChainOps

ChainOps는 배포 대상의 현재 상태, 최근 배포 이력, 장애 큐, MTTR 지표를 연결해 운영자가 복구 판단을 하는 운영 콘솔입니다.

```text
chainops-workspace/
  chainops-fe/
  chainops-be/
```

## 서비스 구성

- `chainops-fe`: 장애, 배포 이력, MTTR을 확인하는 운영 콘솔
- `chainops-be`: 장애 생명주기 API와 MTTR 계산 API

## 실행

```bash
git submodule update --init --recursive
docker compose up --build
```

## 핵심 흐름

- 배포 대상 등록과 삭제
- 배포 대상과 배포 이력 연결
- 장애 생성과 상태 변경
- rollback checklist 진행 상태 관리
- 장애와 로그 검색 링크 연결
- 해결된 장애 기준 평균 MTTR 계산

## 운영 구조

- 장애 record는 원문 로그 대신 `trace_id`, `elk_url`을 저장합니다.
- ELK service를 로컬 로그 탐색 구성에 포함합니다.
- Terraform, Kubernetes, Helm, Argo CD manifest는 운영 콘솔을 설명하기 위한 보조 배포 구조입니다.
