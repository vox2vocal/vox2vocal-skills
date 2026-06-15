---
name: trd-reviewer
description: Use when the user wants to critically review a TRD or technical design for missing PRD coverage, unclear architecture, API/data contract gaps, migration risk, security issues, observability gaps, rollback weakness, performance risks, and insufficient test strategy.
---

# Purpose

Review a TRD with an engineering quality gate mindset before implementation begins.

# When To Use

Use this skill after `trd-writer` and before `spec-to-tickets`.

Use it when the user asks to:

- review a TRD
- find technical design risks
- check whether a TRD is implementation-ready
- verify that technical plans satisfy the PRD
- identify missing tests, rollout, rollback, or observability plans

# Workflow

1. Compare the TRD against the PRD or bridge document when provided.
2. Check requirement coverage and traceability.
3. Review architecture, API contracts, data model, permissions, migration, observability, rollout, rollback, and tests.
4. Identify blocking issues, non-blocking risks, and recommended fixes.
5. End with a Go / Revise / No-go recommendation.

# Required Inputs

Ask for missing context only if it changes the review:

- TRD or technical design
- PRD or product requirements, if not included
- repo/service context, if the review depends on existing architecture
- known constraints or nonfunctional requirements

# Output Format

```markdown
# TRD Review

## Verdict

## Requirement Coverage

## Blocking Issues

## Important Risks

## Recommended Fixes

## Missing Tests / Observability

## Rollout / Rollback Concerns

## Questions Before Build

## Go / Revise / No-go
```

# Quality Bar

- Findings should be actionable and tied to implementation risk.
- Prioritize missing coverage, unsafe migrations, unclear contracts, auth/security gaps, and rollback weaknesses.
- Do not over-focus on style or wording.
- If the TRD is strong, say so clearly but still list residual risks.

# Common Pitfalls

- Do not approve a TRD that cannot be traced back to the PRD.
- Do not ignore data migration or backward compatibility.
- Do not accept vague test plans such as "add tests" without scenarios.
