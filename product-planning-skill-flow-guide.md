# 제품 기획 스킬 사용 가이드 (Product Planning Skill Flow Guide)

## 핵심 목적 (Core Purpose)

이 스킬 세트의 목적은 문서를 많이 만드는 것이 아니라, `무엇을 만들지`에 대한 기준이 위에서 아래까지 흔들리지 않게 내려오도록 하는 것입니다.

```text
사업 이유
-> 제품 전략
-> 완성된 시스템
-> 페이즈 / MVP / P0
-> PRD
-> 기능 / 페이지 흐름
-> TRD
-> 티켓 / 로드맵
```

## 권장 전체 플로우 (Recommended End-to-End Flow)

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
10. page-flow-planner
11. prd-to-trd-bridge
12. trd-writer
13. trd-reviewer
14. api-data-contract-planner
15. technical-risk-checker
16. spec-to-tickets
17. roadmap-prioritizer
```

## 단계별 잠금 결정 (Locked Decisions by Stage)

| 단계 (Stage) | 스킬 (Skill) | 잠그는 결정 (Locked Decision) |
|---|---|---|
| 사업 (Business) | business-context | 왜 이 제품을 해야 하는가 |
| 전략 (Strategy) | product-strategy | 누구의 어떤 문제를 먼저 풀 것인가 |
| 비전 (Vision) | product-vision-writer | 완성된 제품 경험은 무엇인가 |
| 시스템 (System) | target-system-planner | 어떤 모듈/역할/워크플로우로 구성되는가 |
| 페이즈 (Phase) | phase-planner | MVP/P0와 이후 페이즈는 무엇인가 |
| 브리프 (Brief) | pm-context | 이번 PRD의 문제/목표/성공 기준은 무엇인가 |
| PRD | prd-writer | 이번에 무엇을 만들고 무엇은 만들지 않는가 |
| PRD 검토 (PRD Review) | prd-reviewer | PRD가 빌드 준비 상태인가 |
| 기능 (Feature) | feature-definer | MVP 기능의 동작/규칙/상태는 무엇인가 |
| 페이지 (Page) | page-flow-planner | 어떤 화면과 흐름으로 사용자가 완료하는가 |
| TRD 연결 (TRD Bridge) | prd-to-trd-bridge | 제품 요구사항이 어떤 기술 영역에 영향을 주는가 |
| TRD | trd-writer | 어떻게 안전하게 구현할 것인가 |
| TRD 검토 (TRD Review) | trd-reviewer | 기술 설계가 구현 준비 상태인가 |
| 계약 (Contracts) | api-data-contract-planner | API/데이터 계약은 무엇인가 |
| 리스크 (Risk) | technical-risk-checker | 어떤 기술 리스크를 막아야 하는가 |
| 티켓 (Tickets) | spec-to-tickets | 개발자가 어떤 순서로 구현할 것인가 |
| 로드맵 (Roadmap) | roadmap-prioritizer | 무엇을 먼저/나중에 할 것인가 |

## 사용 원칙 (Operating Principles)

- 다음 단계는 이전 단계의 결정을 바꾸지 않고 구체화해야 합니다.
- 이전 단계가 흔들리면 앞으로 밀지 말고 해당 단계로 되돌아갑니다.
- PRD는 제품 결정 문서이고 TRD는 기술 결정 문서입니다.
- 티켓은 PRD와 TRD가 검토된 뒤에 작성합니다.
- 산출물의 큰 제목은 항상 `한글 (English)` 형식으로 작성합니다.

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
-> page-flow-planner
```

이미 PRD가 있고 TRD가 필요할 때:

```text
prd-reviewer
-> feature-definer
-> page-flow-planner
-> prd-to-trd-bridge
-> trd-writer
-> trd-reviewer
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

## 품질 체크리스트 (Quality Checklist)

- 사업 목표와 제품 목표가 연결되어 있는가?
- 제품 전략이 타깃 사용자와 하지 않을 것을 분명히 하는가?
- 제품 비전이 여러 PRD를 묶을 수 있을 만큼 선명한가?
- 목표 시스템이 역할, 모듈, 워크플로우, 데이터, 권한을 설명하는가?
- 페이즈가 MVP/P0/P1/P2와 종료 기준을 구분하는가?
- PRD가 문제, 목표, 비목표, 성공 지표, 범위, 인수 조건을 포함하는가?
- 기능 정의가 사용자 행동, 제품 동작, 규칙, 권한, 상태를 설명하는가?
- 페이지 기획이 happy path와 예외 상태를 모두 다루는가?
- TRD가 PRD 요구사항을 추적하고 구현/관측성/롤백/테스트를 설명하는가?
- 티켓이 PRD와 TRD를 모두 기준으로 작성되는가?
