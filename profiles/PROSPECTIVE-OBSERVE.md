# PROSPECTIVE-OBSERVE
Identity: profile_id=PROSPECTIVE-OBSERVE; version=1; status=EXPERIMENTAL
Purpose: Observe post-freeze/shadow evidence for a frozen candidate under a fixed observation contract.
Input contract: frozen candidate, observation start/cutoff rules, evidence source, metrics, authority.
Output contract: time-eligible observations, evidence refs, missingness, uncertainty.
Side-effect class: READ
Preconditions: candidate and observation contract frozen before observed period.
Authority boundary: cannot alter candidate/gate based on observations, execute real trades/actions, promote, or declare completion.
Method freedom: collect/organize observations within fixed contract.
Local verification: timestamps and candidate identity demonstrate post-freeze eligibility.
Failure contract: TRANSIENT/METHOD/AUTHORITY/VERIFICATION.
Composition: feeds performance/tuning/research verification.
External policy references: project observation/evidence contract.
