PRAGMA foreign_keys=ON;
CREATE TABLE IF NOT EXISTS messages (
 message_id TEXT PRIMARY KEY, sender_participant TEXT NOT NULL, receiver_participant TEXT NOT NULL,
 kind TEXT NOT NULL CHECK(kind IN ('REQUEST','RESPONSE','TRANSFER','NOTICE')),
 lifecycle TEXT NOT NULL CHECK(lifecycle IN ('OPEN','ACK','COMPLETE')),
 created_at TEXT NOT NULL, payload_ref TEXT NOT NULL, idempotency_key TEXT NOT NULL UNIQUE,
 thread_id TEXT, parent_message_id TEXT, correlation_id TEXT, reply_to TEXT, version INTEGER NOT NULL DEFAULT 1
);
CREATE TABLE IF NOT EXISTS threads (
 thread_id TEXT PRIMARY KEY, canonical_role_id TEXT NOT NULL, objective_ref TEXT NOT NULL,
 status TEXT NOT NULL, next_action TEXT NOT NULL, authority_signature TEXT NOT NULL,
 verification_state TEXT NOT NULL, parent_thread_id TEXT, transfer_id TEXT,
 last_processed_message_version INTEGER NOT NULL DEFAULT 0, updated_at TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS thread_messages (
 thread_id TEXT NOT NULL, message_id TEXT NOT NULL, PRIMARY KEY(thread_id,message_id),
 FOREIGN KEY(thread_id) REFERENCES threads(thread_id), FOREIGN KEY(message_id) REFERENCES messages(message_id)
);
CREATE TABLE IF NOT EXISTS processing_ledger (
 idempotency_key TEXT PRIMARY KEY, disposition TEXT NOT NULL, thread_id TEXT,
 material_step TEXT, effect_ref TEXT, verification_state TEXT NOT NULL, updated_at TEXT NOT NULL,
 FOREIGN KEY(thread_id) REFERENCES threads(thread_id)
);
CREATE TABLE IF NOT EXISTS recovery_journal (
 operation_id TEXT PRIMARY KEY, idempotency_key TEXT NOT NULL, thread_id TEXT NOT NULL,
 intended_effect TEXT NOT NULL, target_owner TEXT NOT NULL, authority_signature TEXT NOT NULL,
 phase TEXT NOT NULL CHECK(phase IN ('PREPARED','EFFECT_OBSERVED','VERIFIED','COMMITTED')),
 effect_ref TEXT, updated_at TEXT NOT NULL, FOREIGN KEY(thread_id) REFERENCES threads(thread_id)
);
CREATE TABLE IF NOT EXISTS messaging_meta (key TEXT PRIMARY KEY, value TEXT NOT NULL);
INSERT OR IGNORE INTO messaging_meta(key,value) VALUES('schema_version','1');
