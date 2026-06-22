---
name: pm-context
description: Use as the Domain-Level PRD-readiness gate before prd-writer when a phase, feature, or product idea needs a concise domain brief with target user, problem, goal, success criteria, constraints, known facts, assumptions, risks, and questions; do not draft the PRD.
---

# Pipeline Role

- Receives: phase-plan PRD candidate, product idea, stakeholder request, or fuzzy feature request.
- Produces: product brief that determines whether PRD writing can start.
- Locks: target user, problem, goal, evidence, constraints, success criteria, assumptions, and risks for one PRD candidate.
- Hard boundary: do not draft the PRD, define full feature behavior, pages, tickets, or TRD.

# Document Rules
- Treat this as a Domain-Level Doc for one feature/domain such as `account-permission`, `song-catalog`, `recording`, `preview-generation`, `voice-analysis`, `deletion-retention`, or `notification`.
- Use the assigned domain number (`01+`) and do not rename existing domain documents unless the user explicitly asks.
- Recommended filename: `<domain-number>_01_<product>-<domain>-prd-brief.md`.
- Start the document at the top with: `문서 번호`, `문서 버전`, `작성일`, `상태`, `범위`, `적용 skill`, `도메인`, `스킬 단계`, `기반 문서`.
- `기반 문서`에는 반드시 파일명과 문서 버전을 함께 기록한다.
- Use `v0.1`, `v0.2`, ... for document versions, not dates; use `v1.0` only when locked as implementation reference.
- Record each base document as filename plus version, including product-level foundation docs or phase plan when available.
- Include a Change Log table and keep Known Facts, Decisions, Assumptions, and Open Questions separate.

# Use When
- the user asks for PRD/product help but the brief is not yet build-ready.
- a phase plan has selected a PRD candidate and needs a focused brief.
- the prompt mixes user problem, solution, business goal, and constraints.
# Decision Rules
- Ask only 3-5 questions that change scope, success metrics, or build/no-build decisions.
- Separate user pain from stakeholder preference and evidence from opinion.
- If a proposed solution is not justified by the problem, name the gap.
- Mark unknowns as assumptions or open questions; do not fill them with confident guesses.
- Reuse user-confirmed decisions as Known Facts or Decisions instead of asking again.
# Output Contract

Use Korean-first headings and important domain/technical terms with English in parentheses for user-facing output. Example: 감사 이벤트 (AuditEvent), 접근 결정 로그 (AccessDecisionLog), 트랜잭션 아웃박스 (TransactionalOutbox).

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

## 변경 이력 (Change Log)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Continue to prd-writer when user, problem, goal, success criteria, and constraints are explicit enough.
- Route back to phase-planner when the PRD candidate is too broad or not aligned to MVP/P0.
# Quality Bar
- The brief must be short enough to serve as PRD input.
- A PRD should not start if the user, problem, or success criteria are missing.
- Do not let the requested solution replace problem definition.
