# PERFORMANCE-MEASURE
Identity: profile_id=PERFORMANCE-MEASURE; version=1; status=EXPERIMENTAL
Purpose: Compute and compare defined performance measures while preserving evidence classification.
Input contract: eligible observations/results, metric definitions, comparison scope, authority.
Output contract: metrics/comparisons, evidence refs, limitations, uncertainty.
Side-effect class: READ
Preconditions: input evidence classification and metric definitions available.
Authority boundary: cannot relabel invalid evidence, redefine metrics post-result without authorization, promote candidates or claim predictive validity.
Method freedom: computational method may vary if semantically equivalent/reproducible.
Local verification: metrics reproduce from declared inputs/definitions.
Failure contract: METHOD/AUTHORITY/VERIFICATION.
Composition: feeds tuning/research synthesis and verification.
External policy references: project metric/evaluation policy.
