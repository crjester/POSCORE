# VERIFY-ML-LEARNING-UPDATE
Identity: verification_id=VERIFY-ML-LEARNING-UPDATE; version=1; status=EXPERIMENTAL
Claim / gate: a proposed learning-state transition follows the frozen rule using only matured eligible evidence.
Applicability trigger: any model/base/policy/reliability learning-state change.
Required evidence: prior state/version; frozen learning rule/version; ordered matured evidence; eligibility/authority per evidence item; proposed next state/hash; applied/ignored lineage.
Invariants: immature/ineligible/zero-authority evidence cannot create a positive update; past evidence/output is immutable; rule/threshold cannot change from observed outcome; update cannot cross unauthorized axis.
Evaluation rule: PASS when deterministic transition exactly follows the frozen rule; FAIL on ineligible evidence, rule mutation or hidden cross-axis update; BLOCKED when state/rule/evidence lineage is incomplete.
Output: standard verification envelope.
Lifecycle effect: PASS permits supervising MODE to consider committing the separately authorized next state; verification performs no mutation.