# VERIFY-ML-PROSPECTIVE-INTEGRITY
Identity: verification_id=VERIFY-ML-PROSPECTIVE-INTEGRITY; version=1; status=EXPERIMENTAL
Claim / gate: prospective/shadow evidence was collected under a pre-registered immutable observation contract.
Applicability trigger: prospective confirmation/validation claim.
Required evidence: registration/freeze event; observation start; candidate/gate/horizon versions; chronological observations; unavailable/missed records; adaptation log.
Invariants: no pre-registration evidence counts; no backfill/catch-up of unavailable observations; adaptive changes require a pre-frozen adaptation rule and new version where required.
Evaluation rule: PASS when chronology and immutability hold; FAIL on backfill/post-hoc mutation; BLOCKED when registration/order cannot be established. Insufficient exposure is UNSCORABLE/DEFER, not failure evidence.
Output: standard verification envelope plus exposure status.
Lifecycle effect: PASS permits prospective evidence classification; insufficient exposure does not permit conclusion.