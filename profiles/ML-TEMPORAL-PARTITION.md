# ML-TEMPORAL-PARTITION
Identity: profile_id=ML-TEMPORAL-PARTITION; version=1; status=EXPERIMENTAL
Purpose: Construct chronological development, rolling/walk-forward validation, holdout or prospective partitions without outcome leakage.
Input contract: eligible evidence index; temporal semantics; research objective; partition constraints; authority.
Output contract: deterministic partition manifest, cutoff rules, blocked coverage, leakage risks and evidence refs.
Side-effect class: READ
Preconditions: temporal ordering and source availability semantics are known.
Authority boundary: cannot fabricate missing periods, use future outcomes to choose earlier partitions, redefine project validation policy, fit candidates, promote results or declare completion.
Method freedom: choose valid chronological partition scheme appropriate to the objective.
Local verification: every record/interval has deterministic membership and no later partition informs an earlier decision.
Failure contract: METHOD/OBJECTIVE/VERIFICATION.
Composition: consumes ML-DATA-AUDIT; feeds fitting/evaluation and VERIFY-ML-NO-LEAKAGE.
External policy references: project-specific minimum coverage/holdout policy remains external SoT.