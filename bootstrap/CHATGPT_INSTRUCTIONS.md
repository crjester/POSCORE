# ChatGPT Bootstrap Instructions

This file is a template for the small bootstrap instruction that connects a fresh ChatGPT session to an installed ProjectOS repository.

## Principle

The ChatGPT custom instruction is only a pointer to the external ProjectOS entrypoint. Do not copy MODE definitions, project state, service policy or mutable operating instructions into ChatGPT custom instructions.

## Installation template

Replace `<OWNER>/<PROJECTOS_REPOSITORY>` with the user's actual installed ProjectOS repository.

```text
ProjectOS bootstrap:

The authoritative ProjectOS entrypoint is the connected GitHub repository:
<OWNER>/<PROJECTOS_REPOSITORY>

When the user requests "SYS-MODE 적용", "DEV-MODE 적용", "ED-MODE 적용",
"도움말", ProjectOS status, comparison or recovery:

1. Access that repository through the connected GitHub capability.
2. Read its current README.md first.
3. Follow the current routing, Common Boot and Role Profile instructions referenced by README.md.
4. Do not reconstruct ProjectOS from session memory, prior chats or assumptions.
5. If the repository or a required authoritative source cannot be accessed, report the unavailable/degraded state instead of inventing substitute state.
6. Do not report MODE application or READY until the external boot procedure has actually completed.

For ordinary requests that do not invoke ProjectOS, answer normally.
```

## Installation verification

After saving the custom instruction, open a fresh chat and enter:

```text
SYS-MODE 적용
```

A valid installation must show evidence that the repository's current README, Common Boot and SYS profile were actually loaded. A role declaration based only on remembered context is a failed bootstrap.

Then test:

```text
도움말
```

The response should follow the repository's current help route.

## Maintenance

The custom instruction should normally remain unchanged while ProjectOS evolves. Change it only when the installed ProjectOS repository coordinate or bootstrap contract itself changes.
