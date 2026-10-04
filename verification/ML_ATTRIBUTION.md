# VERIFY-ML-ATTRIBUTION
Identity: verification_id=VERIFY-ML-ATTRIBUTION; version=1; status=EXPERIMENTAL
Claim / gate: claimed treatment/tuning effect is attributable at the stated granularity.
Applicability trigger: causal/tuning-effect or parameter-specific improvement claim.
Required evidence: frozen treatment/control identities; common-origin or otherwise valid counterfactual design; compatible measurement/execution assumptions; changed groups; confounder assessment; horizon. Missing required counterfactual evidence => BLOCKED or UNSCORABLE for the effect claim.
Invariants: profit/correlation alone is not attribution; ambiguous multi-change evidence cannot justify component-specific promotion; incompatible controls cannot be silently pooled.
Evaluation rule: PASS when attribution is identifiable for the stated claim; FAIL on contradictory origin/design or false component attribution; BLOCKED when required evidence is unavailable. An evaluation artifact may explicitly return UNSCORABLE without making the effect claim.
Output: standard verification envelope plus attribution scope.
Lifecycle effect: PASS permits attributable effect evidence; UNSCORABLE/BLOCKED cannot support promotion.