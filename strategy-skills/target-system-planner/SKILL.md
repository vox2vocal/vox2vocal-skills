---
name: target-system-planner
description: Use for the Product-Level target-system-definition document after product-vision to map service surfaces, roles, modules, workflows, data objects, permissions, integrations, boundaries, and PRD candidate areas; use domain number 00.
---

# Pipeline Role

- Receives: product vision, strategy, or a completed-system description.
- Produces: target system definition that later phases, PRDs, TRDs, and tickets can slice from.
- Locks: system boundaries, service surfaces, user roles, core modules, workflows, data objects, permissions, and integration points.
- Hard boundary: do not decide MVP scope, write PRDs, design UI screens, or choose technical implementation.

# Document Rules
- Treat this as a Product-Level Doc and use domain number `00`.
- Recommended filename: `00_04_<product>-foundation-target-system-definition.md`.
- Start the document at the top with: `문서 번호`, `문서 버전`, `작성일`, `상태`, `범위`, `적용 skill`, `도메인`, `스킬 단계`, `기반 문서`.
- `기반 문서`에는 반드시 파일명과 문서 버전을 함께 기록한다.
- Use `v0.1`, `v0.2`, ... for document versions, not dates; use `v1.0` only when locked as system reference.
- Record each base document as filename plus version, especially `product-vision`.
- Include a Change Log table and keep Known Facts, Decisions, Assumptions, and Open Questions separate.

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
- Do not invent modules, permissions, or data objects when the product vision does not justify them.
# Output Contract

Use Korean-first headings and important domain/technical terms with English in parentheses for user-facing output. Example: 감사 이벤트 (AuditEvent), 접근 결정 로그 (AccessDecisionLog), 트랜잭션 아웃박스 (TransactionalOutbox).

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

## 변경 이력 (Change Log)

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
