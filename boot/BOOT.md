# ProjectOS Core Production Boot
1. Resolve alias/canonical role through core/ALIASES.md and core/ROLE_REGISTRY.md.
2. Load core/RESOURCE_REGISTRY.md plus the user's environment bindings; run only declared non-destructive probes.
3. Load the MODE contract and core/PERMISSIONS.md; calculate current effective authority. Alias/resource/participant context cannot widen authority.
4. Discover the user's Platform/resources through registered bindings. Required failure => BLOCKED; optional failure => DEGRADED.
5. Boot-only requests do not load project/task SoT or THREAD.
6. Task requests lazily load only required authoritative SoT.
7. Resume loads durable THREAD, restores objective/progress/verification/next_action and applies stricter current authority without replaying verified work.
8. Missing/corrupt/incompatible required state => BLOCKED/ESCALATED; never reconstruct from session memory.

Operational Messaging discovery is informational. Explicit processing must fresh-read message state and use core/MESSAGE_THREAD_BRIDGE.md. Completion always requires applicable verification.
