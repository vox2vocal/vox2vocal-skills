# 제품 기획 스킬 사용 가이드 (Product Planning Skill Flow Guide)

## 목적 (Purpose)

이 스킬 세트는 아이디어를 바로 PRD, TRD, 티켓으로 바꾸는 도구가 아닙니다. 목적은 `무엇을 만들지`에 대한 기준을 위에서 아래까지 흔들리지 않게 내려보내는 것입니다.

```text
사업 이유
-> 제품 전략
-> 완성된 시스템
-> 페이즈 / MVP / P0
-> PRD
-> 기능 / 페이지 흐름
-> API / 데이터 계약
-> TRD
-> 티켓
-> 선택: 로드맵 우선순위
```

각 단계는 이전 단계의 결정을 바꾸지 않고 더 구체화합니다. 만약 다음 단계에서 이전 결정이 흔들리면 앞으로 밀지 말고 해당 단계로 되돌아갑니다.

## 전체 파이프라인 (End-to-End Pipeline)

```text
1. business-context
2. product-strategy
3. product-vision-writer
4. target-system-planner
5. phase-planner
6. pm-context
7. prd-writer
8. prd-reviewer
9. feature-definer
10. feature-definition-reviewer
11. page-flow-planner
12. page-flow-reviewer
13. prd-to-trd-bridge
14. api-data-contract-planner
15. trd-writer
16. trd-reviewer
17. spec-to-tickets
18. roadmap-prioritizer (무엇을 먼저 만들지 판단해야 할 때만)
```

## 문서 계층 (Document Hierarchy)

| 계층 (Layer) | 산출물 (Output) | 핵심 질문 (Core Question) |
|---|---|---|
| 사업 (Business) | 사업 맥락 (Business Context) | 왜 이 제품을 해야 하는가? |
| 전략 (Strategy) | 제품 전략 (Product Strategy) | 누구의 어떤 문제를 먼저 풀 것인가? |
| 비전 (Vision) | 제품 비전 (Product Vision) | 완성된 제품 경험은 무엇인가? |
| 시스템 (System) | 목표 시스템 정의 (Target System Definition) | 어떤 서비스 영역, 역할, 모듈, 워크플로우로 구성되는가? |
| 페이즈 (Phase) | 페이즈 계획 (Phase Plan) | MVP/P0와 이후 페이즈는 무엇인가? |
| PRD | 제품 요구사항 문서 (PRD) | 이번에 무엇을 만들고 무엇은 만들지 않는가? |
| 기능 (Feature) | 기능 정의서 (Feature Definition) | MVP 기능은 어떤 동작과 규칙을 갖는가? |
| 화면 (Page) | 인터랙션 표면 / 플로우 기획 (Interaction Surface / Flow Plan) | 각 서비스 영역에서 사용자는 어떤 표면과 흐름으로 완료하는가? |
| 계약 (Contract) | API / 데이터 계약 계획 (API / Data Contract Plan) | 어떤 서비스가 어떤 API, 데이터, 이벤트, 권한 계약을 지키는가? |
| TRD | 기술 요구사항 문서 (TRD) | 어떻게 안전하게 구현할 것인가? |
| 티켓 (Tickets) | 개발 티켓 초안 (Ticket Drafts) | 개발자가 어떤 순서로 구현할 것인가? |

문서 범위:

- Product-Level Docs: `business-context`, `product-strategy`, `product-vision-writer`, `target-system-planner`, `phase-planner`
- Domain-Level Docs: 특정 기능/도메인 단위 문서입니다. 예: `account-permission`, `song-catalog`, `recording`, `preview-generation`, `voice-analysis`, `deletion-retention`, `notification`

Product-Level Docs는 제품의 중심과 전략 기준을 관리합니다. Domain-Level Docs는 특정 기능/도메인의 실행 문서를 관리합니다.

## 문서 관리 규칙 (Document Management Rules)

권장 파일명:

```text
<도메인번호>_<스킬순번>_<제품명>-<도메인>-<문서종류>.md
```

예:

```text
00_01_vox2vocal-business-context.md
00_02_vox2vocal-product-strategy.md
00_03_vox2vocal-product-vision.md
00_04_vox2vocal-target-system-definition.md
00_05_vox2vocal-phase-plan.md

01_01_vox2vocal-account-permission-prd-brief.md
01_02_vox2vocal-account-permission-prd.md
01_03_vox2vocal-account-permission-prd-review.md
01_04_vox2vocal-account-permission-feature-definition.md
01_05_vox2vocal-account-permission-feature-definition-review.md
01_06_vox2vocal-account-permission-page-flow-plan.md
01_07_vox2vocal-account-permission-page-flow-review.md
01_08_vox2vocal-account-permission-prd-to-trd-bridge.md
01_09_vox2vocal-account-permission-api-data-contract.md
01_10_vox2vocal-account-permission-trd.md
01_11_vox2vocal-account-permission-trd-review.md
01_12_vox2vocal-account-permission-ticket-drafts.md
```

번호 규칙:

- `00`은 제품 전체 foundation 문서에 사용합니다.
- `01`부터는 기능/도메인 단위 문서에 사용합니다.
- 스킬순번은 전역 번호가 아니라 해당 도메인 안에서의 문서 작성 흐름 순서입니다.
- 도메인번호와 스킬순번은 두 자리 zero-padding을 사용합니다.
- 제품명, 도메인명, 문서종류는 영어 소문자 kebab-case를 사용합니다.

권장 도메인번호:

| 번호 | 도메인 |
|---|---|
| `00` | product-foundation |
| `01` | account-permission |
| `02` | song-catalog |
| `03` | recording |
| `04` | preview-generation |
| `05` | voice-analysis |
| `06` | deletion-retention |
| `07` | notification |
| `08` | admin-operations |
| `09` | observability-audit |

