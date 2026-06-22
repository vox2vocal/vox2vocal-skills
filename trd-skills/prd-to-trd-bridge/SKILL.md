---
name: prd-to-trd-bridge
description: Use to convert PRD, feature definition, and reviewed page/flow plan into a TRD input package with service surface impact, requirement traceability, technical impact areas, nonfunctional requirements, and engineering questions.
---

# Pipeline Role

- Receives: reviewed PRD, feature definition, and reviewed page/flow plan.
- Produces: TRD input package that maps product requirements to technical planning areas.
- Locks: service surface impact, requirement traceability, likely affected systems, API/data considerations, permissions/security, nonfunctional requirements, and engineering questions.
- Hard boundary: do not write the full TRD, choose final architecture, or create tickets.

# Use When
- PRD and product flows are ready for technical planning.
- engineering needs a structured handoff from product requirements.
- technical impact areas are unclear across frontend, backend, API, data, infra, worker, or analytics.
# Decision Rules
- Every major product requirement should map to a technical impact area.
- Preserve PRD intent; do not replace product decisions with implementation guesses.
- Preserve service surface ownership; map Admin Service, User App, Shared, and Cross-Service impacts separately when relevant.
- Translate success metrics into observability and validation needs.
- If architecture or service ownership is unknown, ask explicit engineering questions.
# Output Contract

Use Korean-first headings with English in parentheses for user-facing output.

```markdown
# PRD-TRD 연결 (PRD to TRD Bridge)

## 제품 의도 (Product Intent)

## 요구사항 추적성 (Requirement Traceability)

| 제품 요구사항 (Product Requirement) | 기술 영향 영역 (Technical Impact Area) | 메모 / 질문 (Notes / Questions) |
|---|---|---|

## 예상 영향 시스템 (Likely Affected Systems)

## 서비스 영역별 영향 (Impact by Service Surface)

## API / 데이터 고려사항 (API / Data Considerations)

## 권한 / 보안 고려사항 (Permission / Security Considerations)

## 비기능 요구사항 (Nonfunctional Requirements)

## 엔지니어링 질문 (Engineering Questions)

## TRD 준비도 (Readiness for TRD)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Continue to trd-writer when requirement traceability and open engineering questions are clear.
- Route back to PRD/product skills when product requirements, service surfaces, or page-flow ownership are ambiguous or untraceable.
# Quality Bar
- The bridge must prevent TRD writing from losing product intent.
- Admin Service and User App impacts must not be collapsed when they need different implementation, permission, or release planning.
- Unknown technical ownership should be explicit.
- Do not choose a solution where the product requirement only needs an impact question.
