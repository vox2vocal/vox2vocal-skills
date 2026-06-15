---
name: prd-to-trd-bridge
description: Use when the user wants to convert a PRD, feature definition, or page/flow plan into a technical input package for TRD writing, mapping product requirements to technical impact areas, engineering questions, dependencies, and nonfunctional requirements.
---

# Purpose

Prepare a PRD for technical planning without turning product requirements into implementation details too early. This skill creates the bridge between product intent and TRD writing.

# When To Use

Use this skill after PRD review, feature definition, or page/flow planning and before writing a TRD.

Use it when the user asks to:

- prepare a PRD for engineering design
- identify technical impact areas from product requirements
- map product requirements to frontend, backend, API, data, infra, worker, or analytics work
- collect open engineering questions before TRD writing
- check whether a PRD is ready for technical design

# Workflow

1. Extract product intent, user value, and success criteria from the input.
2. Create a requirement traceability map from PRD items to technical impact areas.
3. Identify likely affected systems, services, pages, APIs, data models, jobs, events, and permissions.
4. Convert product constraints into nonfunctional requirements such as performance, security, reliability, privacy, observability, and rollout needs.
5. Flag missing information as engineering questions instead of inventing details.
6. Recommend whether the next step should be `trd-writer`, `prd-reviewer`, `feature-definer`, or `page-flow-planner`.

# Required Inputs

Ask only for missing information that materially changes technical planning:

- PRD, feature definition, or page/flow plan
- current architecture or relevant repo/service names, if known
- target platform and affected surfaces
- known data, API, auth, compliance, performance, or rollout constraints
- technical decisions that are already fixed

# Output Format

```markdown
# PRD to TRD Bridge

## Product Intent

## Requirement Traceability

| Product requirement | Technical impact area | Notes / questions |
|---|---|---|

## Likely Affected Systems

## API / Data Considerations

## Permission / Security Considerations

## Nonfunctional Requirements

## Engineering Questions

## Readiness for TRD

## Recommended Next Skill
```

# Quality Bar

- Keep product requirements separate from technical decisions.
- Every major product requirement should map to at least one technical impact area.
- Technical questions must be specific enough for an engineer to answer.
- If architecture is unknown, state assumptions and ask for repo/service context.

# Common Pitfalls

- Do not write the full TRD in this skill.
- Do not assume a database, framework, or service boundary without evidence.
- Do not drop product success metrics; translate them into observability and validation needs.