도메인번호는 한 번 부여하면 가능하면 변경하지 않습니다. 이미 작성된 문서를 대규모 rename해야 할 경우에는 사용자의 명시적 요청이 있을 때만 진행합니다.

문서 상단 메타데이터:

```text
문서 번호:
문서 버전:
작성일:
상태:
범위:
적용 skill:
도메인:
스킬 단계:
기반 문서:
```

기반 문서에는 반드시 파일명과 문서 버전을 함께 기록합니다.

```text
- pm/01_02_vox2vocal-account-permission-prd.md v0.5
- pm/01_04_vox2vocal-account-permission-feature-definition.md v0.2
```

버전 규칙:

- `v0.1`: 최초 초안
- `v0.2`: 리뷰 반영
- `v0.3`: 주요 결정 반영
- `v0.4+`: 다음 단계 handoff 전 안정화
- `v1.0`: 구현 기준으로 lock

각 문서는 변경 이력 (Change Log)을 포함합니다.

```markdown
| 버전 | 날짜 | 변경 내용 |
|---|---|---|
| v0.1 | 2026-06-22 | 최초 초안 작성 |
| v0.2 | 2026-06-22 | reviewer 지적사항 반영 |
```

## 사용 원칙 (Operating Principles)

- 산출물의 큰 제목은 항상 `한글 (English)` 형식으로 작성합니다.
- 각 단계는 `잠그는 결정 (Locked Decision)`이 있어야 합니다.
- 모르는 정보는 지어내지 말고 `가정 (Assumptions)` 또는 `열린 질문 (Open Questions)`에 남깁니다.
- 사용자가 이미 결정한 내용은 다시 묻지 말고 `Known Facts` 또는 `Decisions`로 고정합니다.
- PRD는 제품 결정 문서이고, TRD는 기술 결정 문서입니다.
- 복수 서비스, 권한/세션, 삭제/보관, audit/logging, worker/job, file/media, push/notification, migration/indexing이 관련되면 TRD 전에 API/data contract를 먼저 잠급니다.
- 티켓은 PRD와 TRD가 검토된 뒤 Markdown 초안으로만 작성합니다.
- 모든 스킬은 다음 스킬로 넘어갈 수 있는지 `다음 추천 스킬 (Recommended Next Skill)`을 남기게 합니다.

## 서비스 영역 기준 (Service Surface Guideline)

관리자 서비스와 사용자 앱이 서로 다른 서비스 형태로 확장될 수 있으면, 한 문서 안에 작성하더라도 반드시 서비스 영역을 분리합니다.

기본 서비스 영역:

- `Admin Service`: 운영자, 관리자, 내부 담당자가 설정, 승인, 검수, 운영, 통계를 다루는 영역
- `User App`: 최종 사용자, 고객, 크리에이터, 일반 사용자가 직접 사용하는 앱/서비스 영역
- `Shared`: 관리자 서비스와 사용자 앱이 함께 쓰는 공통 정책, 데이터, 상태, 권한, 알림, 분석 영역
- `Cross-Service`: 한 서비스의 행동이 다른 서비스의 상태나 화면에 영향을 주는 연동 흐름

작성 원칙:

- `target-system-planner`에서 서비스 영역을 처음 드러냅니다.
- `feature-definer`에서 각 MVP 기능의 서비스 영역을 잠급니다.
- `feature-definition-reviewer`에서 서비스 영역 누락이나 관리자/사용자 앱 혼합을 막습니다.
- `page-flow-planner`는 관리자 서비스와 사용자 앱의 interaction surface를 별도 섹션으로 작성합니다.
- `page-flow-reviewer`는 페이지/플로우가 TRD로 넘어가기 전에 서비스 분리, surface type, 상태, 권한, 연동 누락을 검토합니다.
- 서비스 영역이 불명확하면 임의로 배정하지 말고 열린 질문으로 남기고 이전 단계로 되돌립니다.

## 리뷰 게이트 기준 (Review Gate Guideline)

리뷰 스킬은 문서를 예쁘게 고치는 단계가 아니라 다음 단계로 넘겨도 되는지 판단하는 gate입니다.

- `prd-reviewer`: PRD가 feature definition으로 내려갈 수 있는지 검토합니다.
- `feature-definition-reviewer`: 기능 정의가 page-flow-planner로 내려갈 수 있는지 검토합니다.
- `page-flow-reviewer`: 페이지/플로우가 prd-to-trd-bridge로 내려갈 수 있는지 검토합니다.
- `prd-to-trd-bridge`: TRD로 바로 갈지, API/data contract를 먼저 잠글지 판단합니다.
- `trd-reviewer`: TRD가 contract plan을 반영했고 ticket 단계로 내려갈 수 있는지 검토합니다.

리뷰 결과는 `Go`, `Revise`, `No-go` 중 하나로 끝내고, blocker가 있으면 다음 단계로 밀지 않습니다.

Gate 규칙:

- PRD Review: `Go` 또는 `Revise with minor fixes`
- Feature Definition Review: `Go`
- Page Flow Review: `Go`
- PRD-to-TRD Bridge: `Go with clear TRD blockers`
- API/Data Contract Review: `Go` 또는 `Revise with bounded fixes`
- TRD Review: `Go` 또는 `Revise with bounded fixes`

reviewer skill은 기본적으로 별도 review 문서를 만들지 않습니다. 기본 산출은 `Verdict`, `Critical Issues`, `Recommended Fixes`, `Questions Before Next Step`, `Go / Revise / No-go`, `Recommended Next Skill`이며, 후속 writer/planner skill이 이를 본문에 반영합니다. 별도 review 파일은 장기 보존 가치가 있거나 사용자가 명시적으로 요청할 때만 만듭니다.

