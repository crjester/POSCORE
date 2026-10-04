# VERIFY-ML-RESTART
Identity: verification_id=VERIFY-ML-RESTART; version=1; status=EXPERIMENTAL
Claim / gate: an interrupted ML research thread can resume deterministically without session-memory authority or duplicate/reinterpreted evidence.
Applicability trigger: restart/resume of open experiment, horizon, learning process or evaluation.
Required evidence: durable objective; frozen candidate/method/gates; partition refs; completed/open horizons; evidence refs; current learning state/version; last committed event/checkpoint; next eligible action; verification state; reproducibility refs.
Invariants: committed events are not replayed as new evidence; open horizons are not silently closed; current authority is re-resolved; stricter current authority wins; session memory is non-authoritative.
Evaluation rule: PASS when restored state yields the same next eligible action/signature as uninterrupted state; FAIL on duplicate/skip/reinterpretation or deterministic mismatch; BLOCKED when durable state is incomplete/ambiguous/corrupt.
Output: standard verification envelope plus restored next-action signature.
Lifecycle effect: PASS permits lifecycle resume from the durable checkpoint.