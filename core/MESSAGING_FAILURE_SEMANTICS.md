# Messaging Failure Semantics
Status: DISTRIBUTION CORE
- messaging discovery unavailable during unrelated local work: DEGRADED messaging, local task may continue if no message dependency.
- task explicitly dependent on receiving/responding to a message: BLOCKED while store unavailable.
- malformed/wrong THREAD link: BLOCKED, no relink by inference.
- duplicate/replayed message: NOOP_ALREADY_PROCESSED with existing thread/effect reference.
- stale message: STALE_NO_THREAD_MUTATION.
- receiver unavailable on transfer: BLOCKED_TRANSFER, sender THREAD preserved.
- authority denied after transfer/restart: BLOCKED_AUTHORITY; never use sender/message/historical authority.
- circular transfer threshold exceeded: ESCALATED.