## 단계별 사용법 (How To Use Each Skill)

### 1. business-context

사업 맥락을 정리합니다. 시장, 고객, 구매자, 수익 모델, 사업 목표가 불명확하면 제품 전략으로 내려가지 않습니다.

사용할 때:

- 새 제품/서비스 아이디어를 처음 검토할 때
- 사업 목표와 제품 목표가 연결되어 있지 않을 때
- 고객, 사용자, 구매자가 섞여 있을 때

프롬프트:

```text
business-context 스킬을 사용해서 아래 제품 아이디어의 사업 맥락을 정리해줘.

아이디어:
<아이디어 붙여넣기>

산출물의 큰 제목은 한글 (English) 형식으로 작성해줘.
사업 목표, 시장/고객/구매자, 가치 교환, 수익 모델/성장 방식,
전략 제약, 성공 지표, 근거와 가정, 사업 리스크를 정리해줘.
```

다음으로 넘어가는 기준:

- 왜 이 제품을 해야 하는지 설명할 수 있다.
- 첫 고객/사용자/구매자가 구분된다.
- 사업 제약과 성공 지표가 보인다.

### 2. product-strategy

사업 맥락을 제품 전략으로 바꿉니다. 여기서 “모든 사람을 위한 제품”을 피하고, 첫 타깃과 핵심 문제를 좁힙니다.

사용할 때:

- 여러 사용자 세그먼트 중 어디부터 시작할지 정해야 할 때
- 제품 차별화가 기능 목록처럼만 보일 때
- PRD를 쓰기 전 전략적 판단 기준이 필요할 때

프롬프트:

```text
product-strategy 스킬을 사용해서 아래 사업 맥락을 제품 전략으로 정리해줘.

사업 맥락:
<business-context 결과 붙여넣기>

산출물의 큰 제목은 한글 (English) 형식으로 작성해줘.
첫 타깃 세그먼트, 핵심 문제, 차별화/포지셔닝,
전략적 선택과 비선택, 제품 원칙, 핵심 지표, 검증 필요 영역을 정리해줘.
```

다음으로 넘어가는 기준:

- 첫 타깃 세그먼트가 명확하다.
- 핵심 문제가 한 문장으로 설명된다.
- 하지 않을 것과 전략적 tradeoff가 드러난다.

### 3. product-vision-writer

완성된 제품 경험을 정의합니다. 이 단계가 있어야 여러 PRD가 한 방향을 봅니다.

사용할 때:

- “완성된 시스템은 무엇인가?”를 정의해야 할 때
- 여러 phase/PRD가 흩어질 위험이 있을 때
- 제품의 north-star 경험이 필요할 때

프롬프트:

```text
product-vision-writer 스킬을 사용해서 아래 제품 전략을 완성된 제품 비전으로 정리해줘.

제품 전략:
<product-strategy 결과 붙여넣기>

산출물의 큰 제목은 한글 (English) 형식으로 작성해줘.
비전 한 문장, 대상 사용자, 핵심 작업, 완성된 사용자 경험,
노스스타 지표, 제품 원칙, 되지 않을 것, 열린 질문을 포함해줘.
```

다음으로 넘어가는 기준:

- 완성된 사용자 경험이 설명된다.
- 제품이 되지 않을 방향도 설명된다.
- 이후 phase를 나눌 수 있을 만큼 비전이 구체적이다.

### 4. target-system-planner

제품 비전을 목표 시스템으로 바꿉니다. 서비스 영역, 역할, 모듈, 워크플로우, 데이터, 권한, 연동 지점을 정의합니다.

사용할 때:

- 완성된 제품을 시스템 단위로 나눠야 할 때
- 관리자 서비스, 사용자 앱, 공통/연동 영역을 먼저 분리해야 할 때
- 모듈, 워크플로우, 데이터 객체가 섞여 있을 때
- phase planning 전에 전체 시스템 경계를 잡아야 할 때

프롬프트:

```text
target-system-planner 스킬을 사용해서 아래 제품 비전을 목표 시스템 정의로 바꿔줘.

제품 비전:
<product-vision-writer 결과 붙여넣기>

산출물의 큰 제목은 한글 (English) 형식으로 작성해줘.
서비스 영역(Admin Service, User App, Shared, Cross-Service),
사용자 역할, 핵심 모듈, 주요 워크플로우, 데이터 객체,
권한 모델, 연동 지점, 시스템 경계, PRD 후보 영역을 정리해줘.
서비스 영역이 불명확한 항목은 열린 질문으로 남겨줘.
```

다음으로 넘어가는 기준:

- 관리자 서비스, 사용자 앱, 공통/연동 영역이 필요한 만큼 구분된다.
- 주요 사용자 역할이 정리되어 있다.
- 핵심 모듈과 워크플로우가 구분된다.
- 데이터와 권한 질문이 드러난다.

### 5. phase-planner

목표 시스템을 MVP, P0/P1/P2, 이후 phase로 나눕니다.

사용할 때:

- “무엇을 먼저 만들지” 정해야 할 때
- MVP와 전체 비전이 섞여 있을 때
- P0가 너무 많아진 상태일 때

프롬프트:

```text
phase-planner 스킬을 사용해서 아래 목표 시스템을 MVP와 페이즈로 나눠줘.

목표 시스템 정의:
<target-system-planner 결과 붙여넣기>

산출물의 큰 제목은 한글 (English) 형식으로 작성해줘.
MVP 정의, P0/P1/P2, 페이즈별 범위, 의존성,
페이즈 종료 기준, 리스크와 트레이드오프, PRD 작성 후보를 정리해줘.
```

다음으로 넘어가는 기준:

