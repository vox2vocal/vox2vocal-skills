---
name: roadmap-prioritizer
description: Use only when the problem is deciding what to build first across phases, initiatives, features, domains, or ticket groups; prioritize using product strategy, evidence, dependencies, risk, validation needs, and tradeoffs rather than producing PRD/TRD content.
---

# Pipeline Role

- Receives: phase plan, PRD candidates, features, initiatives, or ticket groups.
- Produces: prioritized roadmap recommendation with rationale, tradeoffs, evidence gaps, risks, and validation steps.
- Locks: recommended order and rationale for what to do first, next, later, or not now.
- Hard boundary: do not rewrite strategy, PRD, TRD, or tickets; prioritize the candidates provided.

# Document Rules
- Use this only for prioritization, not as a mandatory step after every ticket draft.
- For cross-domain prioritization, recommended filename: `00_06_<product>-foundation-roadmap-prioritization.md`.
- For one-domain prioritization, recommended filename: `<domain-number>_09_<product>-<domain>-roadmap-prioritization.md`.
- Start the document at the top with: `문서 번호`, `문서 버전`, `작성일`, `상태`, `범위`, `적용 skill`, `도메인`, `스킬 단계`, `기반 문서`.
- `기반 문서`에는 반드시 파일명과 문서 버전을 함께 기록한다.
- Record candidate source documents as filename plus version.
- Include a Change Log table and keep evidence, assumptions, and tradeoffs separate.

# Use When
- the user needs ordering across multiple candidates.
- stakeholder pressure and user/business impact need to be separated.
- dependencies or risk should influence roadmap order.
# Decision Rules
- Choose the simplest useful framework: RICE, ICE, Kano, impact/effort, dependency-first, or risk-first.
- Prioritize explanation over false precision in scoring.
- Separate evidence-backed impact from opinion, urgency, and stakeholder pressure.
- Call out what should be validated before committing roadmap capacity.
- Do not turn prioritization into new product requirements or technical scope.
# Output Contract

Use Korean-first headings and write specialized terms and technical terms in Korean with English in parentheses for user-facing output. Example: 감사 이벤트 (AuditEvent), 접근 결정 로그 (AccessDecisionLog), 트랜잭션 아웃박스 (TransactionalOutbox).

```markdown
# 로드맵 우선순위 (Roadmap Prioritization)

## 추천 순서 (Recommended Order)

## 사용한 판단 기준 (Prioritization Method)

## 근거 (Rationale)

## 트레이드오프 (Tradeoffs)

## 근거 부족 영역 (Evidence Gaps)

## 리스크 (Risks)

## 다음 검증 단계 (Next Validation Steps)

## 변경 이력 (Change Log)
```

# Handoff Gate
- Use the recommendation to choose the next pm-context or phase-planner input.
- Route back to strategy or phase planning if candidates do not align with the target system or business goal.
# Quality Bar
- Roadmap order must reflect product strategy, dependencies, and validation path.
- Do not make every stakeholder request P0.
- The output should help the team say no or not yet.
