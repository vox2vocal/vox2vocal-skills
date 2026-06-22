---
name: trd-writer
description: Use to write a Technical Requirements Document from a PRD-to-TRD bridge, PRD, feature plan, technical input package, and API/data contract plan; for multi-service, permission/session, deletion/retention, audit, worker/job, file/media, push, migration, or indexing work, use api-data-contract-planner first unless contracts are already sufficiently clear.
---

# Pipeline Role

- Receives: PRD-to-TRD bridge, PRD, feature definition, page/flow plan, API/data contract plan when needed, and known architecture context.
- Produces: TRD that explains how to implement the PRD safely and measurably.
- Locks: technical approach, architecture decisions, subsystem changes, integrated API/data contract references, permissions, observability, rollout, rollback, tests, risks, and alternatives.
- Hard boundary: do not rewrite product requirements or create tickets before review.

# Use When
- product requirements are stable enough for technical design.
- engineering needs a technical design before ticketing or implementation.
- API/data/auth/observability/rollout decisions need to be documented.
- API/data contracts are already concrete, or `api-data-contract-planner` has produced the contract plan for complex service/data work.
# Decision Rules
- Start from requirement traceability; every major technical section should map back to PRD needs.
- For requirements involving multiple services, permission/session, deletion/retention, audit, worker/job, file/media, push, migration, or indexing, require `api-data-contract-planner` output as default input.
- If endpoint owner, request/response shape, auth context, reads/writes, error behavior, event schema, migration/indexing, or compatibility is unclear, route to `api-data-contract-planner` before drafting the TRD.
- Choose the smallest technical approach that satisfies product requirements and risks.
- Include rollout, rollback, observability, and test strategy when production behavior changes.
- Base Test Plan, Observability, and Security Considerations on the contract plan when one exists.
- State alternatives considered when there is a meaningful architectural tradeoff.
# Output Contract

Use Korean-first headings with English in parentheses for user-facing output.

```markdown
# 기술 요구사항 문서 (Technical Requirements Document)

## 기술 요약 (Technical Summary)

## 제품 요구사항 추적성 (Product Requirement Traceability)

## 입력 계약 요약 (Input Contract Summary)

## 아키텍처 / 접근 방식 (Architecture / Approach)

## 프론트엔드 변경사항 (Frontend Changes)

## 백엔드 / 서비스 변경사항 (Backend / Service Changes)

## API 계약 (API Contract)

## 데이터 모델 / 마이그레이션 (Data Model / Migration)

## 인증 / 권한 (Auth / Permissions)

## 관측성 (Observability)

## 성능 / 보안 고려사항 (Performance / Security Considerations)

## 롤아웃 / 롤백 계획 (Rollout / Rollback Plan)

## 테스트 계획 (Test Plan)

## 리스크와 트레이드오프 (Risks and Tradeoffs)

## 검토한 대안 (Alternatives Considered)

## 열린 기술 질문 (Open Technical Questions)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Continue to trd-reviewer after drafting.
- Route to api-data-contract-planner before drafting when API/data/event contracts are missing for complex or safety-critical work.
- Route to api-data-contract-planner after drafting only when a review discovers contract gaps that were not visible earlier.
- Route back to prd-to-trd-bridge when product-to-technical traceability is weak.
# Quality Bar
- The TRD must be a technical decision document, not a PRD copy.
- The TRD must not invent API schemas, data objects, permission boundaries, event contracts, migration/indexing strategy, or compatibility behavior when the contract plan is absent or incomplete.
- No major production change should lack observability, rollout, rollback, and tests.
- Test Plan, Observability, Security Considerations, and Rollback must be traceable to concrete API/data/event contracts for contract-heavy work.
- Open technical questions must be visible before tickets are created.