- MVP가 “가장 작은 검증 가능한 가치 단위”로 정의된다.
- P0는 출시/검증/리스크 제어에 필수인 항목만 포함한다.
- 첫 PRD 후보가 보인다.

### 6. pm-context

특정 PRD 후보를 제품 브리프로 정리합니다. PRD 작성 직전의 gate입니다.

사용할 때:

- PRD 후보는 있지만 사용자/문제/성공 기준이 흐릴 때
- stakeholder 요청과 사용자 문제가 섞여 있을 때
- PRD 작성 전에 질문을 압축해야 할 때

프롬프트:

```text
pm-context 스킬을 사용해서 아래 PRD 후보를 제품 브리프로 정리해줘.

Phase Plan:
<phase-planner 결과 붙여넣기>

PRD 후보:
<이번에 작성할 PRD 후보>

산출물의 큰 제목은 한글 (English) 형식으로 작성해줘.
대상 사용자, 문제, 목표, 성공 기준, 제약 조건,
확인된 사실, 가정, 리스크, PRD 작성 전 질문을 정리해줘.
질문은 계획에 실질적인 영향을 주는 3-5개만 해줘.
```

다음으로 넘어가는 기준:

- 대상 사용자, 문제, 목표, 성공 기준이 있다.
- 모르는 것은 가정 또는 질문으로 분리되어 있다.
- PRD의 범위가 phase와 연결된다.

### 7. prd-writer

제품 브리프를 PRD로 작성합니다.

사용할 때:

- 문제/목표/범위가 충분히 정리된 뒤
- 디자인/개발/QA가 같은 기준으로 볼 문서가 필요할 때
- 이번 phase에서 만들 것과 만들지 않을 것을 잠가야 할 때

프롬프트:

```text
prd-writer 스킬을 사용해서 아래 브리프를 engineering handoff 가능한 PRD로 작성해줘.

제품 브리프:
<pm-context 결과 붙여넣기>

산출물의 큰 제목은 한글 (English) 형식으로 작성해줘.
요약, 문제 정의, 대상 사용자, 목표, 비목표, 범위, 사용자 스토리,
기능 요구사항, 인수 조건, 성공 지표, 리스크, 의존성,
가정, 열린 질문, 다음 추천 스킬을 포함해줘.
모르는 정보는 지어내지 마.
```

다음으로 넘어가는 기준:

- 목표와 비목표가 분리되어 있다.
- 기능 요구사항이 관찰 가능한 제품 동작으로 쓰여 있다.
- 인수 조건이 테스트 가능하다.

### 8. prd-reviewer

PRD를 build-ready 상태인지 비판적으로 검토합니다.

사용할 때:

- PRD 초안 작성 직후
- 기능 정의, 화면 기획, TRD로 넘어가기 전
- scope creep, metric gap, solution smuggling을 잡아야 할 때

프롬프트:

```text
prd-reviewer 스킬을 사용해서 아래 PRD를 비판적으로 리뷰해줘.

PRD:
<PRD 붙여넣기>

산출물의 큰 제목은 한글 (English) 형식으로 작성해줘.
solution smuggling, metric gap, scope creep, missing non-goals,
dependency risk, untestable acceptance criteria를 찾아줘.
마지막에는 진행 / 수정 / 중단 (Go / Revise / No-go)을 추천해줘.
```

다음으로 넘어가는 기준:

- `Go` 또는 작은 수정 후 진행 가능한 상태다.
- blocker가 있다면 `prd-writer`로 돌아간다.
- 문제/목표/지표/범위가 흔들리면 `pm-context`로 돌아간다.

### 9. feature-definer

PRD를 기능 단위로 구체화합니다.

사용할 때:

- PRD는 명확하지만 기능별 동작/규칙/상태가 부족할 때
- MVP, Later, Out of Scope를 나눠야 할 때
- 페이지 기획 전에 기능 동작을 잠가야 할 때

프롬프트:

```text
feature-definer 스킬을 사용해서 아래 PRD를 기능 정의서로 바꿔줘.

PRD:
<검토된 PRD 붙여넣기>

산출물의 큰 제목은 한글 (English) 형식으로 작성해줘.
MVP 기능, 이후 기능, 범위 제외, 범위 리스크를 나눠줘.
각 MVP 기능마다 서비스 영역(Admin Service, User App, Shared, Cross-Service),
사용자 행동, 제품 동작, 비즈니스 규칙, 권한/역할,
상태, 예외 케이스, 의존성, 성공 신호를 정의해줘.
관리자 서비스와 사용자 앱이 함께 관련된 기능은 연동 지점과 handoff를 분리해줘.
```

다음으로 넘어가는 기준:

- MVP 기능이 과도하게 넓지 않다.
- 각 MVP 기능의 서비스 영역이 설명된다.
- 각 기능의 동작, 규칙, 상태, 권한이 설명된다.
- 페이지 기획에 필요한 행동 단위가 보인다.

### 10. feature-definition-reviewer

기능 정의서가 page-flow-planner로 넘어갈 만큼 안정적인지 비판적으로 검토합니다.

사용할 때:

- feature-definer 산출물 작성 직후
- 페이지 기획, TRD bridge, 티켓 분해 전
- MVP 범위, 동작/규칙/상태/권한/예외 누락을 잡아야 할 때

프롬프트:

```text
feature-definition-reviewer 스킬을 사용해서 아래 기능 정의서를 비판적으로 리뷰해줘.

기능 정의서:
<feature-definer 결과 붙여넣기>

관련 PRD:
<PRD 붙여넣기>

산출물의 큰 제목은 한글 (English) 형식으로 작성해줘.
PRD 추적성, 서비스 영역 분리, MVP scope creep,
Later/Out of Scope 경계, 비즈니스 규칙, 상태,
권한/역할, 예외 케이스, 의존성, 성공 신호,
페이지 기획 전 blocker를 확인해줘.
관리자 서비스와 사용자 앱 책임이 섞인 기능은 blocker로 표시해줘.
마지막에는 진행 / 수정 / 중단 (Go / Revise / No-go)을 추천해줘.
```

