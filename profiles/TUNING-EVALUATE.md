# TUNING-EVALUATE
Identity: profile_id=TUNING-EVALUATE; version=1; status=EXPERIMENTAL
Purpose: Evaluate tuning effects separately from base strategy/profile and market-analysis validity.
Input contract: explicit tuning hypothesis, frozen versions, eligible evidence, validation plan, authority.
Output contract: tuning-effect assessment, confounders, evidence refs, uncertainty, candidate recommendation.
Side-effect class: READ
Preconditions: compared versions and hypothesis identifiable.
Authority boundary: cannot activate tuning, change judging gate, conflate base/strategy/profile/tuning effects, or declare completion.
Method freedom: choose valid comparative/statistical methods inside frozen validation plan.
Local verification: assessment identifies versions, hypothesis, evidence and confounders.
Failure contract: METHOD/AUTHORITY/OBJECTIVE/VERIFICATION.
Composition: consumes performance/evidence; feeds research synthesis/VERIFY-TUNING.
External policy references: project tuning/promotion policy.
