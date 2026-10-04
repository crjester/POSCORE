# VERIFY-DEFECT-FIX
Identity: verification_id=VERIFY-DEFECT-FIX; version=1; status=EXPERIMENTAL
Claim / gate: a reproducible engineering defect is fixed.
Applicability trigger: objective claims resolution of a reproducible defect.
Required evidence: meaningful pre-fix failing case when practical; post-fix same/equivalent case passes; relevant regression evidence. If a pre-fix case is impractical, explicit evidence-based justification is mandatory. Missing mandatory evidence => BLOCKED.
Invariants: expected behavior is not weakened after failure; test target matches defect scope.
Evaluation rule: PASS on demonstrated before/after or justified equivalent plus regression; FAIL on reproduced persistence/regression/invariant violation; BLOCKED if required observation unavailable.
Output: standard verification result envelope.
Lifecycle effect: PASS satisfies defect-fix gate but does not alone complete broader change/deployment objectives.
