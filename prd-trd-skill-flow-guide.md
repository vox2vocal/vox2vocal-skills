# PRD / TRD 스킬 사용 가이드

## 권장 전체 플로우

이 스킬 세트는 아이디어를 바로 개발 티켓으로 바꾸는 도구가 아닙니다. PRD와 TRD를 분리해서, 제품 관점의 결정과 기술 관점의 결정을 순서대로 관리하는 기획 파이프라인입니다.

```text
1. pm-context
2. prd-writer
3. prd-reviewer
4. feature-definer
5. page-flow-planner
6. prd-to-trd-bridge
7. trd-writer
8. trd-reviewer
9. api-data-contract-planner
10. technical-risk-checker
11. spec-to-tickets
12. roadmap-prioritizer
```

핵심 원칙:

- PRD는 "왜 만들고, 무엇을 만들고, 성공을 어떻게 판단할지"를 다룹니다.
- TRD는 "어떻게 안전하게 만들고, 어떤 기술 계약과 리스크를 관리할지"를 다룹니다.
- PRD와 TRD가 충분히 검토된 뒤에 개발 티켓으로 내려갑니다.

## 문서 경계

| 문서 | 소유 관점 | 답하는 질문 | 포함할 내용 |
|---|---|---|---|
| PRD | Product / PM | 왜, 누구를 위해, 무엇을 만들까? | 문제, 사용자, 목표/비목표, 기능 요구사항, 성공 지표, 사용자 흐름 |
| TRD | Engineering | 어떻게 안전하게 만들까? | 아키텍처, API, 데이터 모델, 권한, 마이그레이션, 관측성, 테스트, 롤백 |

## 1. pm-context

아이디어가 아직 거칠거나 제품 기획의 출발점이 명확하지 않을 때 가장 먼저 사용합니다.

초점:

- 대상 사용자
- 사용자 문제
- 제품 목표
- 제약 조건
- 성공 기준
- 근거와 가정

프롬프트:

```text
pm-context 스킬을 사용해서 아래 아이디어를 제품 기획 브리프로 정리해줘.

아이디어:
<아이디어 붙여넣기>

계획에 실질적인 영향을 주는 질문만 해줘.
Known Facts, Assumptions, Risks, Recommended Next Skill을 분리해서 정리해줘.
```

## 2. prd-writer

제품 브리프가 충분히 정리된 뒤, 개발팀에 전달 가능한 PRD를 만들 때 사용합니다.

초점:

- 문제 정의
- 목표와 비목표
- 범위
- 사용자 스토리
- 기능 요구사항
- 인수 조건
- 성공 지표
- 리스크와 의존성

프롬프트:

```text
prd-writer 스킬을 사용해서 아래 브리프를 engineering handoff 가능한 PRD로 작성해줘.

브리프:
<pm-context 결과 붙여넣기>

Goals, Non-goals, Scope, User Stories, Functional Requirements,
Acceptance Criteria, Success Metrics, Risks, Dependencies,
Open Questions, Assumptions를 포함해줘.
모르는 정보는 지어내지 말고 Open Questions 또는 Assumptions에 남겨줘.
```

## 3. prd-reviewer

PRD를 기능 정의와 TRD 준비로 넘기기 전에 품질을 점검합니다.

초점:

- solution smuggling
- 약하거나 빠진 성공 지표
- 불명확한 사용자/문제
- scope creep
- 누락된 non-goals
- 의존성 리스크
- 테스트 불가능한 인수 조건

프롬프트:

```text
prd-reviewer 스킬을 사용해서 아래 PRD를 비판적으로 리뷰해줘.

PRD:
<PRD 붙여넣기>

칭찬보다 실행 가능한 critique를 우선해줘.
solution smuggling, metric gap, scope creep, missing non-goals,
dependency risk, untestable acceptance criteria를 찾아줘.
마지막에는 Go / No-go 추천을 내려줘.
```

## 4. feature-definer

PRD가 검토되고 수정된 뒤, 기능 정의를 합니다. 여기서 MVP와 Later를 분리합니다.

초점:

- MVP 기능
- Later 기능
- Out of Scope
- 사용자 행동
- 제품 동작
- 비즈니스 규칙
- 권한과 역할
- 상태와 예외 케이스
- 의존성
- 성공 신호

프롬프트:

```text
feature-definer 스킬을 사용해서 아래 PRD를 기능 정의서로 바꿔줘.

PRD:
<수정된 PRD 붙여넣기>

기능을 MVP, Later, Out of Scope로 나눠줘.
각 MVP 기능마다 user action, product behavior, business rules,
permissions, states, edge cases, dependencies, success signal을 정의해줘.
불명확한 요구사항은 Open Questions로 남겨줘.
```

## 5. page-flow-planner

