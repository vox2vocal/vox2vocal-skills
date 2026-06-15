---
name: prd-reviewer
description: Use when the user provides an existing PRD, feature spec, proposal, or requirements document and wants a strong readiness review focused on product clarity, metrics, scope, risks, dependencies, and testability. Do not use to draft a PRD from scratch.
---

# Purpose

Review an existing PRD or feature spec with an actionable PM critique. Identify build-readiness gaps before design, engineering, or leadership commits to the work.

# When To Use

Use this skill when the user asks to review, critique, audit, pressure-test, or assess whether a PRD or feature spec is ready to build.

Do not use this skill to create a new PRD, split work into tickets, or rank multiple roadmap candidates unless the review explicitly requires that as a follow-up.

# Workflow

1. Identify the intended user, problem, goals, non-goals, scope, requirements, acceptance criteria, metrics, dependencies, and risks.
2. Look hard for solution smuggling, weak or missing metrics, unclear user/problem framing, scope creep, missing non-goals, dependency risk, delivery risk, and untestable acceptance criteria.
3. Challenge PM logic: ask whether the document proves the problem, defines the outcome, and constrains the solution enough for delivery.
4. Classify issues by severity. Lead with blockers and decisions that must happen before build.
5. Recommend concrete fixes. Avoid praise unless it clarifies what should be preserved.
6. If the spec lacks information, do not fill it in. Ask questions or list assumptions explicitly.

# Required Inputs

- Existing PRD, feature spec, product proposal, or requirements draft
- Optional context: company goals, target users, constraints, timeline, metrics, prior research, dependency owners

# Output Format

## Verdict
- Status:
- One-line reason:

## Critical Issues
- Issue:
- Why it matters:
- Severity:

## Recommended Fixes
- Fix:
- Owner or decision needed:

## Questions Before Build
- Question:
- Why it blocks or changes scope:

## Go/No-go
- Recommendation:
- Conditions to proceed:

# Quality Bar

- Actionable critique comes before summary or encouragement.
- Every major critique should explain product impact, delivery impact, or measurement impact.
- Flag acceptance criteria that cannot be objectively tested.
- Separate real user or business impact from stakeholder pressure.
- Avoid rewriting the whole PRD unless the user asks for a revised version.

# Common Pitfalls

- Giving polite general feedback instead of naming blockers.
- Missing hidden solution decisions disguised as requirements.
- Accepting vanity metrics as success metrics.
- Letting ambiguous scope pass because the intent feels obvious.
- Treating dependencies and rollout risks as implementation details only.
