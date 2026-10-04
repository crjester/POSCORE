# VERIFY-EVIDENCE-ELIGIBILITY
Identity: verification_id=VERIFY-EVIDENCE-ELIGIBILITY; version=1; status=EXPERIMENTAL
Claim / gate: evidence is eligible for the intended research conclusion.
Applicability trigger: evidence materially affects research evaluation/conclusion.
Required evidence: provenance; timestamps/cutoff; identity/context; transformation trace; missing-data treatment; reproducibility information. Missing mandatory fields => BLOCKED.
Invariants: suspect/invalid execution evidence cannot become clean evidence by availability alone; unavailable historical evidence is not fabricated.
Evaluation rule: PASS when eligibility is traceable and sufficient; FAIL on provenance/cutoff/identity contradiction; BLOCKED when required facts unavailable.
Output: standard verification envelope.
Lifecycle effect: PASS permits evidence use in the bounded research gate only.
