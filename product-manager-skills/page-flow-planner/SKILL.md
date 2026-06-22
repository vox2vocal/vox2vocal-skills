---
name: page-flow-planner
description: Use to turn feature definitions into service-surface-separated page inventory, user flows, navigation, page states, data needs, CTAs, cross-service handoffs, and page-feature mapping before design or ticket breakdown.
---

# Pipeline Role

- Receives: feature definition, PRD, or product requirements that have clear behavior and service surface context.
- Produces: page and flow plan that separates Admin Service, User App, Shared, and Cross-Service flows.
- Locks: service surface split, page inventory, primary flows, alternate flows, required data, states, navigation, and page-feature matrix.
- Hard boundary: do not create visual mockups, choose final UI style, write TRD, or create tickets.

# Use When
- feature behavior is clear and needs to become screens/pages and flows.
- the team needs page responsibilities, states, and navigation before design or engineering.
- requirements risk becoming tickets without user-flow coverage.
- admin pages and user app pages may diverge into separate services or products.
# Decision Rules
- Start by classifying service surfaces: Admin Service, User App, Shared, and Cross-Service.
- If Admin Service and User App both exist, produce separate sections for each surface instead of one blended page list.
- Every MVP feature should map to at least one page or flow step.
- Every page needs service surface, owner role, purpose, primary action, required data, states, and navigation.
- Cross-service flows must name the trigger, handoff data, source surface, destination surface, and failure/permission states.
- Prefer fewer pages with clear states over unnecessary page sprawl.
- Do not hide critical empty, loading, error, or permission states.
- If the service surface is unclear, ask an open question rather than silently assigning a page.
# Output Contract

Use Korean-first headings with English in parentheses for user-facing output.

```markdown
# 페이지 / 플로우 기획 (Page / Flow Plan)

## 플로우 요약 (Flow Summary)

## 서비스 영역 분리 (Service Surface Split)
- 관리자 서비스 (Admin Service):
- 사용자 앱 (User App):
- 공통 / 연동 (Shared / Cross-Service):
- 분리 근거 (Split Rationale):

## 관리자 서비스 페이지 / 플로우 (Admin Service Pages / Flows)

### <페이지명 (Page Name)>
- 서비스 영역 (Service Surface):
- 담당 역할 (Owner Role):
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

## 사용자 앱 페이지 / 플로우 (User App Pages / Flows)

### <페이지명 (Page Name)>
- 서비스 영역 (Service Surface):
- 담당 역할 (Owner Role):
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

## 공통 / 연동 플로우 (Shared / Cross-Service Flows)
- 트리거 (Trigger):
- 출발 서비스 (Source Surface):
- 도착 서비스 (Destination Surface):
- 전달 데이터 (Handoff Data):
- 실패 / 권한 상태 (Failure / Permission States):

## 주요 사용자 흐름 (Primary User Flows)

## 대체 / 예외 흐름 (Alternate / Edge Flows)

## 페이지 x 기능 x 서비스 매트릭스 (Page x Feature x Service Matrix)

## UX 리스크 (UX Risks)

## 열린 질문 (Open Questions)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Continue to page-flow-reviewer when service surfaces, pages, states, data needs, and flows are stable.
- Route back to feature-definer when unclear feature behavior prevents page planning.
- Route back to target-system-planner when Admin Service, User App, Shared, or Cross-Service ownership cannot be determined.
# Quality Bar
- The plan must be implementation-ready but not a visual design.
- Admin Service and User App pages must be distinguishable at a glance.
- State coverage matters as much as the happy path.
- Navigation must explain where users come from and what happens next.
- Cross-service handoffs must not be hidden inside a generic flow description.
