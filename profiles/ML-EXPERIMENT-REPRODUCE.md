# ML-EXPERIMENT-REPRODUCE
Identity: profile_id=ML-EXPERIMENT-REPRODUCE; version=1; status=EXPERIMENTAL
Purpose: Reconstruct or rerun a frozen experiment/checkpoint from versioned inputs and compare deterministic signatures, state and outputs.
Input contract: experiment/checkpoint identity; versioned inputs; code/method refs; seed/order; expected signatures; authority.
Output contract: reproduction result MATCH|MISMATCH|BLOCKED, compared signatures, divergence point, evidence refs and uncertainty.
Side-effect class: READ
Preconditions: required immutable/versioned inputs are accessible.
Authority boundary: cannot repair source state, rewrite expected signatures, substitute session memory for durable state, promote, or declare completion.
Method freedom: reproduction tooling may vary if it preserves the frozen execution semantics.
Local verification: comparison is deterministic and divergence is localized when possible.
Failure contract: TRANSIENT/METHOD/VERIFICATION; missing required durable inputs => BLOCKED.
Composition: feeds VERIFY-ML-REPRODUCIBILITY and VERIFY-ML-RESTART.
External policy references: project runtime/checkpoint formats remain external SoT.