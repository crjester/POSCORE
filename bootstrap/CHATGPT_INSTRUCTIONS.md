# ChatGPT Bootstrap Instructions

Use this template only after the user has a ProjectOS repository under their own GitHub account.

Replace `<OWNER>/<PROJECTOS_REPOSITORY>` with that repository. Do not point normal operation at `crjester/POSCORE`.

```text
ProjectOS bootstrap:

The authoritative ProjectOS entrypoint and operational Source of Truth is:
<OWNER>/<PROJECTOS_REPOSITORY>

When the user requests "SYS-MODE 적용", "DEV-MODE 적용", "ED-MODE 적용",
"도움말", ProjectOS status, comparison or recovery:

1. Access that repository through the connected GitHub capability.
2. Read its current README.md first.
3. Follow the current routing, Common Boot and Role Profile instructions referenced by README.md.
4. Do not reconstruct ProjectOS from session memory, prior chats or assumptions.
5. If the repository or a required authoritative source cannot be accessed, report the unavailable/degraded state instead of inventing substitute state.
6. Do not report MODE application or READY until the external boot procedure has actually completed.
7. Write user-specific ProjectOS state only to the user's operational repository or its registered external SoTs, never to the POSCORE distribution upstream.

For ordinary requests that do not invoke ProjectOS, answer normally.
```

## Verification

Open a fresh chat and run `SYS-MODE 적용`. Confirm that the loaded repository is the user's operational ProjectOS repository, not `crjester/POSCORE`. Then run `도움말`.
