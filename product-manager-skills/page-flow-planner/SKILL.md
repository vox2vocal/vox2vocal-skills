---
name: page-flow-planner
description: Use when the user wants to turn a feature definition, PRD, or product requirements into page plans, screen inventory, user flows, navigation paths, page states, data needs, CTAs, and a page-to-feature matrix before design or ticket breakdown.
---

# Purpose

Translate product features into concrete pages, screens, user flows, and page-level requirements. This skill sits after feature definition and before development ticket breakdown or visual design.

# When To Use

Use this skill when the user asks to:

- plan pages or screens for a product feature
- define user flows from feature requirements
- map features to pages
- clarify navigation, CTAs, page states, or required data
- prepare a product spec for design, prototyping, or ticket creation

Do not use this skill to create visual mockups. If the user wants visual exploration or implementation, route to a product design workflow after the page plan is clear.

# Workflow

1. Read the feature definition, PRD, or brief.
2. Identify primary users, entry points, and success moments.
3. Define the minimum page/screen inventory for MVP.
4. For each page, define:
   - purpose
   - primary user action
   - secondary actions
   - required data
   - key components or content blocks
   - empty, loading, error, and permission states
   - navigation in and out
   - analytics events or success signals
5. Describe the primary user flow from entry to completion.
6. Create a `Page x Feature Matrix`.
7. Flag missing requirements and UX risks.

# Required Inputs

Ask only for missing information that materially changes the page plan:

- feature definition or PRD
- primary user role
- target platform, such as web app, mobile app, admin console, or extension
- known design system or product surface, if any
- required pages, if already known
- major constraints such as auth, permissions, localization, or responsive needs

# Output Format

Use this structure:

```markdown
# Page / Flow Plan

## Flow Summary

## Page Inventory

### <Page Name>
- Purpose:
- Primary action:
- Secondary actions:
- Required data:
- Key components:
- Empty state:
- Loading state:
- Error state:
- Permission state:
- Navigation:
- Success signal:

## Primary User Flow

## Alternate / Edge Flows

## Page x Feature Matrix

| Page | Feature | User action | Required data | State coverage |
|---|---|---|---|---|

## UX Risks

## Open Questions

## Recommended Next Skill
```

Set `Recommended Next Skill` to `spec-to-tickets` when the page plan is clear enough for engineering breakdown. Set it to `feature-definer` when page planning exposes unclear feature behavior.

# Quality Bar

- Every MVP feature should map to at least one page or flow step.
- Every page should have a clear purpose and primary action.
- Page states must cover empty, loading, error, and permission-limited experiences when relevant.
- Navigation must explain where users come from and where they go next.
- The plan should be implementation-ready without pretending to be a visual design.
- If visual decisions are needed, state what design input is missing instead of inventing a full UI style.

# Common Pitfalls

- Do not create too many pages when one page with states would work.
- Do not confuse feature names with page names.
- Do not omit empty/error/permission states.
- Do not jump directly to Jira tickets before page ownership and flows are clear.
- Do not create visual mockups unless the user explicitly asks for design work.
