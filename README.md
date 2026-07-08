# ChainOps

ChainOps는 배포 이력, 장애 상태, rollback checklist, 로그 참조, MTTR 지표를 연결하는 장애 대응 운영 콘솔입니다.

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

- 배포 이벤트 등록
- 장애 생성과 상태 변경
- rollback checklist 진행 상태 관리
- 장애와 로그 검색 링크 연결
- 해결된 장애 기준 평균 MTTR 계산

## 운영 구조

- 장애 record는 원문 로그 대신 `trace_id`, `elk_url`을 저장합니다.
- ELK service를 로컬 로그 탐색 구성에 포함합니다.
- Terraform, Kubernetes, Helm, Argo CD manifest로 배포 구조를 정의합니다.
