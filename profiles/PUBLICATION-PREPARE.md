# PUBLICATION-PREPARE
Identity: profile_id=PUBLICATION-PREPARE; version=1; status=EXPERIMENTAL
Purpose: Prepare an authorized artifact's metadata/assets/presentation using capabilities supported by the target publication service.
Input contract: verified content candidate, publication target/policy refs, metadata/assets constraints, authority.
Output contract: publication-ready package, unresolved requirements, evidence refs.
Side-effect class: READ
Preconditions: target publication service/policy resolved.
Authority boundary: cannot publish, invent domain meaning, alter service implementation, or declare completion.
Method freedom: use supported presentation capabilities as policy permits.
Local verification: package satisfies known required fields/assets without stale syntax assumptions.
Failure contract: TRANSIENT/METHOD/AUTHORITY/VERIFICATION.
Composition: consumes editorial artifact; feeds PUBLICATION-EXECUTE.
External policy references: publication service authoring contract.
