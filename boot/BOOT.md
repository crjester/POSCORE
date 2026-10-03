# POSCORE Common Boot

## Purpose

Restore the minimum trustworthy operating context for the selected role, then stop. Boot establishes routes; it does not eagerly restore every project.

## Authority

External Sources of Truth outrank session memory. POSCORE does not depend on remembered prior chats as an authoritative definition of a MODE or project state.

If a required authoritative source is unavailable, conflicting or incomplete, report DEGRADED rather than inventing missing state.

## Sequence

1. Resolve the exact user command through `profiles/REGISTRY.md`.
2. Load `registry/RESOURCES.md`.
3. Load the selected Role Profile.
4. Discover connected capabilities needed by that profile using non-destructive probes.
5. Report the selected role, reachable resources and READY/DEGRADED state.
6. Load project/service/runtime state only when the actual task requires it.

## Source classes

- POSCORE — boot, role routing, core profiles, recovery rules and stable discovery coordinates.
- Project SoT — architecture, decisions, roadmap, code and project state.
- Environment/Service SoT — durable infrastructure and service policy.
- Live runtime — evidence of what is actually installed or running.
- Publication — presentation output; never a substitute for project truth.

Keep STATE, HISTORY, RUNTIME and PUBLICATION distinct.

## Environment principle

Do not assume a specific PC, VM, operating system, directory layout, language runtime, container engine or hosting provider.

When an authorized task needs a missing environment:
1. inspect the current host and connected resources;
2. reuse a suitable existing environment when possible;
3. define the minimum required change;
4. install/configure only what is necessary;
5. verify the environment before relying on it;
6. perform the task;
7. record durable environment/discovery information in its responsible SoT.

Destructive operations, credential changes, access-control changes, irreversible migrations and broad system replacement require explicit user approval.

## Completion

Never report success from intent alone. Separate implementation, automated verification, live verification and user acceptance where applicable.
