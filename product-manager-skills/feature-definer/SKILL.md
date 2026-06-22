---
name: feature-definer
description: Use to turn an approved Domain-Level PRD into feature definitions with service surface, MVP/Later/Out-of-scope split, user actions, product behavior, business rules, states, permissions, edge cases, dependencies, and success signals before page-flow-planner.
---

# Pipeline Role

- Receives: reviewed PRD, product brief, or approved phase requirement.
- Produces: feature definition that describes product behavior before page planning or ticket breakdown.
- Locks: MVP features, service surfaces, later features, out-of-scope items, rules, states, permissions, edge cases, dependencies, and success signals.
- Hard boundary: do not plan pages, UI layout, technical design, or tickets.

# Document Rules
- Treat this as a Domain-Level Doc and keep the assigned domain number stable.
- Recommended filename: `<domain-number>_03_<product>-<domain>-feature-definition.md`.
- Start the document at the top with: `문서 번호`, `문서 버전`, `작성일`, `상태`, `범위`, `적용 skill`, `도메인`, `스킬 단계`, `기반 문서`.
- `기반 문서`에는 반드시 파일명과 문서 버전을 함께 기록한다.
- Use `v0.1`, `v0.2`, ... for document versions, not dates; use `v1.0` only when locked for implementation.
- Record each base document as filename plus version, especially PRD and PRD review when available.
- Include a Change Log table and keep Known Facts, Decisions, Assumptions, and Open Questions separate.

# Use When
- the PRD is clear enough but feature behavior still needs definition.
- MVP/Later/Out-of-scope boundaries need to be explicit.
- business rules, permissions, states, or edge cases are not yet captured.
# Decision Rules
- A feature is product behavior, not a page, component, or implementation task.
- MVP must be smaller than the full vision and aligned to P0/P1 decisions.
- For each MVP feature, define service surface, user action, product behavior, business rule, state, permission, edge case, dependency, and success signal.
- Use service surface values such as Admin Service, User App, Shared, or Cross-Service; do not blend admin and user app behavior inside one feature without naming the handoff.
- Flag unclear behavior as an open question rather than producing false certainty.
- Keep product behavior separate from UI surface or technical implementation.
# Output Contract

Use Korean-first headings and write specialized terms and technical terms in Korean with English in parentheses for user-facing output. Example: 감사 이벤트 (AuditEvent), 접근 결정 로그 (AccessDecisionLog), 트랜잭션 아웃박스 (TransactionalOutbox).

```markdown
# 기능 정의서 (Feature Definition)

## 맥락 (Context)

## MVP 기능 (MVP Features)

### <기능명 (Feature Name)>
- 서비스 영역 (Service Surface):
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

## 변경 이력 (Change Log)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Continue to feature-definition-reviewer when MVP feature behavior, service surface, and states are clear.
- Route back to prd-writer or prd-reviewer when the PRD cannot support stable feature boundaries.
# Quality Bar
- The output must let design and engineering understand behavior without guessing.
- Do not promote every desirable feature into MVP.
- Each MVP feature must make Admin Service, User App, Shared, or Cross-Service ownership explicit when relevant.
- Permissions and states must be explicit when relevant.
