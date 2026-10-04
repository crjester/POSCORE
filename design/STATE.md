# Durable THREAD State

Status: EXPERIMENTAL / NORMATIVE FOR CONTRACT TESTS

## 1. Authority

A THREAD state record is the authoritative execution checkpoint for restart recovery. Chat/session memory is never authoritative.

Canonical repository-backed test state lives under `state/threads/<thread_id>.md`. A production SoT may replace this storage location later, but MUST preserve this contract.

## 2. Required fields

Every resumable THREAD record MUST contain:
- thread_id
- objective
- constraints
- responsible_mode
- authority_snapshot
- profile_access_snapshot
- status
- completed_step
- active_step
- next_action
- verification_state
- last_updated
- evidence_refs

Optional fields may include branch/message references and failure history.

## 3. Checkpoint rule

The responsible MODE writes a checkpoint after every material transition: step activation, verified completion, failure classification, retry/replan decision, BLOCKED/ESCALATED, or objective-authorized change.

The checkpoint is written before reporting a durable transition as complete.

## 4. Restart rule

A fresh session that resumes a THREAD MUST:
1. perform normal testOS boot and resolve current MODE authority;
2. load the THREAD record from the external SoT;
3. restore objective, constraints, completed_step, active_step, next_action and verification state;
4. compare stored authority/profile snapshots with current registries;
5. use the stricter current authority if permissions changed; never resurrect removed authority;
6. continue from next_action without replaying a VERIFIED/COMPLETED step unless verification evidence is invalid;
7. record the resumed checkpoint.

If the state is missing, ambiguous, corrupt, or incompatible with current authority, stop as BLOCKED/ESCALATED rather than guessing.
