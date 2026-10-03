# Resource Registry

This file is POSCORE's stable address book. It records discovery coordinates and ownership, not mutable runtime state or credentials.

## Core resources

| Resource | Responsibility | Location |
| --- | --- | --- |
| POSCORE entrypoint | Session entry and overview | `README.md` |
| Common Boot | Shared boot behavior | `boot/BOOT.md` |
| Role Registry | MODE routing | `profiles/REGISTRY.md` |
| SYS Profile | Core administration/recovery | `profiles/SYS.md` |
| DEV Profile | Development/runtime work | `profiles/DEV.md` |
| ED Profile | Editorial/documentation work | `profiles/ED.md` |
| Help | User-facing command reminder | `help/HELP.md` |
| Baseline manifest | Core recovery contract | `baseline/MANIFEST.md` |
| ChatGPT bootstrap template | Fresh-session entry pointer | `bootstrap/CHATGPT_INSTRUCTIONS.md` |
| Installation guide | Human/bootstrap boundary | `docs/INSTALL.md` |

## Connected resources

A fresh distribution intentionally starts without owner-specific hosts, repositories, services or paths.

Add a connected resource only after it has been actually discovered/verified. Record stable coordinates and responsibility only. Never record passwords, API keys, private keys, temporary tokens or copied mutable downstream policy here.

## Maintenance

If a resource has its own authoritative bootstrap or documentation, register the stable route to that authority instead of duplicating its internal details here.
