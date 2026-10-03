# Host MCP 설치 가이드

이 문서는 ProjectOS가 PC/VM을 직접 관리할 수 있도록 **OpenAI Tunnel + Host MCP**를 구성하는 기준 절차와 검증 방법을 정리한다.

특정 사용자의 IP, 계정, API Key, Tunnel ID, SSH Key는 기록하지 않는다. 아래 경로와 이름은 예시이며 실제 설치 환경에 맞게 바꾼다.

## 목표

최종 상태는 다음과 같다.

```text
ChatGPT
  ↓
OpenAI Tunnel
  ↓
Host MCP (stdio)
  ↓
사용자 PC/VM
  ↓
파일 작업 / 명령 실행 / 필요한 경우 sudo
```

호스트가 재부팅되어도 사람이 SSH로 Tunnel을 다시 실행하지 않아야 한다.

## 1. 사람의 초기 부트스트랩 범위

처음 한 번은 사람이 호스트에 접속하여 다음을 준비한다.

1. OpenAI Tunnel 생성
2. Tunnel Client 설치
3. Tunnel용 제한 API Key 준비
4. Host MCP 실행환경 준비
5. Tunnel + MCP 수동 연결 검증
6. systemd 자동기동 구성
7. 재부팅 자동복구 검증

재부팅 검증까지 통과하면 이후 일반 서버 관리는 ProjectOS의 DEV/SYS가 Host MCP를 통해 수행할 수 있다.

## 2. Host MCP

Python 가상환경을 권장한다.

예시:

```text
/home/<USER>/mcp-host/
├─ .venv/
└─ server.py
```

Host MCP에는 환경 목적에 맞는 최소 도구만 제공한다. 일반적인 관리 호스트라면 다음 범주를 고려할 수 있다.

- 연결 확인: `ping`
- 시스템 상태: `status`
- 디렉터리 조회
- 파일 읽기/쓰기
- 명령 실행

임의 명령 실행과 비대화형 sudo를 함께 허용하면 사실상 호스트 전체 관리 권한이 된다. 개인 관리 서버에는 유용하지만 외부 공개용 MCP에는 그대로 적용하지 않는다.

## 3. Tunnel Client 수동 검증

Tunnel Client가 stdio MCP를 실행하도록 한다.

중요한 점은 **MCP 실행 명령 전체를 하나의 `--mcp.command` 인자로 전달하는 것**이다.

개념 예:

```bash
./tunnel-client-runtime-cloudflared run \
  --log.format struct-text \
  --mcp.command="channel=main,command=/home/<USER>/mcp-host/.venv/bin/python /home/<USER>/mcp-host/server.py"
```

정상 로그에서는 MCP 명령에 Python뿐 아니라 `server.py`까지 포함되어야 한다.

잘못된 예:

```text
stdio MCP command started ... command=/home/<USER>/.../python
```

정상 예:

```text
stdio MCP command started ... command="/home/<USER>/.../python /home/<USER>/.../server.py"
```

Python만 실행되면 프로세스가 살아 있어 보여도 MCP 요청에 응답하지 못하고 `command response deadline reached`가 반복될 수 있다.

## 4. systemd 자동기동

Tunnel과 stdio Host MCP를 **하나의 systemd 서비스가 소유**하도록 구성하는 것을 권장한다.

예시:

```ini
[Unit]
Description=ProjectOS OpenAI Tunnel and Host MCP
After=network-online.target
Wants=network-online.target

[Service]
Type=simple
User=<USER>
Group=<GROUP>
WorkingDirectory=/home/<USER>/tunnel-client
EnvironmentFile=/home/<USER>/.config/projectos/tunnel.env
Environment=HOME=/home/<USER>
ExecStart=/home/<USER>/tunnel-client/tunnel-client-runtime-cloudflared run --log.format struct-text "--mcp.command=channel=main,command=/home/<USER>/mcp-host/.venv/bin/python /home/<USER>/mcp-host/server.py"
Restart=always
RestartSec=5

[Install]
WantedBy=multi-user.target
```

적용:

```bash
sudo systemctl daemon-reload
sudo systemctl enable <SERVICE>
sudo systemctl start <SERVICE>
```

### systemd의 따옴표 주의

수동 shell 실행과 systemd의 `ExecStart` 파싱은 동일하지 않다.

`--mcp.command` 내부에 공백이 있으므로 위 예시처럼 전체 인자를 묶어야 한다. 적용 후 반드시 실제 자식 프로세스가 다음 형태인지 확인한다.

