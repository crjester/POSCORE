# POSCORE Recovery
Use immutable release references and core/RELEASE_LIFECYCLE.md.
- Never boot an invalid checksum or uncommitted switched release.
- On failed update/smoke, restore the previous verified LKG before normal work.
- Rollback changes release selection only; it does not rewind THREAD, MESSAGE, project/service/runtime/publication/research state.
- Resume durable THREAD under current authority; incompatible state is BLOCKED, never guessed.
- If normal entry is unavailable, use core/MANUAL_BOOTSTRAP.md and documented external recovery coordinates.
