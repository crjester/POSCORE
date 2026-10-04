# Production Candidate MESSAGE <-> THREAD Bridge
Status: DISTRIBUTION CORE
Input: fresh MESSAGE, current THREAD store, current router/role registry, current permission resolver.

PROCESS:
1. Fresh-read message; validate receiver and message version.
2. Check idempotency_key in processing ledger before any material execution.
3. If thread_id supplied, validate that objective/correlation/receiver lineage matches. Wrong link => BLOCKED/LINK_MISMATCH; never attach by guess.
4. If no thread exists for a new REQUEST, create exactly one THREAD with current receiver role, objective reference and current authority snapshot. Link message after durable THREAD creation.
5. ACK records message handling only.
6. Before work, re-resolve current canonical role and authority. Message/payload/old THREAD cannot widen it.
7. Checkpoint THREAD after each material transition and record ledger disposition before reporting durable progress.
8. RESPONSE links to the same correlation/thread only after validation; it cannot close THREAD.
9. Message COMPLETE means communication handling complete. THREAD may remain ACTIVE/BLOCKED/VERIFIED; THREAD COMPLETED requires its own mandatory verification.

TRANSFER:
1. Sender checkpoints current THREAD and creates transfer envelope with parent_thread/evidence/objective/constraints/next_action and idempotency key.
2. Resolve receiver canonical role from current registry; receiver re-resolves current authority.
3. Create/link child or transferred THREAD preserving parent/evidence lineage; transfer grants no authority.
4. Receiver unavailable/unauthorized => transfer BLOCKED; sender checkpoint remains authoritative.
5. Duplicate transfer => return existing transfer/thread, no duplicate work.
6. Bound transfer loops: same correlation may cross role boundary at most 3 unresolved transfers; next attempt => ESCALATED.

RESTART:
Fresh boot loads current authority, then THREAD + ledger. If a message was ACKed but material step not checkpointed, resume from THREAD next_action. If ledger records completed material effect/verified step, do not replay it. Conflicting message vs newer THREAD => THREAD execution state wins; message may be marked stale/answered separately.
