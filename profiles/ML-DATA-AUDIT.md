# ML-DATA-AUDIT
Identity: profile_id=ML-DATA-AUDIT; version=1; status=EXPERIMENTAL
Purpose: Audit ML evidence for provenance, time semantics, granularity, missingness, revisions, duplication, identity mapping, survivorship risk and reconstructability.
Input contract: evidence refs; intended cutoff/use; source semantics; authority.
Output contract: evidence map with eligible/suspect/ineligible/unavailable classifications, leakage risks, missing channels, lineage refs and uncertainty.
Side-effect class: READ
Preconditions: source evidence and responsible source semantics are accessible.
Authority boundary: cannot fabricate/backfill evidence, relabel evidence authority, alter cutoff, repair source data, promote a result or declare completion.
Method freedom: use suitable integrity, temporal, schema and statistical diagnostics.
Local verification: each classification is traceable to source facts and declared source semantics.
Failure contract: TRANSIENT/METHOD/AUTHORITY/VERIFICATION.
Composition: may consume EVIDENCE-VALIDATE; feeds partition/evaluation/verification; parallel audits safe when sources independent.
External policy references: source-specific evidence classes and meanings remain external SoT.