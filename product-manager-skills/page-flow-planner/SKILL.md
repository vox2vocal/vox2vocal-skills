---
name: page-flow-planner
description: Use to turn Domain-Level feature definitions into service-surface-separated interaction surface/flow plans, deciding whether each touchpoint should be a Page, Modal, Drawer, Sheet, Popover, Inline Panel, Toast, or Wizard, with user flows, navigation, states, data needs, CTAs, cross-service handoffs, and surface-feature mapping before page-flow-reviewer.
---

# Pipeline Role

- Receives: feature definition, PRD, or product requirements that have clear behavior and service surface context.
- Produces: interaction surface and flow plan that separates Admin Service, User App, Shared, and Cross-Service flows.
- Locks: service surface split, interaction surface type, primary flows, alternate flows, required data, states, navigation, and surface-feature matrix.
- Hard boundary: do not create visual mockups, choose final UI style, write TRD, or create tickets.

# Document Rules
- Treat this as a Domain-Level Doc and keep the assigned domain number stable.
- Recommended filename: `<domain-number>_04_<product>-<domain>-page-flow-plan.md`.
- Start the document at the top with: `문서 번호`, `문서 버전`, `작성일`, `상태`, `범위`, `적용 skill`, `도메인`, `스킬 단계`, `기반 문서`.
- `기반 문서`에는 반드시 파일명과 문서 버전을 함께 기록한다.
- Use `v0.1`, `v0.2`, ... for document versions, not dates; use `v1.0` only when locked for implementation/design reference.
- Record each base document as filename plus version, especially feature definition and feature definition review.
- Include a Change Log table and keep Known Facts, Decisions, Assumptions, and Open Questions separate.

# Use When
- feature behavior is clear and needs to become screens/pages and flows.
- the team needs page, modal, drawer, sheet, inline, toast, or wizard responsibilities before design or engineering.
- requirements risk becoming tickets without user-flow coverage.
- admin pages and user app pages may diverge into separate services or products.
# Decision Rules
- Start by classifying service surfaces: Admin Service, User App, Shared, and Cross-Service.
- If Admin Service and User App both exist, produce separate sections for each surface instead of one blended page list.
- Do not default every touchpoint to Page; decide the interaction surface type first.
- Every MVP feature should map to at least one interaction surface or flow step.
- Every interaction surface needs service surface, surface type, owner role, purpose, primary action, required data, states, and entry/exit behavior.
- Use Page when the work needs a route, deep link, browser back/refresh behavior, long task, complex permissions, or persistent state.
- Use Modal for short blocking decisions or small forms that depend on the current context; avoid Modal for long forms, multi-step work, or shareable destinations.
- Use Drawer or Sheet for contextual detail, side editing, filters, or mobile-friendly temporary surfaces that should preserve the parent context.
- Use Popover, Menu, or Inline Panel for lightweight contextual choice, preview, comparison, or local controls.
- Use Toast or Banner only for feedback/status that does not require a complex user decision; use a stronger surface when recovery action is required.
- Use Wizard only when ordered steps are essential; if users need deep linking, save/resume, or complex branching, prefer separate Pages.
- Modal, Drawer, Sheet, and Wizard surfaces must define entry trigger, dismissal/exit path, unsaved-change behavior, focus/keyboard/accessibility state, and mobile alternative.
- Cross-service flows must name the trigger, handoff data, source surface, destination surface, and failure/permission states.
- Prefer fewer pages with clear states over unnecessary page sprawl.
- Do not hide critical empty, loading, error, or permission states.
- If the service surface is unclear, ask an open question rather than silently assigning a page.
- Keep interaction surface decisions separate from visual design and technical architecture.
# Output Contract

Use Korean-first headings with English in parentheses for user-facing output.

```markdown
# 인터랙션 표면 / 플로우 기획 (Interaction Surface / Flow Plan)

## 플로우 요약 (Flow Summary)

## 서비스 영역 분리 (Service Surface Split)
- 관리자 서비스 (Admin Service):
- 사용자 앱 (User App):
- 공통 / 연동 (Shared / Cross-Service):
- 분리 근거 (Split Rationale):

## 표면 타입 판단 기준 (Surface Type Decision Rationale)

## 관리자 서비스 인터랙션 표면 / 플로우 (Admin Service Interaction Surfaces / Flows)

### <표면명 (Surface Name)>
- 서비스 영역 (Service Surface):
- 표현 형태 (Surface Type): Page / Modal / Drawer / Sheet / Popover / Inline Panel / Toast / Wizard
- 라우팅 필요 여부 (Route Required):
- URL 공유 / 딥링크 필요 여부 (Shareable / Deep Link):
- 작업 무게 (Task Weight): Light / Medium / Heavy
- 담당 역할 (Owner Role):
- 목적 (Purpose):
- 주요 행동 (Primary Action):
- 보조 행동 (Secondary Actions):
- 필요한 데이터 (Required Data):
- 주요 구성요소 (Key Components):
- 진입 방식 (Entry Point):
- 종료 / 닫기 방식 (Exit / Dismissal):
- 상태 보존 필요 여부 (State Persistence):
- 모바일 대체 패턴 (Mobile Alternative):
- 빈 상태 (Empty State):
- 로딩 상태 (Loading State):
- 에러 상태 (Error State):
- 권한 상태 (Permission State):
- 이동 경로 (Navigation):
- 성공 신호 (Success Signal):

## 사용자 앱 인터랙션 표면 / 플로우 (User App Interaction Surfaces / Flows)

### <표면명 (Surface Name)>
- 서비스 영역 (Service Surface):
- 표현 형태 (Surface Type): Page / Modal / Drawer / Sheet / Popover / Inline Panel / Toast / Wizard
- 라우팅 필요 여부 (Route Required):
- URL 공유 / 딥링크 필요 여부 (Shareable / Deep Link):
- 작업 무게 (Task Weight): Light / Medium / Heavy
- 담당 역할 (Owner Role):
- 목적 (Purpose):
- 주요 행동 (Primary Action):
- 보조 행동 (Secondary Actions):
- 필요한 데이터 (Required Data):
- 주요 구성요소 (Key Components):
- 진입 방식 (Entry Point):
- 종료 / 닫기 방식 (Exit / Dismissal):
- 상태 보존 필요 여부 (State Persistence):
- 모바일 대체 패턴 (Mobile Alternative):
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

## 표면 x 기능 x 서비스 매트릭스 (Surface x Feature x Service Matrix)

## UX 리스크 (UX Risks)

## 열린 질문 (Open Questions)

## 변경 이력 (Change Log)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Continue to page-flow-reviewer when service surfaces, interaction surface types, states, data needs, and flows are stable.
- Route back to feature-definer when unclear feature behavior prevents page planning.
- Route back to target-system-planner when Admin Service, User App, Shared, or Cross-Service ownership cannot be determined.
# Quality Bar
- The plan must be implementation-ready but not a visual design.
- Admin Service and User App interaction surfaces must be distinguishable at a glance.
- Surface type decisions must prevent modal-heavy or page-heavy overplanning.
- State coverage matters as much as the happy path.
- Navigation must explain where users come from and what happens next.
- Cross-service handoffs must not be hidden inside a generic flow description.
