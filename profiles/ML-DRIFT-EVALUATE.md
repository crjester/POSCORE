# ML-DRIFT-EVALUATE
Identity: profile_id=ML-DRIFT-EVALUATE; version=1; status=EXPERIMENTAL
Purpose: Compare current/prospective evidence with frozen reference distributions or behavior and identify material drift/regime change.
Input contract: frozen reference; current eligible evidence; drift definitions; authority.
Output contract: drift diagnostics, affected dimensions, severity under supplied rules, evidence refs and uncertainty.
Side-effect class: READ
Preconditions: comparable reference/current semantics exist.
Authority boundary: cannot silently retrain, change thresholds after seeing drift, activate fallback policy, promote, or declare completion.
Method freedom: suitable statistical/diagnostic methods within frozen drift semantics.
Local verification: reported drift follows supplied comparison definitions and comparable evidence.
Failure contract: METHOD/VERIFICATION; incompatible evidence may be UNSCORABLE.
Composition: feeds research design/synthesis and supervising MODE.
External policy references: project drift thresholds/actions remain external SoT.