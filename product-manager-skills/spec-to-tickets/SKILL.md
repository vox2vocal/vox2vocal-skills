---
name: spec-to-tickets
description: Use when the user wants to decompose an existing PRD, product spec, or requirements document into implementation-ready Markdown ticket drafts with epics, stories, acceptance criteria, edge cases, tests, dependencies, and build order. Do not create Jira, Linear, or GitHub issues directly.
---

# Purpose

Convert a PRD or spec into developer-ready Markdown ticket drafts without touching external tracking systems. Keep each story scoped, testable, and small enough for implementation planning.

# When To Use

Use this skill when the user asks to break down a PRD, turn a spec into tickets, create engineering stories, draft epics, or plan implementation slices.

Do not use this skill to write the original PRD, review the PRD's product strategy, or directly create tickets in Jira, Linear, GitHub, or other systems.

# Workflow

1. Read the spec and identify user flows, system behaviors, platforms, data requirements, dependencies, rollout needs, and acceptance criteria.
2. Challenge ambiguous or oversized work. Split large stories and leave unclear stories as questions instead of inventing requirements.
3. Create an epic that states the outcome and scope boundary.
4. Draft stories in implementation-sized units. Each story should let a developer estimate, build, and test the work with minimal extra interpretation.
5. Add acceptance criteria, edge cases, test scenarios, dependencies, and suggested build order.
6. Surface product tradeoffs, delivery risks, metric gaps, and open questions that may change scope.

# Required Inputs

- PRD, feature spec, or requirements document
- Target platform or surface area
- Known technical or design dependencies
- Release constraints, if any
- Testing or quality expectations, if known

# Output Format

## Epic
- Title:
- Objective:
- Scope:
- Out of scope:

## Stories
### Story: <title>
- User or system need:
- Description:
- Notes:

## Acceptance Criteria
- Given:
- When:
- Then:

## Edge Cases
- Case:
- Expected behavior:

## Test Scenarios
- Scenario:
- Test type:

## Dependencies
- Dependency:
- Owner or status:

## Suggested Build Order
1. Step:
2. Step:
3. Step:

# Quality Bar

- Each story must be independently understandable and reasonably estimable.
- Acceptance criteria must be observable and testable.
- Split stories that contain multiple user flows, platforms, or backend/frontend concerns when that improves delivery clarity.
- Keep external-system-specific fields generic unless the user names a tracker format.
- Do not create issues through tools or APIs.

# Common Pitfalls

- Copying PRD paragraphs into tickets without creating buildable units.
- Creating stories that are too large to estimate.
- Hiding unclear requirements inside vague acceptance criteria.
- Forgetting edge cases, error states, permissions, analytics, rollout, and migration work.
- Imposing technical architecture that the spec does not require.
