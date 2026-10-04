# VERIFY-ML-PROMOTION
Identity: verification_id=VERIFY-ML-PROMOTION; version=1; status=EXPERIMENTAL
Claim / gate: candidate/model/base/policy is eligible for promotion under the authoritative external promotion contract.
Applicability trigger: promotion/activation consideration.
Required evidence: exact candidate/version; all applicable ML verification results; current external promotion contract; required independent evidence; authority/approval; explicit target version transition; recovery/rollback when operationally required.
Invariants: PROFILE SUCCESS cannot promote itself; gate cannot be relaxed post-result; publication is not promotion; Market/project thresholds remain external SoT.
Evaluation rule: PASS only when every external and generic prerequisite passes; FAIL on violated gate; BLOCKED on missing contract/evidence/authority.
Output: standard verification envelope.
Lifecycle effect: PASS permits promotion decision within separately granted MODE authority; performs no activation.