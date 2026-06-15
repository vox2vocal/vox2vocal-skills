---
name: api-data-contract-planner
description: Use when the user wants to define or review API contracts, request/response shapes, validation rules, error states, backward compatibility, database schema changes, migrations, indexes, events, and analytics contracts for a product or TRD.
---

# Purpose

Create detailed API and data contracts that can be used inside a TRD or as input to implementation tickets.

# When To Use

Use this skill when a PRD/TRD requires API, database, event, or analytics changes.

Use it when the user asks to:

- define endpoint contracts
- design request and response shapes
- plan database schema or migration changes
- define validation and error behavior
- check backward compatibility
- plan analytics events or domain events

# Workflow

1. Identify the product behavior that needs API or data support.
2. Define endpoints, methods, request shape, response shape, validation, errors, and auth.
3. Define data model changes, migrations, indexes, retention, and compatibility concerns.
4. Define events or analytics payloads when needed.
5. Flag contract questions that require engineering or product decisions.

# Required Inputs

Ask for missing information only when needed:

- PRD, TRD, feature definition, or page plan
- current API or schema, if available
- auth/permission rules
- compatibility requirements
- data retention, privacy, or compliance constraints

# Output Format

```markdown
# API / Data Contract Plan

## Behavior Supported

## API Contracts

### <Endpoint>
- Method:
- Path:
- Auth / permission:
- Request:
- Response:
- Validation:
- Error cases:
- Compatibility:

## Data Model Changes

## Migration Plan

## Indexing / Performance Notes

## Events / Analytics

## Open Contract Questions
```

# Quality Bar

- Contracts must be concrete enough for implementation.
- Validation and error cases must be explicit.
- Backward compatibility and migration safety must be considered.
- Do not define fields without explaining why they exist.

# Common Pitfalls

- Do not design APIs only around the UI; map them to product behavior and domain concepts.
- Do not skip auth and permission checks.
- Do not ignore old clients, existing records, or partial migrations.
