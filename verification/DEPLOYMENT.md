# VERIFY-DEPLOYMENT
Identity: verification_id=VERIFY-DEPLOYMENT; version=1; status=EXPERIMENTAL
Claim / gate: an authorized deployment is complete.
Applicability trigger: deployment or persistent runtime change.
Required evidence: deployed target identity/version; observed current runtime result; service-required health/access checks; required recovery/rollback viability. Missing mandatory evidence => BLOCKED.
Invariants: exact authorized target/scope; service deployment contract obeyed; deployment acceptance is distinct from implementation success.
Evaluation rule: PASS iff identity and required runtime/recovery evidence pass; FAIL on wrong target/version or failed checks; BLOCKED when evidence is inaccessible within authority.
Output: standard verification result envelope.
Lifecycle effect: PASS permits TE deployment completion judgment; no action is performed by verification.
