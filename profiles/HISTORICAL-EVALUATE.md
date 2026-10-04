# HISTORICAL-EVALUATE
Identity: profile_id=HISTORICAL-EVALUATE; version=1; status=EXPERIMENTAL
Purpose: Evaluate a frozen candidate on eligible historical evidence without altering candidate or judging gate.
Input contract: frozen candidate id/version, frozen evaluation gate, eligible historical evidence, cutoff/context, authority.
Output contract: measured historical results, limitations, evidence refs, uncertainty.
Side-effect class: READ
Preconditions: candidate/gate frozen and evidence eligible.
Authority boundary: cannot change candidate/gate after seeing result, use future-ineligible evidence, promote candidate, claim predictive validity, or declare completion.
Method freedom: analysis methods allowed by frozen plan/project contract.
Local verification: result reproducible from identified frozen candidate/gate/evidence.
Failure contract: METHOD/AUTHORITY/OBJECTIVE/VERIFICATION.
Composition: consumes evidence validation; feeds performance/tuning/synthesis.
External policy references: frozen research manual/policy.
