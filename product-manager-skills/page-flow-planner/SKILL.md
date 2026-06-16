---
name: page-flow-planner
description: Use to turn feature definitions into page inventory, user flows, navigation, page states, data needs, CTAs, and page-feature mapping before design or ticket breakdown.
---

# Pipeline Role

- Receives: feature definition, PRD, or product requirements that have clear behavior.
- Produces: page and flow plan that shows how users will complete the product workflow.
- Locks: page inventory, primary flows, alternate flows, required data, states, navigation, and page-feature matrix.
- Hard boundary: do not create visual mockups, choose final UI style, write TRD, or create tickets.

# Use When
- feature behavior is clear and needs to become screens/pages and flows.
- the team needs page responsibilities, states, and navigation before design or engineering.
- requirements risk becoming tickets without user-flow coverage.
# Decision Rules
- Every MVP feature should map to at least one page or flow step.
- Every page needs purpose, primary action, required data, states, and navigation.
- Prefer fewer pages with clear states over unnecessary page sprawl.
- Do not hide critical empty, loading, error, or permission states.
# Output Contract

Use Korean-first headings with English in parentheses for user-facing output.

```markdown
# 페이지 / 플로우 기획 (Page / Flow Plan)

## 플로우 요약 (Flow Summary)

## 페이지 목록 (Page Inventory)

### <페이지명 (Page Name)>
- 목적 (Purpose):
- 주요 행동 (Primary Action):
- 보조 행동 (Secondary Actions):
- 필요한 데이터 (Required Data):
- 주요 구성요소 (Key Components):
- 빈 상태 (Empty State):
- 로딩 상태 (Loading State):
- 에러 상태 (Error State):
- 권한 상태 (Permission State):
- 이동 경로 (Navigation):
- 성공 신호 (Success Signal):

## 주요 사용자 흐름 (Primary User Flow)

## 대체 / 예외 흐름 (Alternate / Edge Flows)

## 페이지 x 기능 매트릭스 (Page x Feature Matrix)

## UX 리스크 (UX Risks)

## 열린 질문 (Open Questions)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Continue to prd-to-trd-bridge when pages, states, data needs, and flows are stable.
- Route back to feature-definer when unclear feature behavior prevents page planning.
# Quality Bar
- The plan must be implementation-ready but not a visual design.
- State coverage matters as much as the happy path.
- Navigation must explain where users come from and what happens next.