다음으로 넘어가는 기준:

- `Go` 또는 작은 수정 후 진행 가능한 상태다.
- blocker가 있으면 `feature-definer`로 돌아간다.
- 서비스 영역이 흔들리면 `target-system-planner`로 돌아간다.
- PRD 기준 자체가 흔들리면 `prd-reviewer` 또는 `prd-writer`로 돌아간다.

### 11. page-flow-planner

기능 정의를 서비스 영역별 interaction surface와 사용자 흐름으로 바꿉니다.

사용할 때:

- 기능은 정의됐지만 어떤 화면과 흐름으로 드러날지 불명확할 때
- page/modal/drawer/sheet/inline/toast/wizard 중 표현 형태를 결정해야 할 때
- interaction surface inventory, states, navigation이 필요할 때
- 관리자 서비스와 사용자 앱 surface가 분리되어야 할 때
- 디자인/프론트엔드 작업 전 흐름을 잠가야 할 때

프롬프트:

```text
page-flow-planner 스킬을 사용해서 아래 검토된 기능 정의서를 interaction surface/flow 기획으로 바꿔줘.

기능 정의서:
<feature-definer 결과 붙여넣기>

기능 정의 리뷰:
<feature-definition-reviewer 결과 붙여넣기>

산출물의 큰 제목은 한글 (English) 형식으로 작성해줘.
관리자 서비스, 사용자 앱, 공통/연동 영역을 먼저 분리해줘.
각 surface마다 표현 형태(Page, Modal, Drawer, Sheet, Popover, Inline Panel, Toast, Wizard),
라우팅 필요 여부, URL 공유/딥링크 필요 여부, 작업 무게,
서비스 영역, 담당 역할, 목적, 주요 행동, 필요한 데이터,
진입 방식, 종료/닫기 방식, 상태 보존 필요 여부, 모바일 대체 패턴,
빈 상태, 로딩 상태, 에러 상태, 권한 상태, 이동 경로, 성공 신호를 정리해줘.
모든 항목을 Page로 가정하지 말고 surface type 판단 근거를 적어줘.
Modal/Drawer/Sheet/Wizard는 닫기, 이탈, focus/keyboard/accessibility 상태를 포함해줘.
공통/연동 플로우가 있으면 트리거, 출발 서비스, 도착 서비스,
전달 데이터, 실패/권한 상태를 별도로 정리해줘.
surface x 기능 x 서비스 매트릭스도 포함해줘.
```

다음으로 넘어가는 기준:

- 모든 MVP 기능이 interaction surface 또는 흐름에 매핑된다.
- 관리자 서비스와 사용자 앱 surface가 구분된다.
- Page/Modal/Drawer/Sheet/Inline/Toast/Wizard 선택 근거가 있다.
- happy path뿐 아니라 empty/loading/error/permission state가 있다.
- 데이터 요구사항이 드러난다.

### 12. page-flow-reviewer

interaction surface/flow 기획이 TRD bridge로 넘어갈 만큼 안정적인지 비판적으로 검토합니다.

사용할 때:

- page-flow-planner 산출물 작성 직후
- 관리자 서비스와 사용자 앱 surface가 섞였는지 확인해야 할 때
- 모든 항목이 Page로 과잉 분류되었는지 확인해야 할 때
- surface-기능 커버리지, 상태, 권한, 연동 흐름을 점검해야 할 때

프롬프트:

```text
page-flow-reviewer 스킬을 사용해서 아래 interaction surface/flow 기획을 비판적으로 리뷰해줘.

Interaction Surface / Flow 기획:
<page-flow-planner 결과 붙여넣기>

기능 정의 리뷰:
<feature-definition-reviewer 결과 붙여넣기>

기능 정의서:
<feature-definer 결과 붙여넣기>

관련 PRD:
<PRD 붙여넣기>

산출물의 큰 제목은 한글 (English) 형식으로 작성해줘.
관리자 서비스와 사용자 앱 분리, surface type 판단,
모든 항목이 Page로 과잉 분류되었는지, surface-기능 커버리지,
상태/권한/내비게이션, 공통/연동 플로우, 데이터 요구사항,
TRD 전 blocker를 확인해줘.
마지막에는 진행 / 수정 / 중단 (Go / Revise / No-go)을 추천해줘.
```

다음으로 넘어가는 기준:

- `Go` 또는 작은 수정 후 진행 가능한 상태다.
- interaction surface/flow blocker가 있으면 `page-flow-planner`로 돌아간다.
- 서비스 영역 자체가 불명확하면 `target-system-planner` 또는 `feature-definer`로 돌아간다.

### 13. prd-to-trd-bridge

PRD와 기능/페이지 기획을 TRD 입력으로 변환하고, TRD 전에 API/data contract를 먼저 잠글지 판단합니다.

사용할 때:

- 제품 요구사항을 기술 계획으로 넘겨야 할 때
- 어떤 시스템/API/데이터/권한에 영향이 있는지 정리해야 할 때
- TRD 작성 전에 engineering questions를 모아야 할 때
- 다음 단계가 `api-data-contract-planner`인지 `trd-writer`인지 판단해야 할 때

프롬프트:

