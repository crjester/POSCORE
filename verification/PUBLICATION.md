# VERIFY-PUBLICATION
Identity: verification_id=VERIFY-PUBLICATION; version=1; status=EXPERIMENTAL
Claim / gate: publication is complete.
Applicability trigger: TD objective includes publication.
Required evidence: published identity/ref; content/metadata/assets; requested visibility/access; required discovery surfaces; current render/browser observations. Missing mandatory evidence => BLOCKED.
Invariants: exact authorized target/visibility; publication does not alter authoritative domain meaning; direct-route success alone insufficient.
Evaluation rule: PASS iff all required surfaces and content conditions pass; FAIL on wrong content/visibility/access/render; BLOCKED when required surface cannot be verified within authority.
Output: standard verification envelope.
Lifecycle effect: PASS permits TD publication completion judgment; verifier performs no publication action.
