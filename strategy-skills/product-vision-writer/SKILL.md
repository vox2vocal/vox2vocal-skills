---
name: product-vision-writer
description: Use for the Product-Level product-vision document after product-strategy to define the completed product experience, target users, core jobs, north-star metric, product principles, anti-vision, and open questions before target-system planning; use domain number 00.
---

# Pipeline Role

- Receives: product strategy, business context, or a clear product direction.
- Produces: a product vision that describes the completed user outcome and product promise.
- Locks: end-state user experience, core job to be done, north-star metric, product principles, and anti-vision.
- Hard boundary: do not decompose into modules, phases, detailed features, pages, or technical architecture.

# Document Rules
- Treat this as a Product-Level Doc and use domain number `00`.
- Recommended filename: `00_03_<product>-foundation-product-vision.md`.
- Start the document at the top with: `문서 번호`, `문서 버전`, `작성일`, `상태`, `범위`, `적용 skill`, `도메인`, `스킬 단계`, `기반 문서`.
- `기반 문서`에는 반드시 파일명과 문서 버전을 함께 기록한다.
- Use `v0.1`, `v0.2`, ... for document versions, not dates; use `v1.0` only when locked as product vision reference.
- Record each base document as filename plus version, especially `business-context` and `product-strategy`.
- Include a Change Log table and keep Known Facts, Decisions, Assumptions, and Open Questions separate.

# Use When
- the user asks what the completed system/product should become.
- multiple PRDs need to align under one long-term direction.
- the team needs a north-star experience before slicing phases.
# Decision Rules
- Describe the completed user experience, not just a product category.
- Keep the vision broad enough to guide several phases but specific enough to reject bad scope.
- Name what the product should not become to prevent strategy drift.
- Do not call Phase 1 or MVP the full product vision.
- Do not invent target users, product principles, or north-star metrics that are not supported by upstream decisions.
# Output Contract

Use Korean-first headings and important domain/technical terms with English in parentheses for user-facing output. Example: 감사 이벤트 (AuditEvent), 접근 결정 로그 (AccessDecisionLog), 트랜잭션 아웃박스 (TransactionalOutbox).

```markdown
# 제품 비전 (Product Vision)

## 비전 한 문장 (Vision Statement)

## 대상 사용자 (Target Users)

## 핵심 작업 (Core Job To Be Done)

## 완성된 사용자 경험 (Completed User Experience)

## 노스스타 지표 (North Star Metric)

## 제품 원칙 (Product Principles)

## 되지 않을 것 (Anti-vision / Non-goals)

## 열린 질문 (Open Questions)

## 변경 이력 (Change Log)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Continue to target-system-planner when the completed experience and product principles are stable.
- Route back to product-strategy when the target user, core problem, or strategic choices are still unclear.
# Quality Bar
- The vision must help later teams decide what belongs in and out of scope.
- Avoid motivational language that does not constrain decisions.
- Every major phrase should point to a user outcome or product principle.
