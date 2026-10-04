# ML-RESEARCH-DESIGN
Identity: profile_id=ML-RESEARCH-DESIGN; version=1; status=EXPERIMENTAL
Purpose: Design a bounded machine-learning experiment under a fixed parent objective, including hypothesis, experimental unit, candidate/control structure, metrics, horizons and failure conditions.
Input contract: bounded objective; authoritative constraints; available evidence classes; authority; optional prior research.
Output contract: experiment design, hypotheses, required evidence, candidate/control plan, metric/horizon plan, uncertainty.
Side-effect class: READ
Preconditions: parent objective and authority boundary are fixed.
Authority boundary: cannot change parent objective, grant authority, freeze/promote a candidate, choose project policy, execute real actions, declare completion, or weaken mandatory verification.
Method freedom: may compare experimental designs and statistical/ML methods consistent with objective and external SoT.
Local verification: design maps every hypothesis to observable evidence and declares material confounders/failure conditions.
Failure contract: METHOD/AUTHORITY/OBJECTIVE/VERIFICATION.
Composition: feeds ML-DATA-AUDIT, ML-TEMPORAL-PARTITION, ML-CANDIDATE-GENERATE and supervising MODE.
External policy references: project research semantics, domain constraints and promotion policy remain external SoT.