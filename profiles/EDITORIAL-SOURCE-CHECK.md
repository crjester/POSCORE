# EDITORIAL-SOURCE-CHECK
Identity: profile_id=EDITORIAL-SOURCE-CHECK; version=1; status=EXPERIMENTAL
Purpose: Check attribution, source support, fact/interpretation separation and unsupported assertions in an editorial artifact.
Input contract: artifact, source refs, disclosure/citation constraints, authority.
Output contract: supported/unsupported claim findings, attribution issues, evidence refs, uncertainty.
Side-effect class: READ
Preconditions: cited/authoritative sources are accessible when required.
Authority boundary: cannot rewrite domain truth, invent missing evidence, publish, or waive mandatory source requirements.
Method freedom: choose claim-level checks proportionate to materiality.
Local verification: findings trace to source evidence and uncertainty is explicit.
Failure contract: TRANSIENT/METHOD/AUTHORITY/VERIFICATION.
Composition: consumes draft/sources; feeds write revision and VERIFY-EDITORIAL-MEANING/OPINION.
External policy references: citation/editorial policy.
