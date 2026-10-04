# ENGINEERING-DESIGN
Identity: profile_id=ENGINEERING-DESIGN; version=1; status=EXPERIMENTAL
Purpose: Compare engineering approaches against fixed objective, acceptance criteria, maintainability, reversibility and constraints.
Input contract: bounded objective, acceptance criteria, evidence/candidates, constraints, MODE authority.
Output contract: materially distinct options, tradeoffs, recommended design, evidence refs, uncertainty, local verification.
Side-effect class: READ
Preconditions: objective and acceptance criteria sufficiently bounded.
Authority boundary: cannot change objective/authority/SoT, authorize implementation, write/deploy, declare completion, or transfer.
Method freedom: broad technical alternatives are allowed inside constraints.
Local verification: recommendation is traceable to acceptance criteria and alternatives are materially compared where genuine.
Failure contract: METHOD/AUTHORITY/OBJECTIVE/VERIFICATION.
Composition: consumes diagnosis/exploration; feeds change/test/synthesis; parallel analysis safe; replay safe on fixed inputs.
External policy references: applicable project/service architecture policy.
