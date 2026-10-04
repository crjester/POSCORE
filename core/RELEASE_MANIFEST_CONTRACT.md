# Production Candidate Release Manifest Contract
Status: DISTRIBUTION CORE
A release is immutable after staging validation. Required: release_id, source_commit, payload_manifest, payload_checksum, compatibility_version, entrypoint, created_at.
Environment bindings, ACTIVE/LKG pointers, THREAD/MESSAGE stores, project/service/runtime/publication/research SoTs and audit logs are EXTERNAL STATE and MUST NOT reside in or be rolled back with release payload.
P0/P1 are slot labels, not mutable release identities. Installing a different release into a slot requires an empty/non-active slot and a new immutable manifest.
