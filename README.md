# POSCORE

POSCORE는 ProjectOS의 **배포 원본**입니다.

중요: 이 공개 저장소를 개인 ProjectOS의 작업 저장소로 직접 사용하지 않습니다. 처음 사용할 때 자기 GitHub에 별도의 ProjectOS 저장소를 만든 뒤 POSCORE의 Core 파일을 그 저장소로 가져가고, 이후 모든 개인 설정·문서·프로젝트 연결·자원 등록은 **자기 저장소에서만** 수행합니다.

## 처음 사용하는 경우

복잡하게 설치할 필요는 없습니다.

### 1. GitHub에 빈 저장소를 하나 만듭니다

자신의 GitHub에 ProjectOS용 빈 저장소를 하나 만듭니다. 개인 운영정보가 기록될 수 있으므로 **Private 저장소를 권장**합니다.

저장소 이름은 자유입니다. 예:

```text
MyProjectOS
ProjectOS
POS
```

### 2. ChatGPT에 GitHub를 연결합니다

ChatGPT가 자신의 GitHub 저장소를 읽고 쓸 수 있도록 GitHub 연결을 준비합니다.

### 3. ChatGPT에게 그대로 요청합니다

아래 문장에서 `내저장소이름`만 방금 만든 저장소 이름으로 바꿉니다.

```text
https://github.com/crjester/POSCORE 을 내 내저장소이름 저장소로 복사해서 ProjectOS로 초기화해줘.
```

예:

```text
https://github.com/crjester/POSCORE 을 내 MyProjectOS 저장소로 복사해서 ProjectOS로 초기화해줘.
```

ChatGPT는 POSCORE를 **배포 원본**으로 읽고, 실제 운영에 사용할 Core를 사용자의 저장소로 복사해야 합니다. 이후 개인 설정, 문서, 자원 등록, 프로젝트 연결과 운영 상태는 공개 POSCORE가 아니라 사용자의 ProjectOS 저장소에 기록합니다.

> GitHub 연결에서 저장소 생성 기능을 사용할 수 없는 경우가 있으므로 빈 저장소는 사용자가 먼저 만드는 것을 기본 절차로 합니다.

### 4. 사용자 지정 지침을 설정합니다

초기화가 끝나면 ChatGPT에게 다음과 같이 요청합니다.

```text
내 ProjectOS를 새 채팅에서도 부팅할 수 있도록 ChatGPT 사용자 지정 지침에 넣을 문구를 만들어줘.
```

생성된 문구는 **공개 `crjester/POSCORE`가 아니라 자신의 ProjectOS 저장소를 가리켜야 합니다.** 사용자 지정 지침에는 MODE의 세부 내용을 복사하지 않고 개인 ProjectOS의 외부 진입점만 둡니다.

원본 템플릿은 `bootstrap/CHATGPT_INSTRUCTIONS.md`에 있습니다.

### 5. 새 채팅에서 확인합니다

사용자 지정 지침을 저장한 뒤 새 채팅을 열고:

```text
SYS-MODE 적용
```

을 입력합니다.

SYS가 **자신의 ProjectOS 저장소**에서 README, Common Boot와 SYS Profile을 실제로 읽으면 연결이 성공한 것입니다.

이후:

```text
도움말
```

로 기본 사용법을 확인할 수 있습니다.

> `crjester/POSCORE`는 배포와 업데이트를 위한 원본입니다. 개인 ProjectOS의 작업 저장소로 직접 사용하지 않습니다.

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