```text
prd-to-trd-bridge 스킬을 사용해서 아래 자료를 TRD 작성용 입력으로 정리해줘.

PRD:
<PRD 붙여넣기>

기능 정의서:
<feature-definer 결과 붙여넣기>

기능 정의 리뷰:
<feature-definition-reviewer 결과 붙여넣기>

페이지/플로우 기획:
<page-flow-planner 결과 붙여넣기>

페이지/플로우 리뷰:
<page-flow-reviewer 결과 붙여넣기>

산출물의 큰 제목은 한글 (English) 형식으로 작성해줘.
제품 요구사항을 기술 영향 영역으로 매핑하고,
예상 영향 시스템, 서비스 영역별 영향, API/데이터 고려사항,
계약 선행 판단, 권한/보안 고려사항, 비기능 요구사항, 엔지니어링 질문을 정리해줘.
관리자 서비스와 사용자 앱의 구현/권한/릴리즈 영향이 다르면 분리해서 작성해줘.
다음은 보통 `api-data-contract-planner`가 적합하다. 특히 여러 서비스,
권한/세션, 삭제/보관, audit/logging, worker/job, file/media,
push/notification, migration/indexing이 관련되면 TRD 작성 전에
API/data contract를 먼저 구체화한다. API/data 영향이 작고 계약이
이미 명확한 경우에만 `trd-writer`로 바로 이동한다.
```

다음으로 넘어가는 기준:

- 주요 제품 요구사항이 기술 영향 영역에 매핑된다.
- TRD 작성 전에 답해야 할 질문이 보인다.
- 요구사항 추적성이 있다.
- 여러 서비스, 권한/세션, 삭제/보관, audit, 결제, 개인정보, 알림, 파일/media, worker/job, migration/indexing이 있으면 `api-data-contract-planner`를 먼저 사용한다.
- 단순 UI-only 변경, backend/data 영향이 거의 없는 변경, API contract가 이미 확정된 변경만 `trd-writer`로 바로 이동한다.

### 14. api-data-contract-planner

API와 데이터 계약을 TRD 전에 상세화합니다. TRD가 API schema, data model, permission boundary, event contract를 추측하지 않도록 서비스 간 계약을 잠그는 단계입니다.

사용할 때:

- 여러 서비스가 같은 요구사항을 나눠 구현할 때
- 권한, 세션, 삭제, audit, 결제, 개인정보, 보관, 알림, 파일/media, worker/job이 관련될 때
- API owner, auth context, data object, event schema, migration/indexing이 불명확할 때
- acceptance criteria가 API/data/event로 검증되어야 할 때
- rollout/rollback이 데이터 상태나 API backward compatibility에 영향을 받을 때

프롬프트:

```text
api-data-contract-planner 스킬을 사용해서 아래 bridge 결과의 API와 데이터 계약을 구체화해줘.

PRD to TRD Bridge:
<prd-to-trd-bridge 결과 붙여넣기>

관련 PRD:
<PRD 붙여넣기>

산출물의 큰 제목은 한글 (English) 형식으로 작성해줘.
이 스킬은 TRD가 API schema, data model, permission boundary,
event contract를 추측하지 않도록, TRD 작성 전에 서비스 간 계약을
잠그는 단계다. TRD는 이 결과를 기반으로 architecture, rollout,
rollback, test plan, observability, performance/security tradeoff를 작성한다.

지원 동작, API 계약, owner service, caller/consumer, 요청/응답,
auth context, reads/writes, 검증, 에러 케이스, 호환성,
서비스 간 책임, 비전형 리소스 계약, 데이터 모델 변경사항,
마이그레이션, 인덱스/성능 메모, 이벤트/분석, 열린 계약 질문을 정리해줘.
gateway, bff, user-service, worker, storage/media, push sender가
각각 어떤 API/data 계약을 지키는지도 분리해줘.
삭제 차단이 있으면 media_fetch, queued_job, running_job,
push_send_target, signed URL 같은 비전형 resource도 contract로 잡아줘.
```

다음으로 넘어가는 기준:

- endpoint owner, request/response, auth context, reads/writes, error behavior가 구체적이다.
- data object, event schema, migration/indexing, compatibility가 정리되어 있다.
- TRD의 Test Plan, Observability, Security Considerations가 이 계약을 기준으로 검증 가능하다.

### 15. trd-writer

TRD를 작성합니다. 제품 결정을 기술 결정으로 바꾸되, 복잡한 API/data 계약은 `api-data-contract-planner` 산출물을 입력으로 받는 것을 기본으로 합니다.

사용할 때:

- PRD와 제품 흐름이 안정된 뒤
- API/data contract가 충분히 정리된 뒤
- 구현 방식, 권한, 관측성, 롤백, 테스트를 정리해야 할 때
- 티켓 생성 전 기술 설계를 잠가야 할 때

프롬프트:

```text
trd-writer 스킬을 사용해서 아래 입력을 기반으로 TRD를 작성해줘.

PRD to TRD Bridge:
<prd-to-trd-bridge 결과 붙여넣기>

API/Data Contract Plan:
<api-data-contract-planner 결과 붙여넣기. API/data 영향이 작고 계약이 이미 명확한 경우에만 생략>

관련 PRD:
<PRD 붙여넣기>

산출물의 큰 제목은 한글 (English) 형식으로 작성해줘.
복수 서비스, 권한/세션, 삭제/보관, audit, worker/job, file/media,
push, migration/indexing이 포함된 요구사항은 api-data-contract-planner
산출물을 먼저 입력으로 받는 것을 기본으로 한다.

기술 요약, 제품 요구사항 추적성, 입력 계약 요약, 아키텍처/접근 방식,
프론트엔드 변경사항, 백엔드/서비스 변경사항, API 계약,
데이터 모델/마이그레이션, 인증/권한, 관측성, 성능/보안,
롤아웃/롤백, 테스트 계획, 리스크와 트레이드오프,
검토한 대안, 열린 기술 질문을 포함해줘.
```

다음으로 넘어가는 기준:

