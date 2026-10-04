# PUBLICATION-RENDER-CHECK
Identity: profile_id=PUBLICATION-RENDER-CHECK; version=1; status=EXPERIMENTAL
Purpose: Observe published artifact visibility, discovery, access and render surfaces.
Input contract: publication ref, required surfaces/visibility, authority.
Output contract: observed render/access/discovery evidence, defects, uncertainty.
Side-effect class: READ
Preconditions: publication reference exists and observation is authorized.
Authority boundary: cannot repair defects, republish, change visibility, invent success, or declare completion.
Method freedom: inspect required supported surfaces proportionate to publication contract.
Local verification: observations identify target/current surface and required checks.
Failure contract: TRANSIENT/METHOD/AUTHORITY/VERIFICATION.
Composition: feeds VERIFY-PUBLICATION; independent reads may parallelize.
External policy references: publication verification contract.
