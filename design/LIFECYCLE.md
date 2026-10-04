# Execution Lifecycle

Status: EXPERIMENTAL / NORMATIVE FOR CONTRACT TESTS

## 1. Step state

A MODE-supervised step is one of:
PENDING -> ACTIVE -> VERIFIED -> COMPLETED

Failure paths:
ACTIVE -> FAILED
FAILED -> RETRY_PENDING -> ACTIVE
FAILED -> REPLAN_PENDING -> ACTIVE
FAILED -> BLOCKED

A step MUST NOT become COMPLETED until MODE verification succeeds.

## 2. Failure classification

On PROFILE failure, the MODE classifies the failure before choosing a transition:
- TRANSIENT: same bounded operation may plausibly succeed unchanged.
- METHOD: objective/authority remain valid but the selected method/composition failed.
- AUTHORITY: required capability is unavailable or not EXECUTE.
- OBJECTIVE: proceeding would require changing or materially interpreting the objective.
- VERIFICATION: produced output cannot satisfy the completion evidence.

## 3. Retry and replan

A deterministic contract run permits at most one automatic retry of the same PROFILE invocation after a TRANSIENT failure.

After that retry fails, or immediately for METHOD failure, the MODE may perform one bounded replan using only currently permitted EXECUTE PROFILEs. A replan may change method, ordering, or composition, but MUST preserve objective, constraints, authority and side-effect boundary.

AUTHORITY failures become BLOCKED or user escalation. They MUST NOT be bypassed through another PROFILE.
OBJECTIVE failures require user escalation.
VERIFICATION failures remain incomplete and may replan only if a permitted method can satisfy the original verification requirement.

No retry/replan may weaken the expected result or silently widen authority.

## 4. Terminal outcome

The MODE returns:
- COMPLETED only after verification;
- BLOCKED when authority/implementation prevents progress;
- ESCALATED when a material user decision is required;
- FAILED when bounded retry/replan is exhausted.

Each transition is recorded in durable THREAD state when a durable THREAD exists.
