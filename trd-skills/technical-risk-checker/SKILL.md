---
name: technical-risk-checker
description: Use when the user wants to audit a TRD, implementation plan, or release plan for technical risks such as data loss, auth bypass, migration failure, performance bottlenecks, missing observability, unsafe rollout, weak rollback, and untested edge cases.
---

# Purpose

Surface technical risks before implementation or release and turn them into mitigations, tests, monitoring, and rollout controls.

# When To Use

Use this skill after TRD review, before ticketing, or before launch readiness checks.

Use it when the user asks to:

- identify technical risks
- check whether a design is safe to build
- prepare risk mitigations before implementation
- audit rollout and rollback readiness
- find missing monitoring or test coverage

# Workflow

1. Read the PRD/TRD or implementation plan.
2. Identify risks across data, auth, security, migration, performance, reliability, observability, rollout, rollback, and testing.
3. Rate each risk by likelihood and impact.
4. Recommend mitigations, tests, monitors, and fallback plans.
5. Identify risks that should block implementation or release.

# Required Inputs

Ask only for missing information that affects risk assessment:

- TRD or implementation plan
- affected systems and data
- rollout strategy
- rollback expectations
- known constraints or incidents
- service-level or performance expectations

# Output Format

```markdown
# Technical Risk Check

## Overall Risk Level

## Risk Matrix

| Risk | Area | Likelihood | Impact | Mitigation | Blocking? |
|---|---|---:|---:|---|---|

## Required Mitigations

## Required Tests

## Required Monitoring

## Rollout / Rollback Readiness

## Open Risk Questions

## Recommendation
```

# Quality Bar

- Risks must be specific, not generic.
- Blocking risks must have clear reasons.
- Mitigations should translate into TRD updates or tickets.
- Monitoring and rollback readiness must be checked for production-impacting work.

# Common Pitfalls

- Do not treat low confidence as low risk.
- Do not ignore data and permission risks just because the UI is simple.
- Do not approve release readiness without observability and rollback plans.
