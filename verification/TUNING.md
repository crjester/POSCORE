# VERIFY-TUNING
Identity: verification_id=VERIFY-TUNING; version=1; status=EXPERIMENTAL
Claim / gate: tuning candidate is eligible for promotion consideration.
Applicability trigger: tuning change evaluation/promotion.
Required evidence: explicit hypothesis; candidate/base versions; eligible evidence; frozen validation plan; prospective/shadow evaluation when required by project contract.
Invariants: tuning effect separated from base/strategy/profile/analysis effects; candidate does not alter its gate.
Evaluation rule: PASS when required comparison/evidence supports bounded claim; FAIL on confounding/gate mutation/contradiction; BLOCKED when prospective or required evidence incomplete.
Output: standard verification envelope.
Lifecycle effect: PASS permits promotion consideration, not activation.
