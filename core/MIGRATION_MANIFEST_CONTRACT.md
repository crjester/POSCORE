# Production Candidate Migration Manifest Contract
Status: DISTRIBUTION CORE
Migration is compatibility translation plus release switch; never destructive replacement.

Each legacy item requires: legacy_id/class/schema, owner, source_checksum, candidate_mapping, adapter_version(if any), authority_effect=NONE|NARROWER, reversibility, ambiguity_policy, rollback_handling.
Required classes: MODE/alias, participant binding, resource binding, project/service/runtime/publication/research/recovery SoT routes, active work, MESSAGE, recovery refs.

Rules:
- source records and P0 release remain immutable;
- dry-run writes nothing;
- apply writes only candidate-owned compatibility metadata/THREAD records in cloned fixture external state;
- authority_effect may never be BROADER;
- unknown/ambiguous material state => BLOCKED/MIGRATION_REQUIRED;
- no inferred THREAD objective/next_action/owner;
- external SoT route remains unchanged unless an explicit versioned read adapter is declared;
- rollback never deletes P1-created durable work; P0 reads it through declared compatibility handling or marks it BLOCKED while preserving it.
