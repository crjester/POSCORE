# VERIFY-ML-NO-LEAKAGE
Identity: verification_id=VERIFY-ML-NO-LEAKAGE; version=1; status=EXPERIMENTAL
Claim / gate: candidate generation, fitting, decision and evaluation respect temporal/information separation.
Applicability trigger: predictive, historical, prospective, tuning or online-learning claim.
Required evidence: decision/freeze cutoffs; partition manifest; timestamped inputs/transform availability; candidate-selection inputs; holdout access history; cross-run transferred state. Unknown material timing => BLOCKED.
Invariants: no future target/outcome/membership/revision enters an earlier decision; development/calibration is not relabeled independent validation; untouched holdout cannot influence candidate/method selection; future-informed state transfer prohibited unless explicitly eligible.
Evaluation rule: PASS when all material paths are cutoff-eligible; FAIL on any demonstrated leakage or validation reuse; BLOCKED when timing/access cannot be proven.
Output: standard verification envelope.
Lifecycle effect: PASS permits the result to retain its declared temporal evidence class.