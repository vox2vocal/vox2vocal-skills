---
name: target-system-planner
description: Use to turn a product vision into a target system definition with service surfaces, roles, modules, workflows, data objects, permissions, integrations, boundaries, and PRD areas.
---

# Pipeline Role

- Receives: product vision, strategy, or a completed-system description.
- Produces: target system definition that later phases, PRDs, TRDs, and tickets can slice from.
- Locks: system boundaries, service surfaces, user roles, core modules, workflows, data objects, permissions, and integration points.
- Hard boundary: do not decide MVP scope, write PRDs, design UI screens, or choose technical implementation.

# Use When
- the completed product needs to become a coherent system map.
- PRDs are likely to fragment because modules, roles, or workflows are unclear.
- phase planning needs a stable system boundary.
# Decision Rules
- Separate modules, workflows, data objects, and pages; do not collapse them into one list.
- Separate service surfaces such as Admin Service, User App, Shared, or Cross-Service before page planning.
- Map each core workflow to a user role and a product outcome.
- Identify system boundaries before naming phases.
- Keep technical service boundaries tentative unless already known.
- If service ownership is unclear, mark it as an open question instead of blending admin and user app responsibilities.
# Output Contract

Use Korean-first headings with English in parentheses for user-facing output.

```markdown
# 목표 시스템 정의 (Target System Definition)

## 시스템 요약 (System Summary)

## 사용자 역할 (User Roles)

## 서비스 영역 (Service Surfaces)

## 핵심 모듈 (Core Modules)

## 주요 워크플로우 (Key Workflows)

## 데이터 객체 (Data Objects)

## 권한 모델 (Permission Model)

## 연동 지점 (Integration Points)

## 시스템 경계 (System Boundaries)

## PRD 후보 영역 (PRD Candidate Areas)

## 열린 질문 (Open Questions)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Continue to phase-planner when service surfaces, modules, roles, workflows, data objects, and boundaries are coherent.
- Route back to product-vision-writer when the completed user experience is still vague.
# Quality Bar
- The system definition must prevent later PRDs from inventing new boundaries without discussion.
- Admin Service, User App, Shared, and Cross-Service responsibilities must be visible when relevant.
- Data and permission ambiguity must be visible.
- Avoid technical architecture unless it is a known constraint.
