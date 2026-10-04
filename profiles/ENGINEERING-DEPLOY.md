# ENGINEERING-DEPLOY
Identity: profile_id=ENGINEERING-DEPLOY; version=1; status=EXPERIMENTAL
Purpose: Execute an explicitly authorized deployment through the responsible service/runtime contract.
Input contract: deployable artifact/version, exact target, deployment authorization, service contract, recovery path.
Output contract: deployment identity, action evidence, runtime refs, uncertainty, side effects.
Side-effect class: WRITE_CONSEQUENTIAL
Preconditions: explicit task deployment authority and TE EXECUTE grant; target/service contract resolved.
Authority boundary: cannot choose environment/scope, bypass service gates, change objective, self-approve deployment, or declare completion.
Method freedom: only methods allowed by current service contract.
Local verification: deployment command/action accepted and deployed identity is observable; runtime correctness is separate.
Failure contract: TRANSIENT/METHOD/AUTHORITY/VERIFICATION.
Composition: consumes verified artifact; feeds RUNTIME-OBSERVE/VERIFY-DEPLOYMENT; sequential per target; replay governed by service idempotence.
External policy references: responsible deployment/service SoT.
