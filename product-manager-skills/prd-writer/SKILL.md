---
name: prd-writer
description: Use when the user wants to turn a product idea, feature request, customer problem, discovery brief, or pm-context output into an engineering-handoff-ready PRD. Do not use for critique-only review, roadmap prioritization, or ticket decomposition.
---

# Purpose

Create a clear PRD that explains the problem, user, scope, requirements, acceptance criteria, success metrics, risks, dependencies, assumptions, and open questions well enough for engineering and design handoff.

# When To Use

Use this skill when the user asks to write, draft, improve into, or formalize a PRD from an idea, feature request, customer problem, product brief, or discovery notes.

Do not use this skill when the user only wants a harsh review of an existing PRD, a roadmap ranking, or implementation ticket drafts.

# Workflow

1. Read the source brief and identify the user problem, target segment, desired outcome, proposed solution, constraints, and evidence.
2. Ask a small number of blocking questions if the PRD would be misleading without them. Otherwise continue and mark unknowns under `Assumptions` or `Open Questions`.
3. Challenge the idea like a PM: expose solution smuggling, weak evidence, metric gaps, scope risk, and unclear user value.
4. Define goals as outcomes, not shipped artifacts. Define non-goals to prevent scope creep.
5. Write functional requirements that are testable and acceptance criteria that engineering can validate.
6. For success metrics, request or propose baseline, target, and guardrail metrics where possible. If unavailable, call out the metric gap.

# Required Inputs

- Product or feature concept
- Target users and use cases
- Problem statement or customer pain
- Business goal or user outcome
- Proposed scope or solution direction
- Constraints and dependencies
- Evidence and current baseline metrics, if available

# Output Format

## Executive Summary

## Problem Statement

## Target Users

## Goals

## Non-goals

## Scope

## User Stories

## Functional Requirements

## Acceptance Criteria

## Success Metrics
- Baseline:
- Target:
- Guardrail:

## Risks

## Dependencies

## Open Questions

## Assumptions

# Quality Bar

- The PRD must support engineering handoff without requiring the reader to infer core behavior.
- Requirements must be specific enough to test.
- Acceptance criteria must avoid vague terms such as "fast", "easy", or "intuitive" unless quantified.
- Include tradeoffs and risks instead of presenting the feature as obviously correct.
- Do not invent evidence, metrics, constraints, or stakeholder decisions.

# Common Pitfalls

- Starting with the proposed solution instead of the user problem.
- Omitting non-goals and allowing hidden scope creep.
- Writing success metrics with no baseline, target, or guardrail.
- Mixing functional requirements with implementation choices.
- Treating assumptions as facts.
