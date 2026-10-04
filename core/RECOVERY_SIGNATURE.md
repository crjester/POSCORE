# Production Candidate Recovery Signature
Status: DISTRIBUTION CORE
Deterministic recovery comparison fields:
trusted_release_id
canonical_role
resource_readiness
effective_authority_signature
thread_id/status/next_action/verification_state
message disposition
pending operation ids/phases
migration phase
ACTIVE/LKG/PENDING release state

Repeated restarts from identical durable fixture state MUST yield identical signatures. Session memory and inferred fields are excluded.
