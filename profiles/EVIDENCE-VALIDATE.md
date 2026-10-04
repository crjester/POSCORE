# EVIDENCE-VALIDATE
Identity: profile_id=EVIDENCE-VALIDATE; version=1; status=EXPERIMENTAL
Purpose: Validate provenance, timestamps/cutoff eligibility, identity/context, transformations, missingness and reproducibility of evidence.
Input contract: evidence refs, research cutoff/context, required evidence semantics, authority.
Output contract: eligible/suspect/ineligible classifications with reasons/evidence refs/uncertainty.
Side-effect class: READ
Preconditions: source evidence accessible.
Authority boundary: cannot fabricate/repair evidence, alter cutoff, promote suspect evidence, change objective or declare completion.
Method freedom: use appropriate integrity checks within source policy.
Local verification: every classification is traceable to evidence and eligibility criteria.
Failure contract: TRANSIENT/METHOD/AUTHORITY/VERIFICATION.
Composition: feeds all research evaluation/verification; independent evidence checks may parallelize.
External policy references: evidence/source/project contracts.
