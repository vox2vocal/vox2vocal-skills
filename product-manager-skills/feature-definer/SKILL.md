---
name: feature-definer
description: Use when the user wants to turn a PRD, product brief, feature idea, or reviewed requirements into a feature definition with MVP scope, later scope, business rules, states, permissions, edge cases, and measurable behavior before page planning or ticket breakdown.
---

# Purpose

Turn a PRD or product brief into a clear feature definition that separates what belongs in MVP, what should wait, and what is out of scope. This skill sits between PRD review and page/flow planning.

# When To Use

Use this skill when the user asks to:

- define product features from a PRD or brief
- clarify MVP scope before design or engineering breakdown
- split a broad product idea into capabilities, business rules, and states
- identify missing rules, permissions, dependencies, or edge cases
- prepare input for page planning, UX flows, or development tickets

Do not use this skill to write the PRD from scratch. Use a PRD or brief as input when possible.

# Workflow

1. Identify the core user problem, target users, and product goal from the input.
2. Extract candidate features and merge duplicates.
3. Separate features into `MVP`, `Later`, and `Out of Scope`.
4. For each MVP feature, define:
   - user action
   - product behavior
   - business rules
   - permissions or roles
   - states
   - edge cases
   - dependencies
   - success metric or observable signal
5. Flag unclear requirements as questions instead of inventing details.
6. Call out scope risks and tradeoffs explicitly.

# Required Inputs

Ask only for missing information that materially changes the feature definition:

- product or feature goal
- target users or roles
- PRD, brief, or problem statement
- MVP deadline or scope constraint, if any
- known technical, policy, data, or design constraints
- existing features or systems the work must integrate with

# Output Format

Use this structure:

```markdown
# Feature Definition

## Context

## MVP Features

### <Feature Name>
- User action:
- Product behavior:
- Business rules:
- Permissions / roles:
- States:
- Edge cases:
- Dependencies:
- Success signal:

## Later Features

## Out of Scope

## Scope Risks

## Open Questions

## Recommended Next Skill
```

Set `Recommended Next Skill` to `page-flow-planner` when the feature definition is ready for page and flow planning. Set it to `prd-writer` or `prd-reviewer` if the input is still too vague.

# Quality Bar

- MVP scope must be smaller than the complete vision.
- Features must describe behavior, not just UI components.
- Business rules must be testable.
- States must include meaningful product states such as empty, partial, completed, blocked, error, expired, or permission-limited when relevant.
- Permissions must be called out when roles or access levels matter.
- Every unclear assumption must appear under `Open Questions` or be explicitly marked as an assumption.

# Common Pitfalls

- Do not convert every idea into MVP scope.
- Do not define pages before the feature behavior is clear.
- Do not hide risky dependencies inside generic wording.
- Do not use vague labels like "dashboard feature" without describing user action and system behavior.
- Do not create development tickets yet; use `spec-to-tickets` after page/flow planning.
