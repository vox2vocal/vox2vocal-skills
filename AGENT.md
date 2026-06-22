# Agent Skills Guide

이 가이드는 `vox2vocal-agent-skills` 저장소의 Codex skill 변경에 적용합니다.

## Scope

이 저장소는 Vox2Vocal 제품 기획과 개발 지원용 Codex skill folder를 관리합니다.

- `development/frontend-ui-skills/`: shadcn/ui 등 프론트엔드 UI 개발 skill
- `strategy-skills/`: 사업 맥락, 제품 전략, 제품 비전, 목표 시스템, 페이즈 계획
- `product-manager-skills/`: 제품 브리프, PRD, 기능 정의/검토, 페이지/플로우 기획/검토, 티켓, 로드맵
- `trd-skills/`: PRD-to-TRD bridge, TRD 전 API/data contract, TRD 작성/리뷰, 선택적 technical risk
- `product-planning-skill-flow-guide.md`: 전략에서 PRD/TRD/티켓까지 이어지는 권장 흐름

## Skill Rules

1. 각 skill은 `group-skills/skill-name/SKILL.md` 구조로 둡니다. 도메인 구분이 필요하면 `category/group-skills/skill-name/SKILL.md` 구조를 사용합니다.
2. `SKILL.md` frontmatter는 기본적으로 `name`과 `description`만 둡니다. 공식 외부 skill을 vendoring할 때만 `user-invocable`, `allowed-tools` 같은 원본 metadata를 보존할 수 있습니다.
3. `name`은 skill folder name과 정확히 일치해야 합니다.
4. `name`과 folder name은 lowercase kebab-case를 사용합니다.
5. `description`에는 trigger context와 skill의 책임 경계를 함께 적습니다.
6. 개별 skill folder 안에는 `README.md`, `CHANGELOG.md`, `QUICK_REFERENCE.md`, `INSTALLATION_GUIDE.md` 같은 보조 문서를 두지 않습니다.
7. 사용자-facing 산출물의 큰 제목은 `한글 (English)` 형식을 기본으로 합니다.
8. 여러 skill을 가로지르는 흐름 문서는 저장소 루트 문서로 둡니다.

## PM/TRD Document Rules

PM/TRD skill은 문서를 단순 실행 결과물이 아니라 제품 의사결정 흐름으로 관리하게 해야 합니다.

- Product-Level Docs는 제품 전체 기준을 관리하고 domain number `00`을 사용합니다.
- Domain-Level Docs는 특정 기능/도메인의 실행 문서를 관리하고 domain number `01+`를 사용합니다.
- 권장 파일명은 `<도메인번호>_<스킬순번>_<제품명>-<도메인>-<문서종류>.md` 형식입니다.
- 모든 writer/planner/bridge/reviewer 산출물은 상단에 `문서 번호`, `문서 버전`, `작성일`, `상태`, `범위`, `적용 skill`, `도메인`, `스킬 단계`, `기반 문서`를 포함하도록 안내합니다.
- 기반 문서는 파일명과 문서 버전을 함께 기록합니다.
- 문서 버전은 날짜가 아니라 `v0.1`, `v0.2`, `v1.0` 형식을 사용합니다.
- 모르는 내용은 지어내지 않고 `Assumptions` 또는 `Open Questions`에 남기도록 합니다.
- 사용자가 이미 결정한 내용은 다시 묻지 않고 `Known Facts` 또는 `Decisions`로 고정하도록 합니다.
- reviewer skill은 기본적으로 별도 review 파일을 만들지 않고 review result를 후속 writer/planner가 반영하게 합니다. 별도 파일은 사용자가 요청하거나 장기 보존 가치가 있을 때만 안내합니다.

## Pipeline Principle

각 skill은 이전 단계의 결정을 바꾸지 않고 다음 단계가 사용할 수 있게 구체화합니다. 이전 단계의 결정이 흔들리면 다음 단계로 밀지 말고 해당 skill로 되돌립니다.

표준 PM/TRD 흐름은 다음 순서를 기본으로 합니다.

```text
business-context
-> product-strategy
-> product-vision-writer
-> target-system-planner
-> phase-planner
-> pm-context
-> prd-writer
-> prd-reviewer
-> feature-definer
-> feature-definition-reviewer
-> page-flow-planner
-> page-flow-reviewer
-> prd-to-trd-bridge
-> api-data-contract-planner
-> trd-writer
-> trd-reviewer
-> spec-to-tickets
```

`roadmap-prioritizer`는 “무엇을 먼저 만들까?”가 문제일 때만 사용합니다. `technical-risk-checker`는 표준 흐름이 아니라 고위험 변경이나 명시 요청이 있을 때 사용하는 선택적 risk pass입니다.

## Validation

변경 후 항상 skill 구조 검증을 실행합니다.

```bash
scripts/validate-skills.sh
```

Git hook과 local identity는 다음 명령으로 설치합니다.

```bash
scripts/install-git-policy-hooks.sh
```

## Commit Convention

커밋 요청이 있으면 `vox2vocal-agent-skills` repo 안에서만 커밋하고 푸시합니다. 커밋 메시지는 Vox2Vocal Git 정책을 따릅니다.

```text
type(scope): [TICKET] 한글 제목

- 한글 bullet body
```

권장 scope:

```text
skills
strategy-skills
frontend-ui-skills
pm-skills
trd-skills
docs
ci
```

작업은 `type/TICKET-short-summary` 형식의 ticket branch에서 진행하고 PR을 생성합니다.

커밋 author와 committer는 항상 `gitbyul <gitbyul@gmail.com>`이어야 합니다.
