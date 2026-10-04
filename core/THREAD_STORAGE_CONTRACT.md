# Production Candidate THREAD Storage Contract
Status: DISTRIBUTION CORE
THREAD remains the durable execution checkpoint defined by design/STATE.md.
Additional messaging fields: linked_message_ids, parent_thread_id(optional), transfer_id(optional), last_processed_message_version, processing_ledger.
processing_ledger records idempotency_key -> disposition, thread_id, material_step/effect_ref, verification_state.
A message cannot create/modify a THREAD unless bridge validation succeeds.
THREAD completion remains governed by MODE verification, independent of message COMPLETE.
