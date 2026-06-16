---
name: api-data-contract-planner
description: Use to detail API contracts, request/response shapes, validation, errors, compatibility, schema changes, migrations, indexes, events, and analytics contracts.
---

# Pipeline Role

- Receives: TRD, PRD-to-TRD bridge, feature plan, or existing API/data notes.
- Produces: API and data contract plan that can be inserted into TRD or turned into tickets.
- Locks: endpoint contracts, validation, errors, auth, compatibility, data model, migration, indexes, and events/analytics.
- Hard boundary: do not redesign the whole architecture or decide product scope.

# Use When
- API, database, event, or analytics changes are part of the work.
- TRD review flags underspecified contracts.
- implementation tickets would be ambiguous without concrete wire/data shapes.
# Decision Rules
- Define APIs around product behavior and domain concepts, not only UI convenience.
- Include validation, error cases, auth/permission, and compatibility.
- Call out migration safety, indexing, existing records, and old clients when relevant.
- Do not invent fields without explaining their purpose.
# Output Contract

Use Korean-first headings with English in parentheses for user-facing output.

```markdown
# API / 데이터 계약 계획 (API / Data Contract Plan)

## 지원 동작 (Behavior Supported)

## API 계약 (API Contracts)

### <엔드포인트 (Endpoint)>
- 메서드 (Method):
- 경로 (Path):
- 인증 / 권한 (Auth / Permission):
- 요청 (Request):
- 응답 (Response):
- 검증 (Validation):
- 에러 케이스 (Error Cases):
- 호환성 (Compatibility):

## 데이터 모델 변경사항 (Data Model Changes)

## 마이그레이션 계획 (Migration Plan)

## 인덱스 / 성능 메모 (Indexing / Performance Notes)

## 이벤트 / 분석 (Events / Analytics)

## 열린 계약 질문 (Open Contract Questions)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Return to trd-writer or trd-reviewer once contracts are concrete.
- Route back to product skills when contract questions reveal unclear product behavior.
# Quality Bar
- Contracts must be concrete enough for implementation and testing.
- Compatibility and migration risk cannot be skipped for existing systems.
- Auth and error behavior are part of the contract.
