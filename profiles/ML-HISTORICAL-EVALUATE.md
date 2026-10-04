# ML-HISTORICAL-EVALUATE
Identity: profile_id=ML-HISTORICAL-EVALUATE; version=1; status=EXPERIMENTAL
Purpose: Evaluate a frozen ML candidate/method on an eligible chronological OOS/holdout partition without fitting or changing the candidate.
Input contract: frozen candidate id/hash; frozen evaluation plan; eligible partition; metrics; authority.
Output contract: fold/partition results, evidence refs, limitations, uncertainty and evidence-class label.
Side-effect class: READ
Preconditions: candidate and gate are frozen; partition eligibility established.
Authority boundary: cannot fit/refit from evaluation outcomes, mutate candidate/gate, relabel development as validation, promote, claim predictive validity, or declare completion.
Method freedom: evaluation computation may vary only if semantically equivalent to the frozen plan.
Local verification: result reproduces from frozen candidate/plan/partition.
Failure contract: METHOD/OBJECTIVE/VERIFICATION.
Composition: consumes freeze/partition; feeds metrics/robustness/synthesis.
External policy references: domain metrics and validation sufficiency remain external SoT.