기능 동작이 명확해진 뒤, 페이지와 사용자 흐름을 기획합니다. 이 단계는 시각 디자인이 아니라 화면 구조와 흐름 정의에 집중합니다.

초점:

- 페이지 목록
- 페이지 목적
- 주요/보조 행동
- 필요한 데이터
- 주요 컴포넌트
- 빈 상태, 로딩 상태, 에러 상태, 권한 상태
- 진입/이탈 경로
- Page x Feature matrix

프롬프트:

```text
page-flow-planner 스킬을 사용해서 아래 기능 정의서를 페이지/플로우 기획으로 바꿔줘.

기능 정의서:
<feature-definer 결과 붙여넣기>

각 페이지마다 purpose, primary action, secondary actions, required data,
key components, empty/loading/error/permission states, navigation,
success signal을 정의해줘.
Primary User Flow, Alternate Flows, UX Risks, Open Questions,
Page x Feature Matrix를 포함해줘.
```

## 6. prd-to-trd-bridge

PRD/기능 정의/페이지 기획을 TRD 작성 가능한 기술 입력 패키지로 바꿉니다.

초점:

- 제품 요구사항과 기술 영향 영역 매핑
- 프론트엔드/백엔드/API/데이터/인프라/워커/분석 영향 분리
- 비기능 요구사항 도출
- TRD 전에 답해야 할 엔지니어링 질문 정리

프롬프트:

```text
prd-to-trd-bridge 스킬을 사용해서 아래 PRD, 기능 정의서, 페이지 기획을 TRD 작성용 입력으로 정리해줘.

PRD:
<PRD 붙여넣기>

기능 정의서:
<feature-definer 결과 붙여넣기>

페이지/플로우 기획:
<page-flow-planner 결과 붙여넣기>

Product requirement를 technical impact area로 매핑하고,
affected systems, API/data considerations, permission/security considerations,
nonfunctional requirements, engineering questions를 정리해줘.
```

## 7. trd-writer

TRD 본문을 작성합니다. 제품 요구사항을 만족하는 기술 구조, 구현 방식, 계약, 리스크 관리 방식을 정리합니다.

초점:

- 기술 요약
- 요구사항 추적성
- 아키텍처와 구현 접근
- 프론트엔드/백엔드/API/데이터 변경
- 권한
- 마이그레이션
- 관측성
- 성능/보안
- 롤아웃/롤백
- 테스트 전략

프롬프트:

```text
trd-writer 스킬을 사용해서 아래 입력을 기반으로 TRD를 작성해줘.

PRD to TRD Bridge:
<prd-to-trd-bridge 결과 붙여넣기>

관련 PRD:
<PRD 붙여넣기>

Technical Summary, Product Requirement Traceability, Architecture / Approach,
Frontend Changes, Backend / Service Changes, API Contract, Data Model / Migration,
Auth / Permissions, Observability, Performance / Security Considerations,
Rollout / Rollback Plan, Test Plan, Risks and Tradeoffs,
Alternatives Considered, Open Technical Questions를 포함해줘.
모르는 기술 정보는 가정하지 말고 Open Technical Questions에 남겨줘.
```

## 8. trd-reviewer

TRD를 구현 전에 비판적으로 검토합니다.

초점:

- PRD 요구사항 누락
- 불명확한 아키텍처
- API/data contract gap
- 마이그레이션 리스크
- 권한/보안 누락
- 관측성 부족
- 롤백 취약성
- 테스트 전략 부족

프롬프트:

```text
trd-reviewer 스킬을 사용해서 아래 TRD를 비판적으로 리뷰해줘.

TRD:
<TRD 붙여넣기>

관련 PRD:
<PRD 붙여넣기>

PRD coverage, architecture clarity, API/data contract gaps,
migration risk, auth/security gaps, observability gaps,
rollback weakness, performance risks, insufficient test strategy를 확인해줘.
마지막에는 Go / Revise / No-go 추천을 내려줘.
```

## 9. api-data-contract-planner

API나 데이터 모델 변경이 있는 경우에만 사용합니다. 작은 UI-only 변경이라면 생략할 수 있습니다.

초점:

- endpoint
- request/response
- validation
- error case
- auth/permission
- backward compatibility
- DB schema
- migration
- index
- event/analytics payload

프롬프트:

```text
api-data-contract-planner 스킬을 사용해서 아래 TRD의 API와 데이터 계약을 구체화해줘.

TRD:
<TRD 붙여넣기>

필요한 endpoint, request/response shape, validation, error cases,
auth/permission, backward compatibility, data model changes,
migration plan, indexing, events/analytics를 정리해줘.
불명확한 계약은 Open Contract Questions에 남겨줘.
```

## 10. technical-risk-checker

TRD 리뷰 후, 티켓으로 쪼개기 전에 기술 리스크를 점검합니다.

초점:

