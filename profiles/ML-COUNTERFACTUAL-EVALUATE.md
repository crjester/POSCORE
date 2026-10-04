# ML-COUNTERFACTUAL-EVALUATE
Identity: profile_id=ML-COUNTERFACTUAL-EVALUATE; version=1; status=EXPERIMENTAL
Purpose: Estimate attributable treatment/tuning effect against a compatible same-origin control or explicitly downgrade the claim when attribution is not identifiable.
Input contract: frozen treatment and control identities; common-origin evidence; execution/measurement compatibility rules; changed groups; horizon; authority.
Output contract: attributable deltas when identifiable, confounders, attribution class IDENTIFIABLE|AMBIGUOUS|UNSCORABLE, evidence refs and uncertainty.
Side-effect class: READ
Preconditions: treatment/control relation and measurement semantics are known.
Authority boundary: cannot invent a control, hide incompatible origins, assign parameter-specific causality to ambiguous multi-change evidence, promote, or declare completion.
Method freedom: use appropriate causal/comparative methods consistent with the frozen design.
Local verification: attribution class follows declared origin/compatibility/confounding evidence.
Failure contract: METHOD/VERIFICATION; missing required counterfactual evidence returns BLOCKED or UNSCORABLE according to invocation contract.
Composition: feeds ML-TUNING-EVALUATE, ML-ROBUSTNESS-EVALUATE and VERIFY-ML-ATTRIBUTION.
External policy references: project-specific control construction and execution semantics remain external SoT.