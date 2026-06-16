---
name: roadmap-prioritizer
description: Use to prioritize phases, initiatives, features, or ticket groups using product strategy, evidence, dependencies, risk, and validation needs.
---

# Pipeline Role

- Receives: phase plan, PRD candidates, features, initiatives, or ticket groups.
- Produces: prioritized roadmap recommendation with rationale, tradeoffs, evidence gaps, risks, and validation steps.
- Locks: recommended order and rationale for what to do first, next, later, or not now.
- Hard boundary: do not rewrite strategy, PRD, TRD, or tickets; prioritize the candidates provided.

# Use When
- the user needs ordering across multiple candidates.
- stakeholder pressure and user/business impact need to be separated.
- dependencies or risk should influence roadmap order.
# Decision Rules
- Choose the simplest useful framework: RICE, ICE, Kano, impact/effort, dependency-first, or risk-first.
- Prioritize explanation over false precision in scoring.
- Separate evidence-backed impact from opinion, urgency, and stakeholder pressure.
- Call out what should be validated before committing roadmap capacity.
# Output Contract

Use Korean-first headings with English in parentheses for user-facing output.

```markdown
# 로드맵 우선순위 (Roadmap Prioritization)

## 추천 순서 (Recommended Order)

## 사용한 판단 기준 (Prioritization Method)

## 근거 (Rationale)

## 트레이드오프 (Tradeoffs)

## 근거 부족 영역 (Evidence Gaps)

## 리스크 (Risks)

## 다음 검증 단계 (Next Validation Steps)
```

# Handoff Gate
- Use the recommendation to choose the next pm-context or phase-planner input.
- Route back to strategy or phase planning if candidates do not align with the target system or business goal.
# Quality Bar
- Roadmap order must reflect product strategy, dependencies, and validation path.
- Do not make every stakeholder request P0.
- The output should help the team say no or not yet.
