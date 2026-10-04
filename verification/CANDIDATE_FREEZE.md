# VERIFY-CANDIDATE-FREEZE
Identity: verification_id=VERIFY-CANDIDATE-FREEZE; version=1; status=EXPERIMENTAL
Claim / gate: candidate and judging gate were fixed before evaluation.
Applicability trigger: historical/prospective candidate evaluation.
Required evidence: immutable candidate id/version; frozen evaluation plan/gate; freeze timestamp/version relation.
Invariants: candidate cannot change the gate that judges itself; post-result mutation creates a new candidate/version.
Evaluation rule: PASS on unambiguous pre-evaluation freeze; FAIL on mutation/leakage; BLOCKED if freeze evidence absent.
Output: standard verification envelope.
Lifecycle effect: PASS permits candidate evaluation to count as eligible evidence.
