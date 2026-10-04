# Production Candidate Resource Resolver
Status: DISTRIBUTION CORE
Input: canonical_role_id, participant_binding, required resource set, environment binding map, probe results.
Rules:
- resolve resource_id -> binding_key -> environment coordinate;
- execute only declared minimum non-destructive probe;
- missing/failed required => BLOCKED;
- missing/failed optional => DEGRADED for affected capability;
- READY only if all required resources pass;
- relocation changes environment binding only, never MODE contract;
- participant-specific downstream binding is an input to Platform discovery, not authority;
- ignore/reject any resource metadata purporting to grant PROFILE/task/side-effect authority;
- registry entries containing mutable runtime/message/project state or credentials are invalid.
Output: resource readiness and coordinates, never authority grants.
