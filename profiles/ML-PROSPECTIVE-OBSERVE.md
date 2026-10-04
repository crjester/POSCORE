# ML-PROSPECTIVE-OBSERVE
Identity: profile_id=ML-PROSPECTIVE-OBSERVE; version=1; status=EXPERIMENTAL
Purpose: Observe a pre-registered frozen candidate prospectively without adapting it from observed outcomes.
Input contract: frozen candidate; registration/freeze evidence; observation contract; evidence source; horizon; authority.
Output contract: eligible observations, missing/unavailable checkpoints, open/closed horizon state, evidence refs and uncertainty.
Side-effect class: READ
Preconditions: candidate and observation rules were frozen before observation start.
Authority boundary: cannot backfill missed evidence, alter candidate/gate from outcomes, execute real actions, promote, or declare completion.
Method freedom: organize and summarize observations within the frozen contract.
Local verification: observations occur after registration/freeze and preserve unavailable/no-catch-up semantics.
Failure contract: TRANSIENT/METHOD/VERIFICATION; insufficient exposure may be UNSCORABLE rather than negative evidence.
Composition: feeds metrics/robustness/synthesis and prospective verification.
External policy references: project observation schedule and sufficiency rules remain external SoT.