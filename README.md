# Vox2Vocal Agent Skills

Vox2Vocal의 제품 기획과 개발 지원에 사용하는 Codex skill 모음입니다. 목표는 아이디어를 바로 PRD나 티켓으로 밀어 넣는 것이 아니라, 사업 맥락에서 시작해 `무엇을 만들지`에 대한 기준을 흔들리지 않게 내려보내고, 구현 단계의 반복 작업도 일관된 규칙으로 다루는 것입니다.

## Directory

```text
vox2vocal-agent-skills/
  README.md
  AGENT.md
  product-planning-skill-flow-guide.md
  development/
    frontend-ui-skills/
      shadcn/
  strategy-skills/
    business-context/
    product-strategy/
    product-vision-writer/
    target-system-planner/
    phase-planner/
  product-manager-skills/
    pm-context/
    prd-writer/
    prd-reviewer/
    feature-definer/
    feature-definition-reviewer/
    page-flow-planner/
    page-flow-reviewer/
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

`development/frontend-ui-skills/`는 shadcn/ui 같은 프론트엔드 UI 개발 skill을 담당합니다.

`strategy-skills/`는 사업 맥락, 제품 전략, 제품 비전, 목표 시스템, 페이즈 계획을 담당합니다.

`product-manager-skills/`는 제품 brief 수집, PRD 작성/검토, MVP feature 정의/검토, page flow planning/review, roadmap prioritization, ticket draft 생성을 담당합니다.

`trd-skills/`는 PRD를 기술 계획으로 넘기는 bridge, TRD 작성/검토, API/data contract 계획, technical risk 점검을 담당합니다.

전체 제품 기획 흐름은 `product-planning-skill-flow-guide.md`를 기준으로 봅니다.

## Skill Index

| Skill | Group | Use |
| --- | --- | --- |
| `shadcn` | development/frontend-ui-skills | shadcn/ui 프로젝트, 컴포넌트, registry, preset, 스타일링, 합성 UI 작업을 관리합니다. |
| `business-context` | strategy-skills | 사업 목표, 시장/고객/구매자, 가치 교환, 수익 모델, 제약을 정리합니다. |
| `product-strategy` | strategy-skills | 타깃 세그먼트, 핵심 문제, 차별화, 전략적 선택, 핵심 지표를 정리합니다. |
| `product-vision-writer` | strategy-skills | 완성된 제품 경험, 노스스타 지표, 제품 원칙, anti-vision을 정의합니다. |
| `target-system-planner` | strategy-skills | 목표 시스템의 서비스 영역, 역할, 모듈, 워크플로우, 데이터, 권한, 경계를 정리합니다. |
| `phase-planner` | strategy-skills | 목표 시스템을 MVP, P0/P1/P2, 페이즈, 종료 기준, PRD 후보로 나눕니다. |
| `pm-context` | product-manager-skills | 제품, 사용자, 문제, 목표, 제약, 성공 기준이 불명확할 때 PM brief를 정리합니다. |
| `prd-writer` | product-manager-skills | 제품 아이디어나 brief를 engineering handoff 가능한 PRD로 작성합니다. |
| `prd-reviewer` | product-manager-skills | 기존 PRD나 요구사항 문서를 제품 관점에서 readiness review합니다. |
| `feature-definer` | product-manager-skills | PRD를 MVP/Later/Out of Scope와 상태, 규칙, 예외가 있는 feature definition으로 바꿉니다. |
| `feature-definition-reviewer` | product-manager-skills | feature definition의 PRD 추적성, MVP 범위, 동작, 상태, 권한, 예외를 비판적으로 검토합니다. |
| `page-flow-planner` | product-manager-skills | feature definition이나 PRD를 서비스 영역별 interaction surface, user flow, states로 정리합니다. |
| `page-flow-reviewer` | product-manager-skills | page flow의 관리자/사용자 앱 분리, surface type, 표면-기능 커버리지, 상태, 연동 흐름을 리뷰합니다. |
| `roadmap-prioritizer` | product-manager-skills | 여러 feature, initiative, experiment 후보의 우선순위를 비교합니다. |
| `spec-to-tickets` | product-manager-skills | PRD나 spec을 implementation-ready Markdown ticket draft로 분해합니다. |
| `prd-to-trd-bridge` | trd-skills | PRD, feature definition, reviewed page flow를 서비스 영역별 TRD 작성 입력으로 변환합니다. |
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
type(scope): [TICKET] 한글 제목

- 한글 bullet body
```

허용 type:

```text
feat, fix, docs, chore, refactor, test, ci
```

작업은 ticket branch에서 진행하고 PR을 생성합니다.

```text
type/TICKET-short-summary
```
