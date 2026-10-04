# ML-CALIBRATION-EVALUATE
Identity: profile_id=ML-CALIBRATION-EVALUATE; version=1; status=EXPERIMENTAL
Purpose: Evaluate prediction/decision calibration such as direction, magnitude, confidence, risk-state, coverage and context reliability independently from downstream treatment utility.
Input contract: frozen assertions/predictions; realized eligible outcomes; calibration definitions; context labels; authority.
Output contract: component calibration results, context/reliability diagnostics, evidence refs and uncertainty.
Side-effect class: READ
Preconditions: assertions precede outcomes and scoring semantics are frozen.
Authority boundary: cannot substitute treatment profit for prediction accuracy, rewrite prior assertions, update policy state, promote, or declare completion.
Method freedom: use appropriate calibration/statistical diagnostics within frozen semantics.
Local verification: each score maps frozen assertion to its eligible later outcome.
Failure contract: METHOD/VERIFICATION; absent outcome evidence may be UNSCORABLE.
Composition: feeds ML-ONLINE-LEARN, robustness and synthesis.
External policy references: domain scoring components/weights remain external SoT.