---
name: feature-definition-reviewer
description: Use to critically review a feature definition or feature-definer output for PRD traceability, service surface separation, MVP scope control, behavior clarity, business rules, states, permissions, edge cases, dependencies, measurable success signals, and readiness before page-flow-planner.
---

# Pipeline Role

- Receives: feature definition, feature-definer output, related PRD, phase plan, or product brief.
- Produces: readiness review with blockers, scope risks, behavior gaps, fixes, questions, and Go/Revise/No-go recommendation.
- Locks: whether feature behavior is stable enough to proceed to page-flow-planner or TRD preparation.
- Hard boundary: do not rewrite the full feature definition unless explicitly asked; do not plan pages, UI layout, technical design, or tickets.

# Use When

- a feature definition was produced by feature-definer and needs critical review.
- MVP, Later, and Out-of-scope boundaries may be weak or inflated.
- feature behavior, business rules, states, permissions, edge cases, dependencies, or success signals may be missing.
- the team is about to move from feature definition to page flow, TRD bridge, or ticket planning.

# Decision Rules

- Lead with blockers before summary or polish feedback.
- Review against the PRD, phase plan, or product brief when provided; if source context is missing, flag traceability as a review limitation.
- Check whether every MVP feature has user action, product behavior, business rule, permission/role, state, edge case, dependency, and success signal.
- Check whether every MVP feature declares a service surface such as Admin Service, User App, Shared, or Cross-Service.
- Flag admin/user app responsibilities that are blended without a named cross-service handoff.
- Treat page names, UI components, implementation tasks, or architecture choices inside the feature definition as scope drift unless they are necessary product behavior.
- Separate missing behavior from weak wording: missing states, permissions, edge cases, dependencies, or measurement are usually blockers before page planning.
- Challenge MVP inflation: desirable, speculative, or unvalidated features should move to Later or Out of Scope.
- Classify each issue by severity and explain product, design, or delivery impact.

# Output Contract

Use Korean-first headings with English in parentheses for user-facing output.

```markdown
# 기능 정의 리뷰 (Feature Definition Review)

## 판정 (Verdict)

## 차단 이슈 (Blocking Issues)

## 범위 검토 (Scope Review)

## 서비스 영역 검토 (Service Surface Review)

## PRD 추적성 (PRD Traceability)

## 동작 / 규칙 커버리지 (Behavior / Rule Coverage)

## 상태 / 권한 / 예외 검토 (States / Permissions / Edge Cases)

## 의존성 / 성공 신호 (Dependencies / Success Signals)

## 권장 수정사항 (Recommended Fixes)

## 페이지 기획 전 질문 (Questions Before Page Planning)

## 진행 / 수정 / 중단 (Go / Revise / No-go)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate

- Continue to page-flow-planner only when verdict is Go or Revise-with-minor-fixes and MVP feature behavior is stable.
- Route back to feature-definer when feature boundaries, service surface, behavior, rules, states, permissions, edge cases, dependencies, or success signals need material revision.
- Route back to prd-reviewer or prd-writer when the PRD cannot support stable feature boundaries.
- Route back to phase-planner when MVP/P0 scope is too broad or phase sequencing is unstable.

# Quality Bar

- The review must protect the team from designing pages around ambiguous or unbounded behavior.
- Do not approve a feature definition that leaves Admin Service and User App responsibilities mixed together.
- Every blocker should include a concrete fix, decision owner, or upstream skill to revisit.
- Do not approve a feature definition that turns every desirable idea into MVP.
- Do not accept success signals that cannot be observed, measured, or tested.