```text
.../.venv/bin/python .../server.py
```

## 5. 중복 자동기동 금지

같은 Tunnel Client를 실행하는 systemd 서비스가 두 개 존재하면 둘 다 기본 health 포트 `127.0.0.1:8080`을 사용하려 할 수 있다.

대표 증상:

```text
listen tcp 127.0.0.1:8080: bind: address already in use
```

이 경우 한 서비스는 정상 실행되고 다른 서비스는 `Restart=always` 때문에 무한 재시작할 수 있다.

확인 예:

```bash
sudo ss -ltnp 'sport = :8080'
ps -ef | grep -E 'tunnel-client|cloudflared' | grep -v grep
systemctl list-units --type=service --all | grep -Ei 'tunnel|projectos|cloudflared'
```

**Tunnel + Host MCP의 자동기동 소유자는 하나만 남긴다.**

## 6. 단계별 검증

### A. 프로세스

systemd 서비스가 `active (running)`이어야 한다.

Tunnel Client와 Host MCP 자식 프로세스가 모두 보여야 한다.

### B. Tunnel

로그에서 다음 흐름을 확인한다.

- MCP channel route resolved
- dispatcher channels registered
- stdio MCP command started
- health server listening
- control-plane poller started
- tunnel metadata fetched

### C. ChatGPT

연결된 MCP에서 최소 다음을 실행한다.

1. `ping`
2. `status`
3. 필요한 경우 임시 파일 write/read
4. 관리 호스트라면 `whoami`
5. sudo를 허용한 구성이라면 `sudo -n true`

파일 테스트는 테스트 파일만 사용하고 검증 후 제거한다.

### D. 재부팅

마지막 합격 기준이다.

1. 재부팅 전 MCP `ping` 정상
2. Host MCP를 통해 호스트 재부팅
3. 사람이 SSH로 서비스 시작 명령을 실행하지 않음
4. 재부팅 후 MCP `ping` 정상
5. MCP `status` 정상
6. systemd 서비스 `active (running)`
7. 서비스 `enabled`
8. Tunnel을 통한 실제 명령 전달 확인

이 조건을 모두 만족하면 **사람의 Host MCP 부트스트랩은 완료**된 것으로 본다.

## 7. 장애 진단 순서

연결이 안 된다고 바로 서비스를 재시작하지 않는다. 자연 상태의 증거를 먼저 확보한다.

```bash
sudo systemctl --no-pager --full status <SERVICE>
sudo journalctl -b -u <SERVICE> --no-pager
sudo ss -ltnp 'sport = :8080'
ps -ef | grep -E 'tunnel-client|server.py' | grep -v grep
```

판단 기준:

- `address already in use`: 중복 Tunnel/서비스 우선 조사
- `command response deadline reached`: 요청은 Tunnel까지 왔지만 MCP 응답이 돌아오지 않는 상태. 실제 MCP 실행 명령과 자식 프로세스를 확인
- 서비스는 active인데 ChatGPT 응답 없음: control-plane 및 stdio MCP 로그 확인
- 재부팅 후 inactive/failed: enable 상태와 해당 boot의 journal 확인

원인을 확인하기 전에 kill/restart를 반복하면 재부팅 직후의 증거가 사라질 수 있다.

## 8. 보안 원칙

- Tunnel/API Key는 저장소에 커밋하지 않는다.
- 환경파일 권한을 제한한다.
- Tunnel용 API Key는 필요한 권한만 부여한다.
- SSH 개인키를 ProjectOS 저장소에 저장하지 않는다.
- 범용 `run_command` + passwordless sudo는 강력한 관리 권한이다. 신뢰된 개인 관리 환경에서만 사용한다.
- 공개 서비스용 MCP는 가능한 한 allowlist 기반의 좁은 도구로 분리한다.

## 9. 완료 후 ProjectOS 인계

Host MCP 자동복구까지 검증되면 사람의 SSH 작업을 종료하고 다음 작업부터 DEV/SYS에 인계한다.

권장 순서:

```text
Host MCP 자동복구 완료
  ↓
ProjectOS 운영환경 구축
  ↓
Operational Messaging 신규 구축
  ↓
SYS / DEV / ED 송수신 검증
  ↓
사용자 ProjectOS RESOURCES 등록
  ↓
애플리케이션/블로그/DB 구축
```

기존 다른 사용자의 Operational Messaging DB나 개인 운영 상태를 복사하지 않는다.
