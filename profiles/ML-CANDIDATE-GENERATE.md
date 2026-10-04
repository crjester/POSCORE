# ML-CANDIDATE-GENERATE
Identity: profile_id=ML-CANDIDATE-GENERATE; version=1; status=EXPERIMENTAL
Purpose: Generate materially distinct ML/model/parameter candidates inside externally supplied semantic and authority constraints.
Input contract: bounded hypothesis; candidate schema/envelope; development evidence only when authorized; deterministic seed when method requires randomness; authority.
Output contract: candidate set with deterministic identities, generation method, lineage, assumptions and uncertainty.
Side-effect class: READ
Preconditions: candidate envelope and forbidden dimensions are authoritative inputs.
Authority boundary: cannot widen the envelope, change hard semantics, inspect holdout outcomes for candidate generation, freeze/promote candidates, or declare completion.
Method freedom: grid, staged, seeded random, Bayesian or other justified search methods may be used when consistent with constraints.
Local verification: every candidate is inside the supplied envelope and reconstructable from method/input/seed.
Failure contract: METHOD/AUTHORITY/OBJECTIVE/VERIFICATION.
Composition: feeds ML-MODEL-FIT or supervising MODE freeze decision.
External policy references: domain candidate envelopes/identity constraints remain external SoT.