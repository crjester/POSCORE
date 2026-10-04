# ML-ONLINE-LEARN
Identity: profile_id=ML-ONLINE-LEARN; version=1; status=EXPERIMENTAL
Purpose: Compute the next explicit learning state from newly matured eligible evidence under a frozen learning rule.
Input contract: current versioned learning state; frozen learning rule; matured evidence with eligibility/axis labels; deterministic ordering; authority.
Output contract: proposed next state, applied/ignored evidence IDs with reasons, deterministic transition hash, uncertainty.
Side-effect class: READ
Preconditions: learning rule and current state are authoritative inputs; evidence maturity/eligibility known.
Authority boundary: cannot change the learning rule, hard semantics, objective, authority, promotion gate or canonical active state; cannot learn from ineligible/immature/zero-authority evidence.
Method freedom: computational implementation may vary only if transition semantics remain equivalent.
Local verification: same ordered state+rule+evidence produces the same proposed next state/hash; past evidence/output is unchanged.
Failure contract: METHOD/AUTHORITY/VERIFICATION.
Composition: consumes eligible metrics/calibration/tuning evidence; feeds TL judgment and VERIFY-ML-LEARNING-UPDATE.
External policy references: learning equations/rates/thresholds and active-state policy remain external SoT.