- TRD가 PRD 요구사항을 추적한다.
- 운영 영향이 있는 변경에는 관측성, 롤백, 테스트가 있다.
- contract-heavy work의 Test Plan, Observability, Security Considerations가 API/data/event 계약을 기준으로 검증 가능하다.
- 열린 기술 질문이 숨겨지지 않았다.

### 16. trd-reviewer

TRD가 구현 준비 상태인지 검토합니다.

사용할 때:

- TRD 작성 직후
- API/data contract 반영 여부 또는 티켓 생성 전 구현 준비도를 검토할 때
- 기술 설계의 위험을 잡아야 할 때

프롬프트:

```text
trd-reviewer 스킬을 사용해서 아래 TRD를 비판적으로 리뷰해줘.

TRD:
<TRD 붙여넣기>

관련 PRD:
<PRD 붙여넣기>

API/Data Contract Plan:
<api-data-contract-planner 결과가 있으면 붙여넣기>

산출물의 큰 제목은 한글 (English) 형식으로 작성해줘.
PRD coverage, architecture clarity, API/data contract 반영 여부,
migration risk, auth/security gaps, observability gaps,
rollback weakness, performance risks, insufficient test strategy를 확인해줘.
마지막에는 진행 / 수정 / 중단 (Go / Revise / No-go)을 추천해줘.
```

다음으로 넘어가는 기준:

- 기술 설계가 PRD를 충족한다.
- blocker가 있으면 `trd-writer`로 돌아간다.
- API/data contract가 약하거나 TRD에 반영되지 않았으면 `api-data-contract-planner` 또는 `trd-writer`로 돌아간다.

### 선택. technical-risk-checker

기술 리스크를 점검합니다. 표준 PM/TRD 흐름의 필수 단계가 아니라, 사용자가 명시적으로 요청했거나 데이터 손실, 권한 우회, 마이그레이션 실패, 성능 병목, 관측성 누락, 안전하지 않은 rollout/rollback 리스크가 큰 경우에만 사용합니다.

사용할 때:

- 사용자가 final risk pass를 명시적으로 요청했을 때
- 데이터, 권한, 마이그레이션, 성능, 롤백, 관측성 리스크가 크거나 불명확할 때
- 티켓 생성 전에 별도 risk gate가 필요하다고 판단될 때

프롬프트:

```text
technical-risk-checker 스킬을 사용해서 아래 TRD와 구현 계획의 기술 리스크를 점검해줘.

TRD:
<TRD 붙여넣기>

API/Data Contract Plan:
<api-data-contract-planner 결과가 있으면 붙여넣기>

산출물의 큰 제목은 한글 (English) 형식으로 작성해줘.
data, auth, security, migration, performance, reliability,
observability, rollout, rollback, testing 관점에서 risk matrix를 만들고,
각 리스크의 mitigation, required tests, required monitoring,
blocking 여부를 정리해줘.
```

다음으로 넘어가는 기준:

- blocking risk가 없거나 명확한 owner/mitigation이 있다.
- 필요한 테스트와 모니터링이 정의되어 있다.
- 롤아웃/롤백 준비도가 확인된다.

### 17. spec-to-tickets

PRD와 TRD를 기준으로 개발 티켓 초안을 만듭니다.

사용할 때:

- PRD와 TRD가 review gate를 통과한 뒤
- 개발자가 바로 구현 판단할 수 있는 티켓이 필요할 때
- Jira/Linear/GitHub issue 생성 전 Markdown 초안이 필요할 때

프롬프트:

```text
spec-to-tickets 스킬을 사용해서 아래 자료를 개발 티켓 초안으로 바꿔줘.

PRD:
<최신 PRD 붙여넣기>

TRD:
<최신 TRD 붙여넣기>

기능 정의서:
<feature-definer 결과 붙여넣기>

기능 정의 리뷰:
<feature-definition-reviewer 결과 붙여넣기>

페이지/플로우 기획:
<page-flow-planner 결과 붙여넣기>

페이지/플로우 리뷰:
<page-flow-reviewer 결과 붙여넣기>

API/Data Contract Plan:
<api-data-contract-planner 결과가 있으면 붙여넣기>

선택 기술 리스크 점검:
<technical-risk-checker 결과가 있으면 붙여넣기>

산출물의 큰 제목은 한글 (English) 형식으로 작성해줘.
아직 Jira, Linear, GitHub issue에는 직접 생성하지 마.
Markdown 티켓 초안으로 작성하고 PRD/TRD 추적성,
서비스 영역(Admin Service/User App/Shared/Cross-Service),
review gate에서 발견된 blocker 반영 여부를 포함해줘.
```

다음으로 넘어가는 기준:

- 각 티켓이 PRD/TRD와 연결된다.
- 각 티켓의 서비스 영역과 owner가 드러난다.
- acceptance criteria와 test scenarios가 있다.
- build order가 의존성과 리스크를 반영한다.

### 18. roadmap-prioritizer

여러 phase, feature, ticket group의 우선순위를 정합니다. 표준 문서 작성 흐름의 의무 단계가 아니라, “무엇을 먼저 만들까?”가 실제 문제일 때만 사용합니다.

사용할 때:

- 무엇을 먼저/나중에 할지 정해야 할 때
- stakeholder pressure와 실제 impact를 분리해야 할 때
- 여러 PRD 후보나 티켓 묶음을 비교해야 할 때

프롬프트:

```text
roadmap-prioritizer 스킬을 사용해서 아래 후보들의 우선순위를 정리해줘.

후보:
<페이즈, 기능 후보, 또는 티켓 그룹 붙여넣기>

산출물의 큰 제목은 한글 (English) 형식으로 작성해줘.
RICE, ICE, Kano, impact/effort, dependency-first, risk-first 중
상황에 가장 적절한 기준을 선택해줘.
점수 계산보다 tradeoff 설명을 우선하고,
stakeholder pressure와 user/business impact를 분리해줘.
```

