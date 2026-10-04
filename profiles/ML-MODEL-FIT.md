# ML-MODEL-FIT
Identity: profile_id=ML-MODEL-FIT; version=1; status=EXPERIMENTAL
Purpose: Fit or calibrate an authorized frozen candidate specification using only its authorized development evidence.
Input contract: candidate specification; development partition; fitting objective; method/version/seed; authority.
Output contract: fitted candidate artifact/id, training metrics, lineage, convergence/uncertainty and evidence refs.
Side-effect class: READ
Preconditions: candidate specification and development evidence are identified; holdout is not an input.
Authority boundary: cannot consume forbidden validation/holdout outcomes, call fitted performance validation, change evaluation gate, promote/activate, or declare completion.
Method freedom: choose computational fitting procedure consistent with frozen specification and reproducibility requirements.
Local verification: fitted artifact reconstructs from declared candidate, data, method and seed.
Failure contract: METHOD/AUTHORITY/VERIFICATION.
Composition: consumes candidate/partition; feeds freeze and historical evaluation.
External policy references: model family, objective function and domain constraints remain external SoT.