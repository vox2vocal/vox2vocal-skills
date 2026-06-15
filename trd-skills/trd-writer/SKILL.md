---
name: trd-writer
description: Use when the user wants to create a Technical Requirements Document or technical design from a PRD, feature definition, page/flow plan, or PRD-to-TRD bridge, covering architecture, implementation approach, APIs, data model, permissions, observability, rollout, rollback, and test strategy.
---

# Purpose

Write an engineering-ready TRD that explains how the product requirements will be implemented safely and measurably.

# When To Use

Use this skill after `prd-to-trd-bridge` when product requirements are stable enough for technical planning.

Use it when the user asks to:

- write a TRD or technical design
- translate product requirements into implementation approach
- define architecture, API, data, permission, rollout, or testing plans
- prepare engineering handoff from a PRD

# Workflow

1. Identify the product requirements and success criteria that the TRD must satisfy.
2. Summarize the proposed technical approach and major architectural decisions.
3. Define changes by subsystem, such as frontend, backend, API, data, worker, infra, analytics, or auth.
4. Specify API and data contract changes at the right level of detail.
5. Define rollout, rollback, observability, and test strategy.
6. Call out technical risks, tradeoffs, alternatives considered, and open questions.

# Required Inputs

Ask only for missing information that materially changes the TRD:

- PRD or PRD-to-TRD bridge
- relevant architecture or repo/service context
- affected systems or surfaces
- known technical constraints or required technologies
- expected rollout constraints
- existing API/data contracts, if relevant

# Output Format

```markdown
# Technical Requirements Document

## Technical Summary

## Product Requirement Traceability

## Architecture / Approach

## Frontend Changes

## Backend / Service Changes

## API Contract

## Data Model / Migration

## Auth / Permissions

## Observability

## Performance / Security Considerations

## Rollout / Rollback Plan

## Test Plan

## Risks and Tradeoffs

## Alternatives Considered

## Open Technical Questions
```

# Quality Bar

- The TRD must map back to PRD requirements.
- Technical decisions must include rationale and tradeoffs.
- API, data, auth, rollout, rollback, observability, and tests must not be omitted when relevant.
- Unknowns must be listed as open technical questions, not silently assumed.
- Avoid over-engineering; choose the smallest design that satisfies the PRD and risks.

# Common Pitfalls

- Do not rewrite the PRD as a TRD.
- Do not hide major technical choices behind generic language.
- Do not create tickets before the design is reviewed.
- Do not claim rollback safety without explaining how rollback works.
