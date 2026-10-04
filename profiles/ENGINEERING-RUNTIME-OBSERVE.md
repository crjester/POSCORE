# ENGINEERING-RUNTIME-OBSERVE
Identity: profile_id=ENGINEERING-RUNTIME-OBSERVE; version=1; status=EXPERIMENTAL
Purpose: Observe live/runtime behavior needed to evaluate a bounded engineering claim.
Input contract: claim, runtime target, observation criteria, authority, evidence refs.
Output contract: observed state/results, evidence refs, uncertainty, local verification.
Side-effect class: READ
Preconditions: runtime observation route is authorized and target resolved.
Authority boundary: cannot mutate runtime, infer missing state, change objective/authority/SoT, or declare completion.
Method freedom: choose non-destructive observations sufficient for claim.
Local verification: observation is tied to current target/time/identity.
Failure contract: TRANSIENT/METHOD/AUTHORITY/VERIFICATION.
Composition: consumes change/deploy/test context; feeds verification/synthesis; parallel safe for independent reads.
External policy references: runtime/service observation contract.
