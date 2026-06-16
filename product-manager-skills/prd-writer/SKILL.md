---
name: prd-writer
description: Use to write an engineering-handoff-ready PRD from a product brief, phase candidate, feature request, customer problem, or discovery notes.
---

# Pipeline Role

- Receives: product brief, phase plan slice, discovery notes, or validated product problem.
- Produces: PRD that defines what to build and why, without deciding technical implementation.
- Locks: problem, goals, non-goals, scope, requirements, acceptance criteria, metrics, risks, dependencies, assumptions, and open questions.
- Hard boundary: do not define technical architecture, API schemas, database changes, or development tickets.

# Use When
- the user asks to draft, formalize, or refine a PRD.
- a product brief is ready for design/engineering handoff.
- a phase needs a PRD that constrains scope and success criteria.
# Decision Rules
- Anchor the PRD to the upstream phase, target user, and product goal.
- Separate goals from shipped artifacts and non-goals from later opportunities.
- Requirements must describe observable product behavior, not implementation choices.
- Success metrics should include baseline, target, and guardrail when possible; otherwise call out the metric gap.
# Output Contract

Use Korean-first headings with English in parentheses for user-facing output.

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

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Continue to prd-reviewer after drafting.
- Route back to pm-context when the PRD relies on unresolved user, problem, metric, or scope assumptions.
# Quality Bar
- The PRD must make what to build and what not to build unambiguous.
- Acceptance criteria must be objectively testable.
- Do not invent evidence, baseline metrics, constraints, or stakeholder decisions.
