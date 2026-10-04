# Production Candidate Router Contract
Status: DISTRIBUTION CORE
Input: alias or canonical_role_id.
Algorithm:
1. If input is canonical ID, resolve exactly one ROLE_REGISTRY row.
2. Otherwise resolve exactly one ALIASES row, then resolve its canonical ID.
3. Load mode_contract and participant_binding from ROLE_REGISTRY only.
4. Authority/profile/resource signatures are resolved after routing from their responsible registries. Alias metadata is never included in authority calculation.
5. Zero or multiple matches => BLOCKED/UNKNOWN_IDENTITY.
Output: canonical_role_id, mode_contract, participant_binding, alias_used(optional).
Invariant: replacing participant_binding or deployment environment cannot change canonical_role_id or MODE authority.
