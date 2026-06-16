---
name: spec-to-tickets
description: Use to turn approved PRD, feature/page plan, TRD, and risk checks into Markdown development ticket drafts with build order, acceptance criteria, tests, dependencies, and traceability.
---

# Pipeline Role

- Receives: approved PRD, feature definition, page/flow plan, TRD, API/data contracts, and risk check.
- Produces: Markdown ticket drafts ready for Jira, Linear, GitHub Issues, or manual engineering intake.
- Locks: epics, stories, acceptance criteria, edge cases, test scenarios, dependencies, traceability, and suggested build order.
- Hard boundary: do not create issues in external tools unless explicitly asked; do not change product or technical scope.

# Use When
- PRD and TRD are reviewed enough to break down work.
- the team needs implementation tickets with product and technical traceability.
- feature/page behavior and technical approach are stable.
# Decision Rules
- Every ticket should trace to PRD requirement and, when relevant, TRD section.
- Split stories that mix unrelated behavior, risk areas, or ownership boundaries.
- Acceptance criteria must be testable and include negative/error states when relevant.
- Build order should respect dependencies, risk reduction, and validation path.
# Output Contract

Use Korean-first headings with English in parentheses for user-facing output.

```markdown
# 개발 티켓 초안 (Development Ticket Drafts)

## 에픽 (Epic)

## 스토리 (Stories)

### 스토리 (Story): <제목 (Title)>
- 목적 (Purpose):
- PRD 추적성 (PRD Traceability):
- TRD 추적성 (TRD Traceability):
- 구현 범위 (Implementation Scope):
- 제외 범위 (Out of Scope):

## 인수 조건 (Acceptance Criteria)

## 예외 케이스 (Edge Cases)

## 테스트 시나리오 (Test Scenarios)

## 의존성 (Dependencies)

## 권장 빌드 순서 (Suggested Build Order)

## 열린 질문 (Open Questions)
```

# Handoff Gate
- Continue to roadmap-prioritizer when ticket groups or phases need sequencing.
- Route back to PRD/TRD skills if tickets require new scope or unresolved design decisions.
# Quality Bar
- Tickets must be implementation-ready without silently changing PRD/TRD scope.
- Traceability matters as much as task clarity.
- Do not create giant tickets that hide validation, risk, or dependency work.
