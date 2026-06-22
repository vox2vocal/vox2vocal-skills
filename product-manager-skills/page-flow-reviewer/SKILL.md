---
name: page-flow-reviewer
description: Use to critically review a page/flow plan or page-flow-planner output for interaction surface type choices, service surface separation, Admin Service vs User App boundaries, surface-feature coverage, states, navigation, data needs, cross-service handoffs, UX risks, and readiness before prd-to-trd-bridge.
---

# Pipeline Role

- Receives: interaction surface/flow plan, feature definition, related PRD, and service surface context.
- Produces: page-flow readiness review with blockers, surface separation risks, coverage gaps, fixes, questions, and Go/Revise/No-go recommendation.
- Locks: whether the page/flow plan can proceed to prd-to-trd-bridge without losing service ownership or user journey clarity.
- Hard boundary: do not rewrite the full page plan unless explicitly asked; do not create visual mockups, final UI style, TRD, or tickets.

# Use When

- a page/flow plan was produced by page-flow-planner and needs critical review.
- Admin Service and User App pages may be mixed together or expanding into separate services.
- interaction surface type, state coverage, navigation, data needs, or surface-feature mapping may be incomplete.
- the team is about to move from page-flow planning to prd-to-trd-bridge, TRD, design, or tickets.

# Decision Rules

- Lead with blockers before summary or style feedback.
- Review against the feature definition and PRD when provided; if source context is missing, flag traceability as a review limitation.
- Check that Admin Service, User App, Shared, and Cross-Service areas are explicitly separated when relevant.
- Reject a blended interaction surface inventory when admin and user app surfaces have different roles, permissions, data, or lifecycle.
- Flag plans where every touchpoint is modeled as Page without surface type rationale.
- Verify every MVP feature maps to a Page, Modal, Drawer, Sheet, Popover, Inline Panel, Toast, Wizard, flow step, or explicit non-surface product behavior.
- Verify every interaction surface declares service surface, surface type, owner role, purpose, primary action, required data, state coverage, entry/exit behavior, navigation, and success signal.
- Challenge Modal/Drawer/Sheet/Wizard choices that lack dismissal, unsaved-change, focus/keyboard/accessibility, or mobile alternative behavior.
- Challenge Page choices when a lightweight Modal, Drawer, Inline Panel, Popover, Toast, or Banner would better preserve context.
- Check empty, loading, error, permission, alternate, and edge flows with the same seriousness as the happy path.
- Cross-service handoffs must name trigger, source surface, destination surface, handoff data, failure states, and permission states.
- Treat visual styling, component choices, and implementation details as secondary unless they expose a product or flow risk.

# Output Contract

Use Korean-first headings with English in parentheses for user-facing output.

```markdown
# 페이지 / 플로우 리뷰 (Page / Flow Review)

## 판정 (Verdict)

## 차단 이슈 (Blocking Issues)

## 서비스 영역 분리 검토 (Service Surface Separation Review)

## 표면 타입 판단 검토 (Surface Type Decision Review)

## 표면 / 기능 커버리지 (Surface / Feature Coverage)

## 상태 / 권한 / 내비게이션 검토 (States / Permissions / Navigation Review)

## 공통 / 연동 플로우 검토 (Shared / Cross-Service Flow Review)

## 데이터 / 성공 신호 검토 (Data / Success Signal Review)

## 권장 수정사항 (Recommended Fixes)

## TRD 전 질문 (Questions Before TRD)

## 진행 / 수정 / 중단 (Go / Revise / No-go)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate

- Continue to prd-to-trd-bridge only when verdict is Go or Revise-with-minor-fixes and service surface separation is clear.
- Route back to page-flow-planner when surface type decisions, states, navigation, data needs, or cross-service handoffs need material revision.
- Route back to feature-definition-reviewer or feature-definer when feature behavior or service surface ownership is unclear.
- Route back to target-system-planner when Admin Service, User App, Shared, or Cross-Service boundaries are not stable.

# Quality Bar

- The review must prevent Admin Service and User App flows from becoming one ambiguous document.
- The review must prevent every user touchpoint from being over-modeled as a standalone Page.
- Every blocker should include a concrete fix, decision owner, or upstream skill to revisit.
- Do not approve a plan where surface states or permission behavior are implied but not written.
- Do not require visual design polish; focus on flow, ownership, state, and handoff risk.
