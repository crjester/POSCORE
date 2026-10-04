# Production Candidate Failure Recovery Contract
Status: DISTRIBUTION CORE
Recovery order:
1. Establish trusted release via ACTIVE/LKG journal rules.
2. Boot normal production entrypoint; resolve current role/resources/permissions.
3. Load only required durable THREAD/message/migration/recovery journals.
4. Reconcile any PREPARED consequential operation through RECOVERY_JOURNAL_CONTRACT before executing work.
5. Resume exact durable next_action; mandatory verification remains required.
6. Persist recovery transition before reporting it.

Failure semantics:
- root/MODE/required registry/platform missing => BLOCKED or LKG/manual recovery when structurally applicable.
- project SoT required read unavailable => BLOCKED; never cached guess.
- SoT write failure => no success/checkpoint advance; reconcile by operation id before retry.
- optional messaging unavailable => DEGRADED unless task message-dependent, then BLOCKED.
- authority denied => BLOCKED_AUTHORITY.
- verification failure => incomplete; bounded retry/replan only, never completion.
- corrupt/incompatible THREAD => BLOCKED/ESCALATED.
- migration interruption resumes from migration journal/source checksums; source remains immutable.
- transfer interruption preserves sender checkpoint and reconciles receiver child/idempotency before creation/retry.
- repeated restart must converge to same recovery signature.
