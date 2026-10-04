# ML-ROBUSTNESS-EVALUATE
Identity: profile_id=ML-ROBUSTNESS-EVALUATE; version=1; status=EXPERIMENTAL
Purpose: Test claim robustness across folds, regimes, parameter neighborhoods, coverage, evidence authority, costs/risks and other predeclared sensitivities.
Input contract: eligible evaluation results; claim scope; robustness dimensions; authority.
Output contract: robustness matrix, unstable dimensions, concentration/dependence findings, evidence refs and uncertainty.
Side-effect class: READ
Preconditions: base evaluation results and comparison semantics exist.
Authority boundary: cannot change the claim/gate to rescue failure, pool incompatible evidence silently, promote, or declare completion.
Method freedom: select suitable sensitivity/stability analyses proportionate to claim and evidence.
Local verification: each robustness conclusion is traceable to declared comparison dimensions.
Failure contract: METHOD/VERIFICATION; missing material dimensions may yield BLOCKED for broad claims.
Composition: consumes evaluations/metrics; feeds synthesis and VERIFY-ML-ROBUSTNESS.
External policy references: domain sufficiency thresholds remain external SoT.