# VERIFY-NO-LOOKAHEAD
Identity: verification_id=VERIFY-NO-LOOKAHEAD; version=1; status=EXPERIMENTAL
Claim / gate: decision/evaluation uses only information eligible at its decision cutoff.
Applicability trigger: point-in-time historical replay, prospective decision, or predictive research claim.
Required evidence: decision cutoff; timestamped input provenance; transformation availability timing; source availability where material.
Invariants: hindsight/look-ahead prohibited; unavailable historical microstructure/order-book evidence cannot be reconstructed as fact.
Evaluation rule: PASS if every material input was available by cutoff; FAIL if any material future information leaks; BLOCKED if timing cannot be established.
Output: standard verification envelope.
Lifecycle effect: PASS permits result to be treated as point-in-time eligible.
