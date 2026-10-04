# Production Candidate Migration Recovery
Status: DISTRIBUTION CORE
Migration apply journal records source_checksum, item_id, adapter_version, target_record_id, phase(PREPARED|WRITTEN|VERIFIED), target_checksum.
Before creating a target record, write PREPARED. Creation uses deterministic target_record_id/idempotency key.
Restart: compare immutable source checksum and candidate target.
- target absent + PREPARED => create once if source checksum still matches.
- target present + matching deterministic checksum => do not duplicate; continue verification.
- source changed, conflicting target, or unverifiable presence => BLOCKED/MIGRATION_REQUIRED.
Only VERIFIED items count migrated. Release switch occurs only after all required items VERIFIED. Rollback preserves created durable records.
