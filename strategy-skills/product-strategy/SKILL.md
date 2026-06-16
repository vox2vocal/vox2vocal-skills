---
name: product-strategy
description: Use to turn business context into product strategy, including first target segment, core problem, positioning, strategic choices, principles, metrics, and non-goals.
---

# Pipeline Role

- Receives: business-context output, company goal, market/customer signal, or product direction.
- Produces: product strategy that determines which product problem to own first and what tradeoffs to make.
- Locks: target segment, core problem, differentiation, strategic choices, product principles, and key metrics.
- Hard boundary: do not write product vision, system modules, phase plans, PRDs, or feature specs.

# Use When
- the team needs to choose which user/problem to focus on first.
- several possible product directions compete for attention.
- PRDs would otherwise be written without a shared strategic filter.
# Decision Rules
- Choose a first target segment; do not describe every possible user as equally important.
- Make tradeoffs explicit: what the product will optimize for and what it will not optimize for yet.
- Connect metrics to both user behavior and business goals.
- If differentiation is only a feature list, rewrite it as positioning or strategic advantage.
# Output Contract

Use Korean-first headings with English in parentheses for user-facing output.

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

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Continue to product-vision-writer when target segment, core problem, differentiation, and product principles are clear.
- Route back to business-context when the business goal, buyer, or growth model is still ambiguous.
# Quality Bar
- Strategy must narrow options; it should not be a list of all desirable outcomes.
- Non-choices are as important as choices.
- The output must be usable as a filter for later PRD scope decisions.
