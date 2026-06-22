---
name: business-context
description: Use for the Product-Level foundation business-context document before product strategy when the business reason, target market, buyer/user, revenue model, business constraints, risks, or success indicators are unclear; use domain number 00.
---

# Pipeline Role

- Receives: raw business idea, founder request, market signal, or high-level product direction.
- Produces: a business-context brief that explains why the product should exist as a business bet.
- Locks: business goal, target customer/buyer, value exchange, constraints, and business success indicators.
- Hard boundary: do not define product features, phases, PRDs, TRDs, or implementation plans.

# Document Rules
- Treat this as a Product-Level Doc and use domain number `00`.
- Recommended filename: `00_01_<product>-foundation-business-context.md`.
- Start the document at the top with: `문서 번호`, `문서 버전`, `작성일`, `상태`, `범위`, `적용 skill`, `도메인`, `스킬 단계`, `기반 문서`.
- `기반 문서`에는 반드시 파일명과 문서 버전을 함께 기록한다.
- Use `v0.1`, `v0.2`, ... for document versions, not dates; use `v1.0` only when locked as implementation/product reference.
- Record each base document as filename plus version; use `없음` only when no upstream document exists.
- Include a Change Log table and keep Known Facts, Decisions, Assumptions, and Open Questions separate.

# Use When
- the product idea is still disconnected from business goals or market/customer logic.
- the user asks whether a product direction is worth pursuing.
- product strategy would otherwise be based on vague ambition instead of explicit business assumptions.
# Decision Rules
- Separate customer, user, and buyer when they differ.
- Treat revenue model, channel, and market evidence as assumptions unless evidence is provided.
- If the business reason is weak, say so and recommend validation before product strategy.
- Preserve constraints that can change product scope, such as timeline, budget, compliance, partnerships, or team capacity.
- Do not invent market evidence, buyer intent, metrics, or constraints.
# Output Contract

Use Korean-first headings and important domain/technical terms with English in parentheses for user-facing output. Example: 감사 이벤트 (AuditEvent), 접근 결정 로그 (AccessDecisionLog), 트랜잭션 아웃박스 (TransactionalOutbox).

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

## 변경 이력 (Change Log)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Continue to product-strategy when business goal, target segment, value exchange, and constraints are explicit.
- Ask for more evidence when market/customer demand, buyer, or revenue model is purely assumed.
# Quality Bar
- The output must clarify why this product should exist before explaining what to build.
- Do not turn business goals into feature requests.
- Every major assumption must be visible.
