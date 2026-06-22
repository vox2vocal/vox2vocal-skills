---
name: prd-to-trd-bridge
description: Use to convert reviewed Domain-Level PRD, feature definition, and page/flow plan into a TRD input package with service surface impact, requirement traceability, technical impact areas, nonfunctional requirements, engineering questions, TRD blockers, and a recommendation to run api-data-contract-planner before trd-writer when API/data/service contracts are not already clear; do not write the TRD.
---

# Pipeline Role

- Receives: reviewed PRD, feature definition, and reviewed page/flow plan.
- Produces: TRD input package that maps product requirements to technical planning areas.
- Locks: service surface impact, requirement traceability, likely affected systems, API/data considerations, permissions/security, nonfunctional requirements, and engineering questions.
- Hard boundary: do not write the full TRD, choose final architecture, or create tickets.

# Document Rules
- Treat this as a Domain-Level Doc and keep the assigned domain number stable.
- Recommended filename: `<domain-number>_05_<product>-<domain>-prd-to-trd-bridge.md`.
- Start the document at the top with: `문서 번호`, `문서 버전`, `작성일`, `상태`, `범위`, `적용 skill`, `도메인`, `스킬 단계`, `기반 문서`.
- `기반 문서`에는 반드시 파일명과 문서 버전을 함께 기록한다.
- Use `v0.1`, `v0.2`, ... for document versions, not dates; use `v1.0` only when locked for TRD input.
- Record each base PRD, feature definition, page-flow plan, and review result as filename plus version.
- Include a Change Log table and keep Known Facts, Decisions, Assumptions, and Open Questions separate.

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
- Separate TRD blockers from recommended decision options; do not silently promote an option into a final technical choice.
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

## 변경 이력 (Change Log)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Continue only with `Go with clear TRD blockers`: requirement traceability is clear and blockers/questions are visible.
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
