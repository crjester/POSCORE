# VERIFY-ML-REPRODUCIBILITY
Identity: verification_id=VERIFY-ML-REPRODUCIBILITY; version=1; status=EXPERIMENTAL
Claim / gate: the experiment/result can be reconstructed under its declared deterministic contract.
Applicability trigger: reproducible research claim, learning-state transition, restart or promotion consideration.
Required evidence: versioned code/method refs; input/data/partition identities; candidate/model ids; seed/order where applicable; checkpoint/state refs; expected and reproduced signatures. Missing required durable inputs => BLOCKED.
Invariants: expected signatures are immutable during verification; session memory is not authoritative state; nondeterminism must be declared and bounded by the frozen contract.
Evaluation rule: PASS on contract-equivalent reproduced signatures/state/output; FAIL on unexplained deterministic mismatch; BLOCKED when required reconstruction inputs are unavailable.
Output: standard verification envelope.
Lifecycle effect: PASS permits reproducibility-dependent claim/transition consideration.