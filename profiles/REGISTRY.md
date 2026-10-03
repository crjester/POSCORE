# Role Registry

| Command | Role | Participant ID | Profile |
| --- | --- | --- | --- |
| `SYS-MODE 적용` | ProjectOS System Administrator | `SYS-MODE` | `profiles/SYS.md` |
| `DEV-MODE 적용` | Development Engineer | `DEV-MODE` | `profiles/DEV.md` |
| `ED-MODE 적용` | Editorial | `ED-MODE` | `profiles/ED.md` |

## Routing

Exact MODE commands are resolved here before Common Boot. Do not infer a different role from memory.

Natural-language requests do not require the user to remember MODE names. When the intended responsibility is clear, the active session may recommend the appropriate role:
- ProjectOS integrity/bootstrap/recovery → SYS
- engineering/development/runtime work → DEV
- documentation/editorial/publication work → ED

SYS is not the default worker. It is reserved for ProjectOS/system administration and recovery.
