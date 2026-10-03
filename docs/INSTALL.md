# POSCORE Installation

POSCORE separates the public distribution source from each user's installed ProjectOS.

## Human bootstrap boundary

A new user must establish enough external access for ChatGPT to reach durable state. The minimum practical bootstrap is:

1. connect GitHub to ChatGPT;
2. create/select the user's ProjectOS repository;
3. when host execution is required, connect an authorized PC/VM through an appropriate MCP capability;
4. initialize the user's ProjectOS from POSCORE;
5. generate the ChatGPT custom instruction from `bootstrap/CHATGPT_INSTRUCTIONS.md`;
6. save that small pointer in ChatGPT custom instructions;
7. verify from a fresh chat with `SYS-MODE 적용` and `도움말`.

After this boundary, SYS/DEV should perform ordinary environment construction through connected capabilities rather than requiring the user to manually reproduce setup commands.

## Distribution versus installed state

- POSCORE public repository: distribution and recovery source.
- User ProjectOS repository: the user's operational ProjectOS SoT.
- Project repositories/services: remain separate responsible SoTs.
- PC/VM runtime: execution evidence, not the sole source of truth.

Do not require a specific cloud provider, PC, VM, operating system or hosting product.

## Safety

Never place API keys, SSH private keys, passwords, tunnel secrets or personal runtime data in POSCORE or generated custom instructions.
