# POSCORE

POSCORE는 ProjectOS의 **배포 원본**입니다.

중요: 이 공개 저장소를 개인 ProjectOS의 작업 저장소로 직접 사용하지 않습니다. 처음 사용할 때 자기 GitHub에 별도의 ProjectOS 저장소를 만든 뒤 POSCORE의 Core 파일을 그 저장소로 가져가고, 이후 모든 개인 설정·문서·프로젝트 연결·자원 등록은 **자기 저장소에서만** 수행합니다.

## 처음 사용하는 경우

### 1. 자기 ProjectOS 저장소를 준비합니다

GitHub에 자신이 소유한 별도 저장소를 만듭니다. 개인 운영정보가 기록될 수 있으므로 기본 권장은 **Private 저장소**입니다.

예:

```text
내 GitHub
└─ ProjectOS   ← 실제로 사용하는 저장소

crjester/POSCORE
└─ 배포 원본   ← 직접 운영하지 않음
```

POSCORE의 Core를 자기 저장소로 복제한 뒤부터는 `crjester/POSCORE`가 아니라 **자기 ProjectOS 저장소가 운영 Source of Truth**입니다.

### 2. ChatGPT 사용자 지정 지침을 연결합니다

ChatGPT에서 GitHub를 연결한 뒤 **설정 → 개인 설정의 사용자 지정 지침**에 아래 문구를 넣습니다. `<내 GitHub 계정>/<내 ProjectOS 저장소>` 부분은 자신의 실제 저장소 주소로 바꿉니다.

```text
ProjectOS를 사용할 때에는 연결된 GitHub의
<내 GitHub 계정>/<내 ProjectOS 저장소>
저장소를 외부 진입점이자 운영 Source of Truth로 사용한다.

사용자가 "SYS-MODE 적용", "DEV-MODE 적용", "ED-MODE 적용", "도움말",
ProjectOS 상태 확인, 초기 상태 비교 또는 복구를 요청하면:

1. 연결된 GitHub에서 위의 개인 ProjectOS 저장소에 접근한다.
2. 현재 README.md를 먼저 읽는다.
3. README.md가 지정하는 최신 부팅 절차, 역할 등록부와 역할 프로필을 실제로 읽고 따른다.
4. 세션 기억이나 이전 대화만으로 ProjectOS 또는 MODE를 재구성하지 않는다.
5. 필요한 외부 자료에 접근할 수 없으면 임의로 추정하지 말고 접근 불가 또는 DEGRADED 상태를 알린다.
6. 실제 외부 부팅 절차가 완료되기 전에는 MODE 적용 완료 또는 READY라고 선언하지 않는다.
7. 개인 문서, 자원 등록, 상태 변경 및 ProjectOS 운영 변경은 배포 원본 POSCORE가 아니라 위의 개인 ProjectOS 저장소에 기록한다.

ProjectOS와 관계없는 일반 요청은 평소처럼 처리한다.
```

### 3. 새 채팅에서 부팅합니다

```text
SYS-MODE 적용
```

SYS가 **자기 ProjectOS 저장소**의 README, Common Boot와 SYS Profile을 실제로 읽으면 최초 연결이 성공한 것입니다.

> `crjester/POSCORE`를 가리킨 상태로 개인 운영을 시작하지 마세요. POSCORE는 배포/업데이트 원본이고 사용자별 변경사항을 저장하는 장소가 아닙니다.

자세한 설치 계약은 `docs/INSTALL.md`, 사용자 지정 지침 템플릿은 `bootstrap/CHATGPT_INSTRUCTIONS.md`에 있습니다.

## 기본 MODE

- `SYS-MODE 적용` — ProjectOS 자체의 초기 설정, 점검, 오류 수정, 기준 상태 비교와 복구
- `DEV-MODE 적용` — 평상시 개발, 서버 작업, 필요한 실행환경 구축, 배포와 검증
- `ED-MODE 적용` — 문서, 설명서, 기록, 편집 및 게시 작업
- `도움말` — 간단한 사용 안내

MODE 이름을 기억하지 못해도 괜찮습니다. 원하는 작업을 자연어로 말하면 ProjectOS가 적절한 역할을 안내하도록 설계합니다.

## MODE 간 소통

Operational Messaging은 POSCORE의 핵심 기능입니다. SYS·DEV·ED는 서로 다른 채팅 세션이어도 영속 메시지를 통해 작업을 인계할 수 있습니다.

각 MODE는 부팅할 때 자기 앞으로 온 미완료 메시지 요약을 확인하지만 자동으로 실행하지 않습니다. 사용자가 메시지 처리를 지시하면 최신 메시지를 다시 조회한 뒤 처리합니다.

새 환경에서는 SYS가 현재 환경에 맞는 소통 백엔드를 구축하고 SYS/DEV/ED 간 송수신을 검증합니다. 소통 기능이 준비되지 않은 설치는 완전한 READY가 아니라 DEGRADED로 취급합니다.

## 역할 구분

### SYS-MODE
ProjectOS 자체를 관리하는 보수적인 시스템 관리자입니다. 초기 설정, Core 무결성, 부팅 경로, 자원 등록, 기준 상태 비교와 복구를 담당합니다.

### DEV-MODE
평상시 개발과 기술 작업을 담당합니다. 필요한 개발·실행환경이 없으면 현재 환경을 조사하고 필요한 최소 환경을 구축·검증한 뒤 원래 작업을 계속합니다.

### ED-MODE
문서, 설명서, 작업 기록, 편집 및 게시용 콘텐츠를 담당합니다. 블로그는 POSCORE의 필수 구성요소가 아닙니다.

## 저장소 역할

```text
crjester/POSCORE                 사용자 GitHub/ProjectOS
[공개 배포 원본]       ─────→     [개인 운영본]
Core/기준 배포                     개인 자원 Registry
업데이트 기준                      개인 프로젝트 연결
개인 상태 기록 금지                문서/운영 상태
                                  개인 Operational Messaging 연결
```

POSCORE에는 특정 사용자의 서버, 블로그, 프로젝트, 계정 정보, IP 주소, 인증정보, 운영 DB 또는 현재 실행 상태를 기록하지 않습니다.

## 복구

`baseline/MANIFEST.md`가 Core 복구 범위를 정의합니다. SYS는 사용자 프로젝트·데이터·인증정보·외부 서비스를 임의로 덮어쓰지 않습니다.

## 라이선스

현재 별도의 오픈소스 라이선스를 부여하지 않았습니다. 저장소는 공개되어 내용을 볼 수 있지만, 일반적인 복제·재배포·수정 권한을 별도 라이선스로 허가한 상태는 아닙니다.
