---
name: business-context
description: Use before product strategy when the business reason, target market, buyer/user, revenue model, business constraints, or success indicators are unclear.
---

# Pipeline Role

- Receives: raw business idea, founder request, market signal, or high-level product direction.
- Produces: a business-context brief that explains why the product should exist as a business bet.
- Locks: business goal, target customer/buyer, value exchange, constraints, and business success indicators.
- Hard boundary: do not define product features, phases, PRDs, TRDs, or implementation plans.

# Use When
- the product idea is still disconnected from business goals or market/customer logic.
- the user asks whether a product direction is worth pursuing.
- product strategy would otherwise be based on vague ambition instead of explicit business assumptions.
# Decision Rules
- Separate customer, user, and buyer when they differ.
- Treat revenue model, channel, and market evidence as assumptions unless evidence is provided.
- If the business reason is weak, say so and recommend validation before product strategy.
- Preserve constraints that can change product scope, such as timeline, budget, compliance, partnerships, or team capacity.
# Output Contract

Use Korean-first headings with English in parentheses for user-facing output.

```markdown
# 사업 맥락 (Business Context)

## 사업 목표 (Business Goals)

## 시장 / 고객 / 구매자 (Market / Customer / Buyer)

## 가치 교환 (Value Exchange)

## 수익 모델 / 성장 방식 (Revenue Model / Growth Motion)

## 전략 제약 (Strategic Constraints)

## 성공 지표 (Business Success Indicators)

## 근거와 가정 (Evidence and Assumptions)

## 사업 리스크 (Business Risks)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Continue to product-strategy when business goal, target segment, value exchange, and constraints are explicit.
- Ask for more evidence when market/customer demand, buyer, or revenue model is purely assumed.
# Quality Bar
- The output must clarify why this product should exist before explaining what to build.
- Do not turn business goals into feature requests.
- Every major assumption must be visible.
