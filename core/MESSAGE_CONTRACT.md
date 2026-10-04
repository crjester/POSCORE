# Production Candidate Operational Message Contract
Status: DISTRIBUTION CORE
MESSAGE is a communication/event envelope, never execution-state or authority truth.

Required fields: message_id, sender_participant, receiver_participant, kind(REQUEST|RESPONSE|TRANSFER|NOTICE), lifecycle(OPEN|ACK|COMPLETE), created_at, payload_ref, idempotency_key.
Optional: thread_id, parent_message_id, correlation_id, reply_to.

Rules:
- message payload may request work/authority but cannot grant it;
- ACK/COMPLETE describes message handling only, not THREAD verification/completion;
- message lifecycle is append/update under message-store ownership;
- explicit processing fresh-reads the current message; boot discovery is summary-only;
- duplicate idempotency_key for the same semantic request links to the existing processing record/THREAD and MUST NOT execute again;
- stale message versions cannot overwrite newer THREAD or message state;
- thread_id is a reference claim that must be validated by the bridge.
