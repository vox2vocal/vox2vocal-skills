# Agent Skills Guide

이 가이드는 `vox2vocal-agent-skills` 저장소의 product-management and TRD Codex skill 변경에 적용합니다.

## Scope

이 저장소는 Codex skill folder를 관리합니다.

- `product-manager-skills/`: PRD, feature definition, page flow, roadmap, ticket draft skill
- `trd-skills/`: PRD-to-TRD bridge, TRD writing/review, API/data contract, technical risk skill
- `prd-trd-skill-flow-guide.md`: PM skill에서 TRD skill로 이어지는 권장 작업 흐름

## Skill Rules

1. 각 skill은 `group-skills/skill-name/SKILL.md` 구조로 둡니다.
2. `SKILL.md` frontmatter는 `name`과 `description`만 둡니다.
3. `name`은 skill folder name과 정확히 일치해야 합니다.
4. `name`과 folder name은 lowercase kebab-case를 사용합니다.
5. `description`에는 skill이 하는 일과 trigger context를 함께 적습니다.
6. 개별 skill folder 안에는 `README.md`, `CHANGELOG.md`, `QUICK_REFERENCE.md` 같은 보조 문서를 두지 않습니다.
7. 큰 참고 자료가 필요하면 skill folder 안의 `references/`, 반복 실행 코드가 필요하면 `scripts/`, 출력 템플릿은 `assets/`를 사용합니다.
8. PM/TRD workflow 설명처럼 여러 skill을 가로지르는 문서는 저장소 루트 문서로 둡니다.

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
type(scope): 한글 제목

- 한글 bullet body
```

권장 scope:

```text
skills
pm-skills
trd-skills
docs
ci
```

커밋 author와 committer는 항상 `gitbyul <gitbyul@gmail.com>`이어야 합니다.
