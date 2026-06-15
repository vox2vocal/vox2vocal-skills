# Vox2Vocal Skills

Vox2Vocal product-management and technical-planning work에 사용하는 Codex skill 모음입니다.

## Directory

```text
skills/
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

