# ML-METRIC-EVALUATE
Identity: profile_id=ML-METRIC-EVALUATE; version=1; status=EXPERIMENTAL
Purpose: Compute predeclared ML performance, risk, cost, calibration or coverage measures without changing their semantics after observing results.
Input contract: eligible results/observations; metric definitions; comparison scope; authority.
Output contract: metrics, comparisons, evidence refs, missing metrics, limitations and uncertainty.
Side-effect class: READ
Preconditions: metric definitions and input evidence classifications are available.
Authority boundary: cannot invent post-hoc acceptance thresholds, relabel evidence, promote candidates, infer causality without attribution evidence, or declare completion.
Method freedom: computational implementation may vary if semantically equivalent and reproducible.
Local verification: metrics reproduce from declared inputs and definitions.
Failure contract: METHOD/VERIFICATION.
Composition: feeds calibration/robustness/tuning/synthesis.
External policy references: project metric definitions/thresholds remain external SoT.