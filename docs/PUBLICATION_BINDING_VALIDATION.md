# Publication Fresh Install / Binding Validation
Baseline: POSCORE 48934c6004583a19fd75784621925fb0dc1e9882.
Frozen Core/MODE/PROFILE/VERIFICATION files: unchanged.

Scenarios:
1. Fresh install with platform.publication absent -> UNBOUND; ProjectOS boot PASS.
2. Editorial write/review/candidate before publication -> PASS without publication connector.
3. Publish request while UNBOUND -> BLOCKED_RESOURCE/UNBOUND; no fake publication_ref.
4. Bind isolated adapter to logical platform.publication -> BOUND_READY; canonical role/profile contracts unchanged.
5. Authenticated/writable binding but no task PUBLICATION-EXECUTE authority -> BLOCKED_AUTHORITY.
6. Explicit authority + exact target -> one publish, publication_ref/evidence recorded as PUBLICATION_STATE.
7. Publication result cannot overwrite PROJECT_STATE -> PASS.
8. Restart -> binding coordinate re-resolved from installation config; publication_ref recovered through adapter; no session-memory dependency.
9. Existing publication service binding -> probe/connect only; existing records unchanged.
10. Two installations with different adapters/endpoints -> independent publication resources, same logical capability/contracts.

Verdict after isolated simulation: PASS.