- 데이터 손상
- 권한 우회
- 보안 문제
- 마이그레이션 실패
- 성능 병목
- 관측성 부족
- 안전하지 않은 롤아웃
- 약한 롤백
- 테스트되지 않은 예외 케이스

프롬프트:

```text
technical-risk-checker 스킬을 사용해서 아래 TRD와 구현 계획의 기술 리스크를 점검해줘.

TRD:
<TRD 붙여넣기>

API/Data Contract Plan:
<api-data-contract-planner 결과가 있으면 붙여넣기>

data, auth, security, migration, performance, reliability,
observability, rollout, rollback, testing 관점에서 risk matrix를 만들고,
각 리스크의 mitigation, required tests, required monitoring,
blocking 여부를 정리해줘.
```

## 11. spec-to-tickets

PRD와 TRD가 안정된 뒤, 개발 티켓 초안을 만듭니다.

초점:

- Epic
- Story
- Acceptance Criteria
- Edge Case
- Test Scenario
- Dependency
- Suggested Build Order

프롬프트:

```text
spec-to-tickets 스킬을 사용해서 아래 PRD/TRD 기반 개발 티켓 초안을 작성해줘.

PRD:
<최신 PRD 붙여넣기>

기능 정의서:
<feature-definer 결과 붙여넣기>

페이지/플로우 기획:
<page-flow-planner 결과 붙여넣기>

TRD:
<최신 TRD 붙여넣기>

기술 리스크 점검:
<technical-risk-checker 결과 붙여넣기>

아직 Jira, Linear, GitHub issue에는 직접 생성하지 마.
Markdown 티켓 초안으로 작성하고, 각 티켓에 acceptance criteria,
edge cases, test scenarios, dependencies, suggested build order를 포함해줘.
```

## 12. roadmap-prioritizer

여러 기능, 이니셔티브, 티켓 묶음 중 무엇을 먼저 할지 정할 때 사용합니다.

초점:

- 추천 순서
- 근거
- 트레이드오프
- 근거 부족 영역
- 리스크
- 다음 검증 단계

프롬프트:

```text
roadmap-prioritizer 스킬을 사용해서 아래 기능 또는 티켓 후보들의 우선순위를 정리해줘.

후보:
<기능 후보 또는 티켓 그룹 붙여넣기>

RICE, ICE, Kano, impact/effort 중 상황에 가장 적절한 프레임워크를 선택해줘.
점수 계산보다 tradeoff 설명을 우선해줘.
stakeholder pressure와 user/business impact를 분리해서 설명해줘.
```

## 실무 운영 패턴

새 제품 아이디어를 기획할 때:

```text
아이디어
-> pm-context
-> prd-writer
-> prd-reviewer
-> PRD 수정
-> feature-definer
-> page-flow-planner
-> prd-to-trd-bridge
-> trd-writer
-> trd-reviewer
-> api-data-contract-planner, 필요할 때만
-> technical-risk-checker
-> spec-to-tickets
-> roadmap-prioritizer
```

이미 PRD가 있을 때:

```text
기존 PRD
-> prd-reviewer
-> feature-definer
-> page-flow-planner
-> prd-to-trd-bridge
-> trd-writer
-> trd-reviewer
-> spec-to-tickets
```

이미 TRD가 있을 때:

```text
기존 TRD
-> trd-reviewer
-> api-data-contract-planner, 필요할 때만
-> technical-risk-checker
-> spec-to-tickets
```

UI-only 변경일 때:

```text
pm-context
-> prd-writer
-> feature-definer
-> page-flow-planner
-> prd-to-trd-bridge
-> trd-writer, 짧게
-> spec-to-tickets
```

API/DB 변경이 큰 경우:

```text
prd-to-trd-bridge
-> trd-writer
-> api-data-contract-planner
-> trd-reviewer
-> technical-risk-checker
-> spec-to-tickets
```

## 품질 체크리스트

- PRD가 사용자 문제, 목표, 비목표, 성공 지표를 분리하는가?
- PRD에 모르는 내용이 가정 또는 open question으로 남아 있는가?
- 기능 정의에서 MVP와 Later가 분리되어 있는가?
- 페이지 기획에서 empty/loading/error/permission state가 필요한 만큼 정의되어 있는가?
- TRD가 PRD 요구사항을 추적할 수 있게 매핑하는가?
- TRD에 API, 데이터, 권한, 마이그레이션, 관측성, 테스트, 롤백이 필요한 만큼 포함되어 있는가?
- 기술 리스크가 티켓 또는 TRD 수정 항목으로 이어지는가?
- 개발 티켓이 PRD와 TRD를 모두 참조하는가?

## 한 줄 요약

이 스킬 세트는 PRD로 제품 결정을 고정하고, TRD로 기술 결정을 검증한 뒤, 두 문서를 함께 기준으로 개발 티켓을 만드는 흐름입니다.
