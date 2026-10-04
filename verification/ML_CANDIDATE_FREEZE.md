# VERIFY-ML-CANDIDATE-FREEZE
Identity: verification_id=VERIFY-ML-CANDIDATE-FREEZE; version=1; status=EXPERIMENTAL
Claim / gate: candidate/model/method and judging contract were immutable before evaluation outcomes were exposed.
Applicability trigger: OOS/holdout/prospective/counterfactual evaluation.
Required evidence: immutable candidate identity/hash; method/model version; data/partition identity; metric/gate definitions; horizon; freeze event preceding evaluation exposure. Missing freeze proof => BLOCKED.
Invariants: candidate cannot alter its judge; post-outcome mutation creates a new identity/version and cannot inherit prior freeze.
Evaluation rule: PASS on complete pre-outcome freeze lineage; FAIL on post-outcome mutation or gate change; BLOCKED when freeze ordering cannot be established.
Output: standard verification envelope.
Lifecycle effect: PASS permits evaluation evidence to be considered under the frozen identity.