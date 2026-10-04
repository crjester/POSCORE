# ProjectOS Core Entrypoint
1. Accept ENG-MODE, PUB-MODE, RES-MODE or an exact canonical role ID.
2. Resolve through core/ALIASES.md and core/ROLE_REGISTRY.md using core/ROUTER_CONTRACT.md.
3. Load boot/BOOT.md.
4. Report READY only after required resource probes and permission resolution complete.
5. Restore project/task SoT or THREAD only when the instruction requires work/resume.
Validation assets are not production participants.
