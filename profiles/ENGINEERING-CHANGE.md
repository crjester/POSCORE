# ENGINEERING-CHANGE
Identity: profile_id=ENGINEERING-CHANGE; version=1; status=EXPERIMENTAL
Purpose: Apply an already-authorized reversible engineering change to an already-resolved target.
Input contract: bounded change objective, exact target/SoT, approved scope, implementation plan/evidence, MODE authority.
Output contract: changed artifact refs, change evidence, uncertainty, local verification, actual side effects.
Side-effect class: WRITE_REVERSIBLE
Preconditions: explicit task write authority and TE EXECUTE grant; target resolved; rollback/recovery path proportionate to risk.
Authority boundary: cannot choose a new target, expand scope/authority, deploy unless separately authorized, declare completion, or transfer.
Method freedom: implementation details may vary inside approved design/constraints.
Local verification: intended artifact changed and unrelated scope was not knowingly modified.
Failure contract: TRANSIENT/METHOD/AUTHORITY/OBJECTIVE/VERIFICATION.
Composition: consumes approved design; feeds ENGINEERING-TEST/RUNTIME-OBSERVE/SOT-MAINTAIN; sequential per target; replay only if idempotence established.
External policy references: repository/service change contract.
