---
name: api-data-contract-planner
description: Use before trd-writer, or when a TRD review finds gaps, to lock Domain-Level API/data/service contracts including endpoint owners, request/response shapes, auth context, reads/writes, validation, errors, compatibility, schema changes, migrations, indexes, events, analytics, worker/job, media/file, permission, deletion, audit, retention, and cross-service data responsibilities.
---

# Pipeline Role

- Receives: TRD, PRD-to-TRD bridge, feature plan, or existing API/data notes.
- Produces: API and data contract plan that becomes required input for TRD writing or ticket breakdown.
- Locks: endpoint owners, endpoint contracts, request/response shapes, auth context, reads/writes, validation, errors, compatibility, data model, migration, indexes, events/analytics, and cross-service resource boundaries.
- Hard boundary: do not redesign the whole architecture or decide product scope.

# Document Rules
- Treat this as a Domain-Level Doc and keep the assigned domain number stable.
- Recommended filename: `<domain-number>_06_<product>-<domain>-api-data-contract.md`.
- Start the document at the top with: `문서 번호`, `문서 버전`, `작성일`, `상태`, `범위`, `적용 skill`, `도메인`, `스킬 단계`, `기반 문서`.
- `기반 문서`에는 반드시 파일명과 문서 버전을 함께 기록한다.
- Use `v0.1`, `v0.2`, ... for document versions, not dates; use `v1.0` only when locked for TRD/ticket implementation.
- Record each base bridge, PRD, feature definition, page-flow plan, and existing TRD as filename plus version.
- Include a Change Log table and keep Known Facts, Decisions, Assumptions, Open Questions, and Open Contract Questions separate.

# Use When
- API, database, event, or analytics changes are part of the work.
- `prd-to-trd-bridge` identifies multi-service, permission/session, deletion/retention, audit/logging, billing, privacy, notification, file/media, worker/job, push, migration, or indexing impact.
- API owner, auth context, data object, event schema, migration/indexing, or cross-service responsibility is unclear.
- acceptance criteria must be verified through API, data, or event behavior.
- rollout or rollback depends on data state or API backward compatibility.
- TRD review flags underspecified contracts.
- implementation tickets would be ambiguous without concrete wire/data shapes.
# Decision Rules
- Use this skill before `trd-writer` when the TRD would otherwise need to guess API schema, data model, permission boundary, or event contract.
- Define APIs around product behavior and domain concepts, not only UI convenience.
- For each contract, name the owner service and caller/consumer. Cover gateway, bff, user-service, worker, storage/media, and push sender when they participate.
- Include validation, error cases, auth/permission, and compatibility.
- Include reads/writes, side effects, idempotency, retries, and transaction/outbox expectations when behavior crosses service boundaries.
- Call out migration safety, indexing, existing records, and old clients when relevant.
- For account, permission, audit, and deletion-blocking work, explicitly check contract objects with Korean labels plus canonical identifiers when relevant, such as 상태 전용 접근 권한 (StatusOnlyAccessGrant), 보호 리소스 카탈로그 (ProtectedResourceCatalog), 토큰 폐기 원장 (TokenRevocationLedger), 트랜잭션 아웃박스 (TransactionalOutbox), 접근 결정 로그 (AccessDecisionLog), and 감사 이벤트 (AuditEvent).
- For deletion-blocking work, model non-typical resources such as `media_fetch`, `queued_job`, `running_job`, `push_send_target`, and `signed URL` instead of treating only REST endpoints as resources.
- Apply the same contract rigor to song catalog, recording, preview generation, voice analysis, notification, admin operations, and observability/audit domains.
- Do not invent fields without explaining their purpose.
# Output Contract

Use Korean-first headings and write specialized terms and technical terms in Korean with English in parentheses for user-facing output. Example: 감사 이벤트 (AuditEvent), 접근 결정 로그 (AccessDecisionLog), 트랜잭션 아웃박스 (TransactionalOutbox).

```markdown
# API / 데이터 계약 계획 (API / Data Contract Plan)

## 지원 동작 (Behavior Supported)

## API 계약 (API Contracts)

### <엔드포인트 (Endpoint)>
- 소유 서비스 (Owner Service):
- 호출자 / 소비자 (Caller / Consumer):
- 메서드 (Method):
- 경로 (Path):
- 인증 / 권한 (Auth / Permission):
- 요청 (Request):
- 응답 (Response):
- 검증 (Validation):
- 에러 케이스 (Error Cases):
- 호환성 (Compatibility):

## 서비스 간 책임 (Cross-Service Responsibilities)

## 비전형 리소스 계약 (Non-Endpoint Resource Contracts)

## 데이터 모델 변경사항 (Data Model Changes)

## 마이그레이션 계획 (Migration Plan)

## 인덱스 / 성능 메모 (Indexing / Performance Notes)

## 이벤트 / 분석 (Events / Analytics)

## 열린 계약 질문 (Open Contract Questions)

## 계약 준비도 (Contract Readiness)

## 변경 이력 (Change Log)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Continue to trd-writer when contract readiness is Go or Revise-with-bounded-fixes and endpoint owners, auth context, request/response shapes, reads/writes, error behavior, event schemas, migration/indexing, and compatibility constraints are concrete enough to cite.
- Continue to trd-reviewer only after the TRD has absorbed the contract plan.
- Route back to product skills when contract questions reveal unclear product behavior.
- Route back to prd-to-trd-bridge when service ownership or technical impact areas are still too broad to assign contracts.
# Quality Bar
- Contracts must be concrete enough for TRD Test Plan, Observability, Security Considerations, implementation, and testing to be verified rather than guessed.
- The plan must keep the TRD from carrying architecture, API contract, data model, security, observability, and rollout ambiguity all at once.
- Compatibility and migration risk cannot be skipped for existing systems.
- Auth, permission boundary, auditability, and error behavior are part of the contract.
- Multi-service behavior must identify which service owns each API/data/event contract and which consumers depend on it.
