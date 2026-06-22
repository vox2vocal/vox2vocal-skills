---
name: trd-reviewer
description: Use to critically review a Domain-Level TRD for PRD coverage, architecture clarity, API/data contract absorption, migration risk, auth/security gaps, observability gaps, rollback weakness, performance risks, insufficient test strategy, and readiness before spec-to-tickets; produce review results by default, not a separate review file unless requested.
---

# Pipeline Role

- Receives: TRD, related PRD or PRD-to-TRD bridge, and API/data contract plan when available.
- Produces: technical readiness review with blockers, risks, fixes, and Go/Revise/No-go recommendation.
- Locks: whether the TRD has absorbed required contract detail and can proceed to risk check or ticket breakdown.
- Hard boundary: do not rewrite the TRD unless explicitly asked; do not create implementation tickets.

# Document Rules
- Treat review output as feedback for the source TRD by default; create a separate review document only when the user asks or long-term preservation is useful.
- If persisted, use filename `<domain-number>_07_<product>-<domain>-trd-review.md`.
- Start the review at the top with: `문서 번호`, `문서 버전`, `작성일`, `상태`, `범위`, `적용 skill`, `도메인`, `스킬 단계`, `기반 문서`.
- `기반 문서`에는 반드시 파일명과 문서 버전을 함께 기록한다.
- Record the reviewed TRD, PRD, bridge, and API-data contract as filename plus version.
- Include a Change Log table when creating a persisted review artifact.

# Use When
- a TRD is about to become tickets or implementation work.
- technical coverage, rollout, rollback, tests, or API/data contracts may be incomplete.
- contract-heavy work may have skipped `api-data-contract-planner` or failed to reflect its output.
- the user asks whether a design is safe to build.
# Decision Rules
- Review against the PRD, not just against engineering preference.
- Prioritize missing requirement coverage, unsafe data changes, unclear contracts, auth/security gaps, observability gaps, and rollback weakness.
- For multi-service, permission/session, deletion/retention, audit, worker/job, file/media, push, migration, or indexing work, treat missing `api-data-contract-planner` output as a blocker unless contracts are already explicit in the TRD.
- Separate blockers from important non-blocking risks.
- Require concrete fixes for blockers before Go.
- Reviewers should challenge the document hard enough that ticket drafting can rely on it.
# Output Contract

Use Korean-first headings with English in parentheses for user-facing output.

```markdown
# TRD 리뷰 (TRD Review)

## 판정 (Verdict)

## 핵심 이슈 (Critical Issues)

## 권장 수정사항 (Recommended Fixes)

## 다음 단계 전 질문 (Questions Before Next Step)

## 진행 / 수정 / 중단 (Go / Revise / No-go)

## 변경 이력 (Change Log)

## 다음 추천 스킬 (Recommended Next Skill)
```

# Handoff Gate
- Continue to spec-to-tickets when verdict is Go or Revise-with-bounded-fixes and no major blocker remains.
- Use technical-risk-checker only when the user asks for a final risk pass or the work has exceptional production, data, auth, migration, performance, reliability, rollout, or rollback risk.
- Continue to api-data-contract-planner if contracts are underspecified or contract-heavy work lacks a contract plan.
- Route back to trd-writer when architecture, traceability, rollout, rollback, or tests need material revision.
# Quality Bar
- The review must protect production safety and PRD coverage.
- The review must verify that Test Plan, Observability, Security Considerations, and Rollback are grounded in concrete API/data/event contracts for contract-heavy work.
- Do not approve vague rollback or test plans.
- Style feedback is secondary to design risk.
