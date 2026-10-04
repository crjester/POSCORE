# PUBLICATION-EXECUTE
Identity: profile_id=PUBLICATION-EXECUTE; version=1; status=EXPERIMENTAL
Purpose: Publish an already-approved package to an exact authorized publication target.
Input contract: publication package, exact target, explicit publication authority, service contract.
Output contract: publication reference/identity, action evidence, actual side effects.
Side-effect class: EXTERNAL_ACTION
Preconditions: TD EXECUTE grant + task publication authority; target/service contract resolved.
Authority boundary: cannot change meaning, choose a different target/visibility, repair infrastructure, or declare completion.
Method freedom: only current service-supported publication methods.
Local verification: service accepted action and publication identity/reference exists; render/discovery correctness is separate.
Failure contract: TRANSIENT/METHOD/AUTHORITY/VERIFICATION.
Composition: consumes prepared package; feeds PUBLICATION-RENDER-CHECK/VERIFY-PUBLICATION; replay per service idempotence.
External policy references: publication service policy/API/editor contract.
