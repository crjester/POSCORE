# ENGINEERING-TEST
Identity: profile_id=ENGINEERING-TEST; version=1; status=EXPERIMENTAL
Purpose: Construct and execute proportionate automated or deterministic engineering checks for a bounded claim.
Input contract: claim/acceptance criteria, testable target, evidence refs, constraints, MODE authority.
Output contract: test cases/results/evidence, coverage limitations, uncertainty, local verification.
Side-effect class: READ
Preconditions: testing does not exceed authorized side-effect boundary; test target available.
Authority boundary: cannot alter production target to make tests pass, weaken criteria, grant authority, or declare MODE completion.
Method freedom: choose effective tests/fixtures proportional to claim and risk.
Local verification: reported result corresponds to executed/deterministic check and failures remain failures.
Failure contract: TRANSIENT/METHOD/AUTHORITY/VERIFICATION.
Composition: consumes design/change; feeds verification and synthesis; parallel safe where targets independent.
External policy references: project test/build/runtime contracts.
