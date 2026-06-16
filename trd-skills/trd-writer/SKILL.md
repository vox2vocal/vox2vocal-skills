---
name: trd-writer
description: Use to write a Technical Requirements Document from a PRD-to-TRD bridge, PRD, feature plan, or technical input package.
---

# Pipeline Role

- Receives: PRD-to-TRD bridge, PRD, feature definition, page/flow plan, and known architecture context.
- Produces: TRD that explains how to implement the PRD safely and measurably.
- Locks: technical approach, architecture decisions, subsystem changes, API/data contracts, permissions, observability, rollout, rollback, tests, risks, and alternatives.
- Hard boundary: do not rewrite product requirements or create tickets before review.

# Use When
- product requirements are stable enough for technical design.
- engineering needs a technical design before ticketing or implementation.
- API/data/auth/observability/rollout decisions need to be documented.
# Decision Rules
- Start from requirement traceability; every major technical section should map back to PRD needs.
- Choose the smallest technical approach that satisfies product requirements and risks.
- Include rollout, rollback, observability, and test strategy when production behavior changes.
- State alternatives considered when there is a meaningful architectural tradeoff.
# Output Contract

Use Korean-first headings with English in parentheses for user-facing output.

```markdown
# 기술 요구사항 문서 (Technical Requirements Document)

## 기술 요약 (Technical Summary)

## 제품 요구사항 추적성 (Product Requirement Traceability)

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
- Route to api-data-contract-planner when API or data changes need more detail.
- Route back to prd-to-trd-bridge when product-to-technical traceability is weak.
# Quality Bar
- The TRD must be a technical decision document, not a PRD copy.
- No major production change should lack observability, rollout, rollback, and tests.
- Open technical questions must be visible before tickets are created.
