# VERIFY-PROMOTION
Identity: verification_id=VERIFY-PROMOTION; version=1; status=EXPERIMENTAL
Claim / gate: a candidate may be promoted/activated under the responsible project contract.
Applicability trigger: any promotion/activation decision.
Required evidence: exact candidate/version; all prerequisite verification results; current external immutable promotion/activation contract; required approvals/state.
Invariants: PROFILE output cannot activate itself; publication is not promotion; gate cannot be changed by candidate under evaluation.
Evaluation rule: PASS only when external contract requirements are satisfied; FAIL on violated gate; BLOCKED on missing authority/approval/contract evidence.
Output: standard verification envelope.
Lifecycle effect: PASS permits TL promotion decision only within separately granted authority; verification performs no activation.
