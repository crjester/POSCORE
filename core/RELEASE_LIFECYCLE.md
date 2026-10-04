# Production Candidate Release Lifecycle
Status: DISTRIBUTION CORE

State outside release payload:
ACTIVE -> release_id|null
LAST_KNOWN_GOOD -> release_id|null
PENDING -> release_id|null
transition journal -> phase, from, to, previous_lkg

INSTALL/UPDATE:
1. PRECHECK candidate manifest/checksum/compatibility and external binding schema. Failure: no pointer change.
2. STAGE candidate into inactive slot; verify staged bytes/checksum. Candidate becomes immutable.
3. Set PENDING=candidate and durable journal phase=PREPARED. ACTIVE unchanged.
4. Atomically replace ACTIVE pointer with candidate release_id; journal phase=SWITCHED. There is no intermediate mixed ACTIVE.
5. Boot candidate through its production ENTRYPOINT and run release smoke using normal production contracts/bindings.
6. Smoke PASS: set LAST_KNOWN_GOOD=candidate; clear PENDING; journal=COMMITTED.
7. Smoke FAIL or crash recovery before COMMITTED: rollback ACTIVE to previous valid LKG/from release; boot/smoke it; clear PENDING only after recovery is durable. Failed candidate remains immutable/inactive for evidence.

CRASH RECOVERY:
- journal PREPARED + ACTIVE=old => old remains active; discard/retain staged candidate inactive.
- journal SWITCHED/PENDING + candidate ACTIVE without COMMITTED smoke => candidate is untrusted; restore previous_lkg/from before serving normal work.
- ACTIVE pointer value/checksum invalid => never boot it; recover LKG.
- recovery never rewinds external durable state.

ROLLBACK:
Explicit rollback atomically changes ACTIVE to a verified immutable target release. It never changes THREAD/MESSAGE/project/service/runtime/publication/research stores. After switch, boot target normally and resume THREAD under target current authority/compatibility. If THREAD incompatible, BLOCKED; do not delete/rewind it.

IDEMPOTENCY:
Repeating install/update/rollback against the same release/journal converges on the same pointer/state and does not duplicate external effects.
