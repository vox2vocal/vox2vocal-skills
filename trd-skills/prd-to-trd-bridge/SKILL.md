---
name: prd-to-trd-bridge
description: Use to convert PRD, feature definition, and reviewed page/flow plan into a TRD input package with service surface impact, requirement traceability, technical impact areas, nonfunctional requirements, engineering questions, and a recommendation to run api-data-contract-planner before trd-writer when API/data/service contracts are not already clear.
---

# Pipeline Role

- Receives: reviewed PRD, feature definition, and reviewed page/flow plan.
- Produces: TRD input package that maps product requirements to technical planning areas.
- Locks: service surface impact, requirement traceability, likely affected systems, API/data considerations, permissions/security, nonfunctional requirements, and engineering questions.
- Hard boundary: do not write the full TRD, choose final architecture, or create tickets.

# Use When
- PRD and product flows are ready for technical planning.
- engineering needs a structured handoff from product requirements.
- technical impact areas are unclear across frontend, backend, API, data, infra, worker, or analytics.
- the next step must decide whether API/data contracts should be planned before TRD writing.
# Decision Rules
- Every major product requirement should map to a technical impact area.
- Preserve PRD intent; do not replace product decisions with implementation guesses.
- Preserve service surface ownership; map Admin Service, User App, Shared, and Cross-Service impacts separately when relevant.
- Translate success metrics into observability and validation needs.
- Treat `api-data-contract-planner` as the usual next step when multiple services share a requirement, or when permission, session, deletion, audit, billing, privacy, retention, notification, file/media, worker/job, migration, or indexing is involved.
- Only recommend direct handoff to `trd-writer` when the change is UI-only, backend/data impact is minimal, or API/data/event contracts are already sufficiently fixed.
- Do not pretend to lock endpoint shape, request/response shape, owner, auth context, reads/writes, error behavior, event schema, migration, or indexing; surface those as contract questions for `api-data-contract-planner`.
- If architecture or service ownership is unknown, ask explicit engineering questions.
# Output Contract

Use Korean-first headings with English in parentheses for user-facing output.

```markdown
# PRD-TRD 연결 (PRD to TRD Bridge)

## 제품 의도 (Product Intent)

## 요구사항 추적성 (Requirement Traceability)

| 제품 요구사항 (Product Requirement) | 기술 영향 영역 (Technical Impact Area) | 메모 / 질문 (Notes / Questions) |
|---|---|---|

## 예상 영향 시스템 (Likely Affected Systems)

## 서비스 영역별 영향 (Impact by Service Surface)

## API / 데이터 고려사항 (API / Data Considerations)

## 계약 선행 판단 (Contract-First Routing)

## 권한 / 보안 고려사항 (Permission / Security Considerations)

## 비기능 요구사항 (Nonfunctional Requirements)

## 엔지니어링 질문 (Engineering Questions)

## TRD 준비도 (Readiness for TRD)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Continue to api-data-contract-planner before trd-writer when API owner, auth context, data object, event schema, migration/indexing, or cross-service ownership is unclear.
- Continue to api-data-contract-planner before trd-writer when acceptance criteria must be verified through API/data/event behavior, or rollout/rollback depends on data state or API backward compatibility.
- Continue directly to trd-writer only when requirement traceability is clear and API/data contract impact is small or already decided.
- Route back to PRD/product skills when product requirements, service surfaces, or page-flow ownership are ambiguous or untraceable.
# Quality Bar
- The bridge must prevent TRD writing from losing product intent.
- The bridge must prevent TRD writing from guessing API schema, data model, permission boundary, event contract, or migration/indexing details.
- Admin Service and User App impacts must not be collapsed when they need different implementation, permission, or release planning.
- Unknown technical ownership should be explicit.
- Do not choose a solution where the product requirement only needs an impact question.
- The recommended next skill should usually say: `api-data-contract-planner` first for multi-service, permission/session, deletion/retention, audit/logging, worker/job, file/media, push/notification, or migration/indexing work; `trd-writer` only when API/data impact is low or contracts are already clear.