다음으로 넘어가는 기준:

- 추천 순서와 근거가 명확하다.
- 지금 하지 않을 것도 설명된다.
- 다음 검증 단계가 있다.

## 상황별 빠른 흐름 (Common Shortcuts)

제품 전체를 처음 기획할 때:

```text
business-context
-> product-strategy
-> product-vision-writer
-> target-system-planner
-> phase-planner
-> pm-context
-> prd-writer
```

이미 제품 전략과 페이즈가 있고 PRD만 필요할 때:

```text
pm-context
-> prd-writer
-> prd-reviewer
-> feature-definer
-> feature-definition-reviewer
-> page-flow-planner
-> page-flow-reviewer
```

이미 PRD가 있고 TRD가 필요할 때:

```text
prd-reviewer
-> feature-definer
-> feature-definition-reviewer
-> page-flow-planner
-> page-flow-reviewer
-> prd-to-trd-bridge
-> api-data-contract-planner
-> trd-writer
-> trd-reviewer
```

API/DB 변경이 큰 경우:

```text
prd-to-trd-bridge
-> api-data-contract-planner
-> trd-writer
-> trd-reviewer
-> spec-to-tickets
```

고위험 변경이라 별도 risk pass가 필요한 경우:

```text
trd-reviewer
-> technical-risk-checker
-> spec-to-tickets
```

단순 UI-only 변경이거나 backend/data 영향이 거의 없고 API contract가 이미 확정된 경우:

```text
prd-to-trd-bridge
-> trd-writer
-> trd-reviewer
```

기존 문서에서 티켓만 만들고 싶을 때:

```text
prd-reviewer
-> feature-definition-reviewer
-> page-flow-reviewer
-> trd-reviewer
-> spec-to-tickets
```

우선순위만 정하고 싶을 때:

```text
phase-planner
-> roadmap-prioritizer
```

## 되돌아가기 기준 (When To Go Back)

| 문제가 발견된 위치 | 되돌아갈 스킬 |
|---|---|
| 사업 목표나 고객/구매자가 불명확함 | business-context |
| 타깃 세그먼트나 핵심 문제가 흐림 | product-strategy |
| 완성된 제품 경험이 불명확함 | product-vision-writer |
| 모듈/워크플로우/권한/데이터가 섞임 | target-system-planner |
| MVP/P0가 너무 크거나 기준이 없음 | phase-planner |
| PRD 후보의 사용자/문제/성공 기준이 약함 | pm-context |
| PRD 요구사항이나 비목표가 약함 | prd-writer |
| PRD build-readiness가 부족함 | prd-reviewer |
| 기능 동작/규칙/상태가 불명확함 | feature-definer |
| 기능 정의 리뷰에서 blocker가 발견됨 | feature-definer |
| interaction surface 상태나 사용자 흐름이 비어 있음 | page-flow-planner |
| interaction surface/flow 리뷰에서 blocker가 발견됨 | page-flow-planner |
| 관리자 서비스와 사용자 앱 경계가 불명확함 | target-system-planner |
| PRD 요구사항과 기술 영향이 연결되지 않음 | prd-to-trd-bridge |
| API/DB 계약이 구현하기에 부족함 | api-data-contract-planner |
| API owner, auth context, data object, event schema, migration/indexing이 불명확함 | api-data-contract-planner |
| TRD의 구현/롤백/테스트 전략이 약함 | trd-writer |
| 선택 risk pass에서 blocking technical risk가 있음 | technical-risk-checker |

## 최종 품질 체크리스트 (Final Quality Checklist)

- 사업 목표와 제품 목표가 연결되어 있는가?
- 제품 전략이 첫 타깃 사용자와 하지 않을 것을 분명히 하는가?
- 제품 비전이 여러 PRD를 묶을 수 있을 만큼 선명한가?
- 목표 시스템이 역할, 모듈, 워크플로우, 데이터, 권한을 설명하는가?
- 페이즈가 MVP/P0/P1/P2와 종료 기준을 구분하는가?
- 모든 문서가 문서 번호, 버전, 상태, 범위, 적용 skill, 도메인, 스킬 단계, 기반 문서를 기록하는가?
- 기반 문서가 파일명과 문서 버전을 함께 기록하는가?
- PRD가 문제, 목표, 비목표, 성공 지표, 범위, 인수 조건을 포함하는가?
- 기능 정의가 사용자 행동, 제품 동작, 규칙, 권한, 상태를 설명하는가?
- 기능 정의 리뷰가 PRD 추적성, MVP 범위, 상태/권한/예외 누락을 잡았는가?
- interaction surface 기획이 관리자 서비스와 사용자 앱을 구분하고 surface type, happy path, 예외 상태를 모두 다루는가?
- page-flow-reviewer가 서비스 분리, surface type 과잉/누락, surface-기능 커버리지, 상태/권한/연동 누락을 잡았는가?
- prd-to-trd-bridge가 TRD 직행 가능 여부와 API/data contract 선행 필요 여부를 판단했는가?
- API/data contract가 validation, error, auth, compatibility를 포함하는가?
- 복수 서비스, 권한/세션, 삭제/보관, audit, worker/job, file/media, push, migration/indexing 변경이 TRD 전에 contract로 잠겼는가?
- TRD가 PRD 요구사항과 API/data/event 계약을 추적하고 구현/관측성/롤백/테스트를 설명하는가?
- 고위험 변경이면 technical risk가 mitigation, tests, monitoring으로 이어지는가?
- 티켓이 PRD와 TRD를 모두 기준으로 작성되는가?
