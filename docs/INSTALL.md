# POSCORE Installation

## Repository model

POSCORE is the distribution upstream, not a shared operational repository.

Each user must operate from a repository they control:

```
crjester/POSCORE (distribution upstream)
        ↓ initial copy / authorized distribution
USER/ProjectOS (operational SoT)
        ↓
user-specific resources, state and projects
```

Never register user-specific resources, documents, runtime state or credentials in the upstream POSCORE repository.

## Human bootstrap boundary

1. Connect GitHub to ChatGPT.
2. Create/select a user-owned ProjectOS repository. Private is recommended for normal personal operation.
3. Populate that repository with the POSCORE core.
4. Point ChatGPT custom instructions to the **user-owned repository**, using `bootstrap/CHATGPT_INSTRUCTIONS.md`.
5. When host execution is required, connect an authorized PC/VM through an appropriate MCP capability.
6. Start a fresh chat and run `SYS-MODE 적용`.
7. SYS initializes user-specific resources and Operational Messaging only in the user's environment/SoTs.
8. Verify `도움말` and SYS/DEV/ED boot behavior.

After installation, POSCORE remains an upstream distribution/recovery reference. It is not the destination for normal user writes.

## Safety

Never place API keys, SSH private keys, passwords, tunnel secrets or personal runtime data in POSCORE or generated custom instructions.
