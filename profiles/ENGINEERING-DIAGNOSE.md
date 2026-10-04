# ENGINEERING-DIAGNOSE
Identity: profile_id=ENGINEERING-DIAGNOSE; version=1; status=EXPERIMENTAL
Purpose: Diagnose bounded engineering symptoms from authoritative implementation/runtime evidence and produce causes/candidate fixes.
Input contract: objective fragment, target/evidence refs, constraints, MODE authority; optional reproducible case.
Output contract: findings, candidate causes/fixes, evidence refs, uncertainty, local verification, side effects.
Side-effect class: READ
Preconditions: target and authoritative evidence route identified.
Authority boundary: cannot change objective/authority/SoT, write, deploy, declare MODE completion, or transfer responsibility.
Method freedom: inspect and compare plausible causes; reproduce non-destructively when authorized.
Local verification: findings trace to evidence and symptom/cause distinction is explicit.
Failure contract: TRANSIENT/METHOD/AUTHORITY/OBJECTIVE/VERIFICATION with evidence and retry relevance.
Composition: accepts task/runtime evidence; feeds ENGINEERING-DESIGN/TEST/SYNTHESIZE; parallel reads safe; replay safe if evidence version fixed.
External policy references: target repository/platform/runtime contracts.
