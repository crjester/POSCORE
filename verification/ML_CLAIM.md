# VERIFY-ML-CLAIM
Identity: verification_id=VERIFY-ML-CLAIM; version=1; status=EXPERIMENTAL
Claim / gate: wording/strength of the final ML claim does not exceed its evidence class.
Applicability trigger: completed ML research conclusion, validation statement or generalization claim.
Required evidence: requested claim; evidence-class labels; applicable eligibility/leakage/freeze/attribution/robustness results; limitations/counterevidence.
Invariants: fitted/calibrated evidence is not independent validation; historical OOS is not prospective evidence; prospective/shadow is not real/live proof; isolated profit is not predictive validity; unavailable evidence is not silently negative or positive.
Evaluation rule: PASS when claim level is no stronger than eligible evidence; FAIL when wording upgrades evidence class or contradicts limitations; BLOCKED when material evidence class is unresolved.
Output: standard verification envelope plus maximum supported claim level.
Lifecycle effect: PASS permits supervising MODE to issue only the supported claim level.