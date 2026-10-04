# ML-TUNING-EVALUATE
Identity: profile_id=ML-TUNING-EVALUATE; version=1; status=EXPERIMENTAL
Purpose: Evaluate a tuning method independently from base/model quality and analysis/calibration quality, including explicit HOLD/NO_CHANGE/UNSCORABLE outcomes.
Input contract: frozen tuning hypothesis/policy; attribution results; eligible metrics; selection set including unchanged decisions; authority.
Output contract: tuning-effect assessment, selection-bias coverage, confounders, evidence refs, uncertainty and bounded recommendation.
Side-effect class: READ
Preconditions: tuning identity and attribution status are explicit.
Authority boundary: cannot activate tuning, alter gate, conflate tuning with base/model or analysis axes, discard unchanged cases to improve results, or declare completion.
Method freedom: comparative/statistical methods inside frozen plan.
Local verification: conclusion identifies tuning version, attribution class, full decision coverage and confounders.
Failure contract: METHOD/VERIFICATION; non-identifiable effect is UNSCORABLE, not success/failure.
Composition: consumes counterfactual/metrics; feeds synthesis and axis verification.
External policy references: tuning semantics and promotion rules remain external SoT.