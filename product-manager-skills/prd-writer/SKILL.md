---
name: prd-writer
description: Use to write a Domain-Level engineering-handoff-ready PRD from pm-context, a product brief, phase candidate, feature request, customer problem, or discovery notes with goals, non-goals, scope, user stories, acceptance criteria, metrics, risks, dependencies, assumptions, and open questions.
---

# Pipeline Role

- Receives: product brief, phase plan slice, discovery notes, or validated product problem.
- Produces: PRD that defines what to build and why, without deciding technical implementation.
- Locks: problem, goals, non-goals, scope, requirements, acceptance criteria, metrics, risks, dependencies, assumptions, and open questions.
- Hard boundary: do not define technical architecture, API schemas, database changes, or development tickets.

# Document Rules
- Treat this as a Domain-Level Doc and keep the assigned domain number stable.
- Recommended filename: `<domain-number>_02_<product>-<domain>-prd.md`.
- Start the document at the top with: `문서 번호`, `문서 버전`, `작성일`, `상태`, `범위`, `적용 skill`, `도메인`, `스킬 단계`, `기반 문서`.
- `기반 문서`에는 반드시 파일명과 문서 버전을 함께 기록한다.
- Use `v0.1`, `v0.2`, ... for document versions, not dates; use `v1.0` only when locked for implementation.
- Record each base document as filename plus version, especially `prd-brief` and relevant product-level docs.
- Include a Change Log table and keep Known Facts, Decisions, Assumptions, and Open Questions separate.

# Use When
- the user asks to draft, formalize, or refine a PRD.
- a product brief is ready for design/engineering handoff.
- a phase needs a PRD that constrains scope and success criteria.
# Decision Rules
- Anchor the PRD to the upstream phase, target user, and product goal.
- Separate goals from shipped artifacts and non-goals from later opportunities.
- Requirements must describe observable product behavior, not implementation choices.
- Success metrics should include baseline, target, and guardrail when possible; otherwise call out the metric gap.
- Do not mix product requirements with technical decisions; route technical uncertainty to later bridge/TRD skills.
# Output Contract

Use Korean-first headings and important domain/technical terms with English in parentheses for user-facing output. Example: 감사 이벤트 (AuditEvent), 접근 결정 로그 (AccessDecisionLog), 트랜잭션 아웃박스 (TransactionalOutbox).

```markdown
# PRD (Product Requirements Document)

## 요약 (Executive Summary)

## 문제 정의 (Problem Statement)

## 대상 사용자 (Target Users)

## 목표 (Goals)

## 비목표 (Non-goals)

## 범위 (Scope)

## 사용자 스토리 (User Stories)

## 기능 요구사항 (Functional Requirements)

## 인수 조건 (Acceptance Criteria)

## 성공 지표 (Success Metrics)
- 기준선 (Baseline):
- 목표치 (Target):
- 보호 지표 (Guardrail):

## 리스크 (Risks)

## 의존성 (Dependencies)

## 가정 (Assumptions)

## 열린 질문 (Open Questions)

## 변경 이력 (Change Log)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Continue to prd-reviewer after drafting.
- Route back to pm-context when the PRD relies on unresolved user, problem, metric, or scope assumptions.
# Quality Bar
- The PRD must make what to build and what not to build unambiguous.
- Acceptance criteria must be objectively testable.
- Do not invent evidence, baseline metrics, constraints, or stakeholder decisions.
