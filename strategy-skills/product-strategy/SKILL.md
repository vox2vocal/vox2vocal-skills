---
name: product-strategy
description: Use for the Product-Level product-strategy document after business-context to define first target segment, core problem, positioning, monetization/growth constraints, strategic choices, principles, metrics, non-goals, and risks; use domain number 00.
---

# Pipeline Role

- Receives: business-context output, company goal, market/customer signal, or product direction.
- Produces: product strategy that determines which product problem to own first and what tradeoffs to make.
- Locks: target segment, core problem, differentiation, strategic choices, product principles, and key metrics.
- Hard boundary: do not write product vision, system modules, phase plans, PRDs, or feature specs.

# Document Rules
- Treat this as a Product-Level Doc and use domain number `00`.
- Recommended filename: `00_02_<product>-foundation-product-strategy.md`.
- Start the document at the top with: `문서 번호`, `문서 버전`, `작성일`, `상태`, `범위`, `적용 skill`, `도메인`, `스킬 단계`, `기반 문서`.
- `기반 문서`에는 반드시 파일명과 문서 버전을 함께 기록한다.
- Use `v0.1`, `v0.2`, ... for document versions, not dates; use `v1.0` only when locked as product strategy reference.
- Record each base document as filename plus version, especially `business-context`.
- Include a Change Log table and keep Known Facts, Decisions, Assumptions, and Open Questions separate.

# Use When
- the team needs to choose which user/problem to focus on first.
- several possible product directions compete for attention.
- PRDs would otherwise be written without a shared strategic filter.
# Decision Rules
- Choose a first target segment; do not describe every possible user as equally important.
- Make tradeoffs explicit: what the product will optimize for and what it will not optimize for yet.
- Connect metrics to both user behavior and business goals.
- If differentiation is only a feature list, rewrite it as positioning or strategic advantage.
- Surface monetization, growth motion, commercial/non-commercial boundaries, rights risk, metric gaps, and strategic dependencies when relevant.
# Output Contract

Use Korean-first headings and write specialized terms and technical terms in Korean with English in parentheses for user-facing output. Example: 감사 이벤트 (AuditEvent), 접근 결정 로그 (AccessDecisionLog), 트랜잭션 아웃박스 (TransactionalOutbox).

```markdown
# 제품 전략 (Product Strategy)

## 전략 요약 (Strategy Summary)

## 첫 타깃 세그먼트 (First Target Segment)

## 핵심 문제 (Core Problem)

## 차별화 / 포지셔닝 (Differentiation / Positioning)

## 전략적 선택과 비선택 (Strategic Choices and Non-choices)

## 제품 원칙 (Product Principles)

## 핵심 지표 (Key Metrics)

## 검증 필요 영역 (Validation Gaps)

## 변경 이력 (Change Log)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Continue to product-vision-writer when target segment, core problem, differentiation, and product principles are clear.
- Route back to business-context when the business goal, buyer, or growth model is still ambiguous.
# Quality Bar
- Strategy must narrow options; it should not be a list of all desirable outcomes.
- Non-choices are as important as choices.
- The output must be usable as a filter for later PRD scope decisions.
