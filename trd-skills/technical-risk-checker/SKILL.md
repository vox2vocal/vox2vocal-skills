---
name: technical-risk-checker
description: Use to audit TRD or implementation plans for data loss, auth bypass, migration failure, performance bottlenecks, missing observability, unsafe rollout, weak rollback, and untested edge cases.
---

# Pipeline Role

- Receives: TRD, API/data contract plan, implementation plan, or release plan.
- Produces: technical risk matrix with mitigations, tests, monitoring, rollout/rollback readiness, and recommendation.
- Locks: blocking risks, required mitigations, required tests, required monitoring, and rollout/rollback readiness.
- Hard boundary: do not rewrite TRD or create tickets unless asked; produce risk decisions that feed those documents.

# Use When
- TRD review is complete or nearly complete.
- the work touches production data, auth, performance, reliability, migration, or rollout risk.
- the team needs a final risk pass before ticket breakdown.
# Decision Rules
- Treat low confidence as risk, not as approval.
- Rate risk by likelihood and impact, then identify mitigations.
- Mark risks as blocking when they can cause data loss, security issues, unrollbackable release, or invalid validation.
- Translate risks into tests, monitoring, or TRD/ticket updates.
# Output Contract

Use Korean-first headings with English in parentheses for user-facing output.

```markdown
# 기술 리스크 점검 (Technical Risk Check)

## 전체 리스크 수준 (Overall Risk Level)

## 리스크 매트릭스 (Risk Matrix)

| 리스크 (Risk) | 영역 (Area) | 가능성 (Likelihood) | 영향도 (Impact) | 완화책 (Mitigation) | 차단 여부 (Blocking?) |
|---|---|---:|---:|---|---|

## 필수 완화책 (Required Mitigations)

## 필수 테스트 (Required Tests)

## 필수 모니터링 (Required Monitoring)

## 롤아웃 / 롤백 준비도 (Rollout / Rollback Readiness)

## 열린 리스크 질문 (Open Risk Questions)

## 추천 (Recommendation)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Continue to spec-to-tickets when blocking risks are resolved or explicitly owned.
- Route back to trd-writer or api-data-contract-planner when risk mitigations require design changes.
# Quality Bar
- Risks must be specific and actionable.
- Monitoring and rollback readiness are required for production-impacting work.
- The recommendation must say whether ticketing can proceed.
