---
name: feature-definer
description: Use to turn an approved or near-approved PRD into feature definitions with MVP scope, later scope, business rules, states, permissions, edge cases, and measurable behavior.
---

# Pipeline Role

- Receives: reviewed PRD, product brief, or approved phase requirement.
- Produces: feature definition that describes product behavior before page planning or ticket breakdown.
- Locks: MVP features, later features, out-of-scope items, rules, states, permissions, edge cases, dependencies, and success signals.
- Hard boundary: do not plan pages, UI layout, technical design, or tickets.

# Use When
- the PRD is clear enough but feature behavior still needs definition.
- MVP/Later/Out-of-scope boundaries need to be explicit.
- business rules, permissions, states, or edge cases are not yet captured.
# Decision Rules
- A feature is product behavior, not a page, component, or implementation task.
- MVP must be smaller than the full vision and aligned to P0/P1 decisions.
- For each MVP feature, define user action, product behavior, business rule, state, permission, edge case, dependency, and success signal.
- Flag unclear behavior as an open question rather than producing false certainty.
# Output Contract

Use Korean-first headings with English in parentheses for user-facing output.

```markdown
# 기능 정의서 (Feature Definition)

## 맥락 (Context)

## MVP 기능 (MVP Features)

### <기능명 (Feature Name)>
- 사용자 행동 (User Action):
- 제품 동작 (Product Behavior):
- 비즈니스 규칙 (Business Rules):
- 권한 / 역할 (Permissions / Roles):
- 상태 (States):
- 예외 케이스 (Edge Cases):
- 의존성 (Dependencies):
- 성공 신호 (Success Signal):

## 이후 기능 (Later Features)

## 범위 제외 (Out of Scope)

## 범위 리스크 (Scope Risks)

## 열린 질문 (Open Questions)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Continue to page-flow-planner when MVP feature behavior and states are clear.
- Route back to prd-writer or prd-reviewer when the PRD cannot support stable feature boundaries.
# Quality Bar
- The output must let design and engineering understand behavior without guessing.
- Do not promote every desirable feature into MVP.
- Permissions and states must be explicit when relevant.
