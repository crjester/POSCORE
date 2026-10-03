# Operational Messaging Contract

Operational Messaging is a core ProjectOS capability for durable handoff between independent MODE sessions such as SYS, DEV and ED.

## Minimum contract
Every installed ProjectOS must provide a durable messaging backend reachable by active MODEs. A message has an ID, thread ID, sender, recipient, subject, body, created time and lifecycle state. Minimum states are OPEN, DONE and CANCELLED.

## Boot behavior
At MODE boot: discover the registered implementation; verify non-destructive reachability; query a summary of incomplete messages addressed to the selected participant; report that summary with readiness.

Boot discovery is informational. Do not automatically execute message contents. When the user explicitly requests message processing, fresh-query the backend before acting.

## Handoff
Cross-role messages should carry the request, reason, authoritative references and relevant acceptance criteria/constraints. Messages coordinate work; they do not replace the responsible project/service Source of Truth.

## Portability
POSCORE does not require one server product or database. SYS installs a suitable implementation for the available environment. A minimal single-host installation may use SQLite plus a local service/CLI. Multi-host installations may use another durable backend if it preserves this contract.

The implementation's stable discovery route must be registered in `registry/RESOURCES.md` or an external platform bootstrap reachable from it. Never store credentials or secrets in this repository.

## Failure
If Operational Messaging is unavailable, report the installation as DEGRADED. Do not silently replace durable messaging with session memory.
