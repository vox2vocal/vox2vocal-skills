---
name: phase-planner
description: Use for the Product-Level phase-plan document after target-system-planner to split the target system into MVP, P0/P1/P2 priorities, phases, dependencies, exit criteria, risks/tradeoffs, and PRD candidates; use domain number 00.
---

# Pipeline Role

- Receives: target system definition, product vision, strategy, and constraints.
- Produces: phase plan that chooses the first valuable slice and later expansion path.
- Locks: MVP definition, phase goals, P0/P1/P2, dependencies, exit criteria, and first PRD candidates.
- Hard boundary: do not write PRDs, TRDs, tickets, or implementation details.

# Document Rules
- Treat this as a Product-Level Doc and use domain number `00`.
- Recommended filename: `00_05_<product>-foundation-phase-plan.md`.
- Start the document at the top with: `문서 번호`, `문서 버전`, `작성일`, `상태`, `범위`, `적용 skill`, `도메인`, `스킬 단계`, `기반 문서`.
- `기반 문서`에는 반드시 파일명과 문서 버전을 함께 기록한다.
- Use `v0.1`, `v0.2`, ... for document versions, not dates; use `v1.0` only when locked as phase reference.
- Record each base document as filename plus version, especially `target-system-definition`.
- Include a Change Log table and keep Known Facts, Decisions, Assumptions, and Open Questions separate.

# Use When
- the completed system needs to be split into buildable phases.
- MVP/P0/P1/P2 boundaries are unclear.
- the user asks what to build first from a larger product vision.
# Decision Rules
- Define MVP as the smallest valuable validation slice, not the smallest engineering task.
- Classify P0 only when the item is release-blocking, validation-blocking, or risk-control critical.
- Keep later phases connected to the target system so MVP does not create dead ends.
- Each phase needs an exit criterion that says when the team can move on.
- Surface dependencies, permission/security gaps, metric gaps, and tradeoffs that affect PRD sequencing.
# Output Contract

Use Korean-first headings and write specialized terms and technical terms in Korean with English in parentheses for user-facing output. Example: 감사 이벤트 (AuditEvent), 접근 결정 로그 (AccessDecisionLog), 트랜잭션 아웃박스 (TransactionalOutbox).

```markdown
# 페이즈 계획 (Phase Plan)

## 페이즈 전략 요약 (Phase Strategy Summary)

## MVP 정의 (MVP Definition)

## 우선순위 분류 (P0 / P1 / P2)

## 페이즈별 범위 (Phase Scope)

## 의존성 (Dependencies)

## 페이즈 종료 기준 (Phase Exit Criteria)

## 리스크와 트레이드오프 (Risks and Tradeoffs)

## PRD 작성 후보 (PRD Candidates)

## 변경 이력 (Change Log)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Continue to pm-context for the first PRD candidate when MVP/P0 and phase exit criteria are clear.
- Route back to target-system-planner when modules, workflows, or boundaries are unstable.
# Quality Bar
- The phase plan must make it obvious what to build first and what to defer.
- Do not label everything P0.
- Every phase should have a goal, scope, dependency, and exit criterion.
