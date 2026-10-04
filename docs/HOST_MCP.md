# Host MCP 설치 가이드
이 문서는 ProjectOS가 사용자 PC/VM에 연결될 때의 일반 배포 기준이다. 특정 IP, 계정, 키, Tunnel ID 또는 개인 경로를 POSCORE에 기록하지 않는다.

## 원칙
- Host MCP는 선택적 environment binding이며 Core authority를 부여하지 않는다.
- 필요한 최소 도구만 노출한다.
- Tunnel/API Key와 SSH private key는 저장소에 커밋하지 않는다.
- 자동기동은 하나의 서비스가 소유하도록 하며 중복 tunnel을 만들지 않는다.
- 설치 후 프로세스, tunnel, MCP ping/status, 실제 명령 전달, 재부팅 후 자동복구를 검증한다.
- 범용 command + passwordless sudo는 강한 권한이므로 신뢰된 개인 관리 환경에서만 사용한다.
- Host MCP 준비 후 resource binding은 사용자의 ProjectOS/환경 SoT에 등록하며 POSCORE upstream에는 기록하지 않는다.

호스트 장애 시 먼저 자연 상태의 service/journal/process/port 증거를 확보하고 원인 확인 전 반복 restart로 증거를 지우지 않는다.
