# Production Candidate Recovery Journal
Status: DISTRIBUTION CORE
Purpose: close the crash window between a consequential side effect and THREAD checkpoint/reporting.

For every consequential operation before execution, durably record operation_id/idempotency_key, thread_id, intended effect, target owner, authority_signature, phase=PREPARED.
External effect invocation MUST carry the same idempotency key when the target supports it.
After invocation, record effect receipt/evidence and phase=EFFECT_OBSERVED before advancing THREAD.
Then run mandatory verification. Only after verification PASS may THREAD advance and journal become VERIFIED/COMMITTED.

Restart reconciliation:
- PREPARED with no authoritative effect evidence: query owning SoT/target by idempotency key. If effect absent, operation may execute once; if presence cannot be determined, BLOCKED/UNSCORABLE for that operation, never blind replay.
- PREPARED/EFFECT_OBSERVED with effect present: do not re-execute; restore evidence, perform/continue verification, then checkpoint.
- VERIFIED/COMMITTED: never replay.
- authority is re-resolved before any not-yet-performed action; old authority_signature cannot grant.
Journal is external durable state and is never rewound by release rollback.
