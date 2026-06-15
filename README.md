# Vox2Vocal Agent Skills

Vox2Vocal product-management and technical-planning work에 사용하는 Codex skill 모음입니다.

## Directory

```text
vox2vocal-agent-skills/
  README.md
  AGENT.md
  prd-trd-skill-flow-guide.md
  product-manager-skills/
    pm-context/
    prd-writer/
    prd-reviewer/
    feature-definer/
    page-flow-planner/
    roadmap-prioritizer/
    spec-to-tickets/
  trd-skills/
    prd-to-trd-bridge/
    trd-writer/
    trd-reviewer/
    api-data-contract-planner/
    technical-risk-checker/
```

## Skill Groups

`product-manager-skills/`는 제품 brief 수집, PRD 작성/검토, MVP feature 정의, page flow planning, roadmap prioritization, ticket draft 생성을 담당합니다.

`trd-skills/`는 PRD를 기술 계획으로 넘기는 bridge, TRD 작성/검토, API/data contract 계획, technical risk 점검을 담당합니다.

전체 PM-to-TRD 흐름은 `prd-trd-skill-flow-guide.md`를 기준으로 봅니다.

## Skill Index

| Skill | Group | Use |
| --- | --- | --- |
| `pm-context` | product-manager-skills | 제품, 사용자, 문제, 목표, 제약, 성공 기준이 불명확할 때 PM brief를 정리합니다. |
| `prd-writer` | product-manager-skills | 제품 아이디어나 brief를 engineering handoff 가능한 PRD로 작성합니다. |
| `prd-reviewer` | product-manager-skills | 기존 PRD나 요구사항 문서를 제품 관점에서 readiness review합니다. |
| `feature-definer` | product-manager-skills | PRD를 MVP/Later/Out of Scope와 상태, 규칙, 예외가 있는 feature definition으로 바꿉니다. |
| `page-flow-planner` | product-manager-skills | feature definition이나 PRD를 page inventory, user flow, page states로 정리합니다. |
| `roadmap-prioritizer` | product-manager-skills | 여러 feature, initiative, experiment 후보의 우선순위를 비교합니다. |
| `spec-to-tickets` | product-manager-skills | PRD나 spec을 implementation-ready Markdown ticket draft로 분해합니다. |
| `prd-to-trd-bridge` | trd-skills | PRD, feature definition, page flow를 TRD 작성용 technical input으로 변환합니다. |
| `trd-writer` | trd-skills | PRD 또는 bridge 결과를 engineering-ready TRD로 작성합니다. |
| `trd-reviewer` | trd-skills | TRD나 technical design의 architecture, contract, rollout, test gap을 리뷰합니다. |
| `api-data-contract-planner` | trd-skills | API, data model, migration, event, analytics contract를 구체화합니다. |
| `technical-risk-checker` | trd-skills | TRD, implementation plan, release plan의 기술 리스크와 mitigation을 점검합니다. |

## Validation

Skill folder 구조와 `SKILL.md` frontmatter를 검증합니다.

```bash
scripts/validate-skills.sh
```

Git identity, commit message, pre-push policy hook을 설치합니다.

```bash
scripts/install-git-policy-hooks.sh
```

## Git Policy

커밋 메시지는 Vox2Vocal 독립 repository 공통 정책을 따릅니다.

```text
type(scope): 한글 제목

- 한글 bullet body
```

허용 type:

```text
feat, fix, docs, chore, refactor, test, ci
```
