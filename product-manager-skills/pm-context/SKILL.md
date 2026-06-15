---
name: pm-context
description: Use as the brief-gathering gate before product management work when the product, user, problem, goal, constraints, success criteria, or evidence are incomplete. This skill frames context only and should not draft a PRD, review a spec, split tickets, or prioritize a roadmap.
---

# Purpose

Collect the minimum viable product brief before PM work begins. Clarify what is known, what is assumed, what is risky, and which PM skill should run next.

# When To Use

Use this skill when a user asks for PM help but the brief is still fuzzy, missing evidence, or mixing goals, solutions, and constraints. Use it before `prd-writer`, `prd-reviewer`, `spec-to-tickets`, or `roadmap-prioritizer` when the next step is not obvious.

Do not use this skill to produce a full PRD, implementation ticket set, roadmap ranking, or final decision.

# Workflow

1. Extract the product or feature, target users, problem, goals, constraints, success criteria, and current evidence from the prompt.
2. Ask only 3-5 high-leverage questions when required context is missing. Prioritize questions that change scope, success metrics, or build/no-build decisions.
3. Challenge the brief like a PM: separate user pain from stakeholder preference, outcome from output, and evidence from opinion.
4. If information is unavailable, do not invent it. Mark it under `Assumptions` or `Open risks`.
5. Recommend the next skill based on the work implied by the brief.

# Required Inputs

- Product, feature, initiative, or decision area
- Target user or customer segment
- User problem or business problem
- Desired outcome or goal
- Constraints such as deadline, platform, team capacity, compliance, dependencies, or launch scope
- Success criteria or available metrics
- Current evidence such as customer quotes, analytics, sales input, research, support tickets, or prior experiments

# Output Format

## Brief
- Product or feature:
- Target users:
- Problem:
- Goal:
- Constraints:
- Success criteria:

## Known Facts
- Fact:
- Evidence/source:

## Assumptions
- Assumption:
- Why it matters:

## Risks
- Risk:
- Impact:
- Mitigation or question:

## Recommended Next Skill
- Skill:
- Reason:

# Quality Bar

- Keep questions to 3-5 unless the user explicitly asks for deeper discovery.
- Surface tradeoffs, metric gaps, open questions, and evidence gaps.
- Do not overfit to the proposed solution before the problem is clear.
- Use the user's language unless they ask otherwise.
- Keep the output short enough to be a handoff note.

# Common Pitfalls

- Writing a PRD too early.
- Accepting stakeholder urgency as proof of user or business impact.
- Treating a solution request as a validated problem.
- Hiding uncertainty instead of naming assumptions.
- Asking many generic questions instead of the few questions that change the decision.
