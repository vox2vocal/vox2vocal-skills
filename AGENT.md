# Agent Skills Guide

이 가이드는 `vox2vocal-agent-skills` 저장소의 Codex skill 변경에 적용합니다.

## Scope

이 저장소는 Vox2Vocal 제품 기획 파이프라인용 Codex skill folder를 관리합니다.

- `strategy-skills/`: 사업 맥락, 제품 전략, 제품 비전, 목표 시스템, 페이즈 계획
- `product-manager-skills/`: 제품 브리프, PRD, 기능 정의, 페이지/플로우, 티켓, 로드맵
- `trd-skills/`: PRD-to-TRD bridge, TRD 작성/리뷰, API/data contract, technical risk
- `product-planning-skill-flow-guide.md`: 전략에서 PRD/TRD/티켓까지 이어지는 권장 흐름

## Skill Rules

1. 각 skill은 `group-skills/skill-name/SKILL.md` 구조로 둡니다.
2. `SKILL.md` frontmatter는 `name`과 `description`만 둡니다.
3. `name`은 skill folder name과 정확히 일치해야 합니다.
4. `name`과 folder name은 lowercase kebab-case를 사용합니다.
5. `description`에는 trigger context와 skill의 책임 경계를 함께 적습니다.
6. 개별 skill folder 안에는 `README.md`, `CHANGELOG.md`, `QUICK_REFERENCE.md`, `INSTALLATION_GUIDE.md` 같은 보조 문서를 두지 않습니다.
7. 사용자-facing 산출물의 큰 제목은 `한글 (English)` 형식을 기본으로 합니다.
8. 여러 skill을 가로지르는 흐름 문서는 저장소 루트 문서로 둡니다.

## Pipeline Principle

각 skill은 이전 단계의 결정을 바꾸지 않고 다음 단계가 사용할 수 있게 구체화합니다. 이전 단계의 결정이 흔들리면 다음 단계로 밀지 말고 해당 skill로 되돌립니다.

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
strategy-skills
pm-skills
trd-skills
docs
ci
```

커밋 author와 committer는 항상 `gitbyul <gitbyul@gmail.com>`이어야 합니다.
