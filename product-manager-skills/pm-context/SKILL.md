---
name: pm-context
description: Use as the PRD-readiness gate when a phase, feature, or product idea needs a concise brief with user, problem, goal, evidence, constraints, assumptions, risks, and next skill.
---

# Pipeline Role

- Receives: phase-plan PRD candidate, product idea, stakeholder request, or fuzzy feature request.
- Produces: product brief that determines whether PRD writing can start.
- Locks: target user, problem, goal, evidence, constraints, success criteria, assumptions, and risks for one PRD candidate.
- Hard boundary: do not draft the PRD, define full feature behavior, pages, tickets, or TRD.

# Use When
- the user asks for PRD/product help but the brief is not yet build-ready.
- a phase plan has selected a PRD candidate and needs a focused brief.
- the prompt mixes user problem, solution, business goal, and constraints.
# Decision Rules
- Ask only 3-5 questions that change scope, success metrics, or build/no-build decisions.
- Separate user pain from stakeholder preference and evidence from opinion.
- If a proposed solution is not justified by the problem, name the gap.
- Mark unknowns as assumptions or open questions; do not fill them with confident guesses.
# Output Contract

Use Korean-first headings with English in parentheses for user-facing output.

```markdown
# 제품 브리프 (Product Brief)

## 브리프 요약 (Brief Summary)

## 대상 사용자 (Target Users)

## 문제 (Problem)

## 목표 (Goal)

## 성공 기준 (Success Criteria)

## 제약 조건 (Constraints)

## 확인된 사실 (Known Facts)

## 가정 (Assumptions)

## 리스크 (Risks)

## PRD 작성 전 질문 (Questions Before PRD)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Continue to prd-writer when user, problem, goal, success criteria, and constraints are explicit enough.
- Route back to phase-planner when the PRD candidate is too broad or not aligned to MVP/P0.
# Quality Bar
- The brief must be short enough to serve as PRD input.
- A PRD should not start if the user, problem, or success criteria are missing.
- Do not let the requested solution replace problem definition.
