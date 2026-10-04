# testOS Architecture

Status: DESIGN / EXPERIMENTAL

## 1. Design objective

testOS exists to minimize repeated multi-step user commands without sacrificing control, reproducibility, verification, or recovery.

The rebuild preserves the ProjectOS philosophy and user-facing MODE interface while allowing the internal architecture to be rebuilt from proven structural patterns.

## 2. Core model

```text
User
  ↕
MODE
  ├─ interpret objective
  ├─ enforce authority and system rules
  ├─ select/compose permitted PROFILEs
  ├─ supervise durable work state
  └─ verify/consolidate result
        │
        ├─ PROFILE
        ├─ PROFILE
        └─ PROFILE
              ↓
        SoT / runtime / resources
```

## 3. Primitive responsibilities

### MODE
User-facing responsible execution subject. Owns interpretation, planning, authority boundaries, PROFILE selection/composition, escalation, final verification, and consolidated response.

### PROFILE
Reusable professional capability contract. It receives a bounded objective and should use its available expertise broadly within that boundary. It is not a miniature MODE and does not own the user's overall objective.

### PROFILE ACCESS
- `EXECUTE`: MODE may invoke the PROFILE.
- `REFERENCE`: MODE may inspect its contract/output semantics for coordination but may not invoke it.
- no grant: unavailable.

### THREAD
Durable execution identity for a long-running objective/Roadmap. Session lifetime does not define work lifetime.

Execution transition and failure/recovery semantics are defined by `design/LIFECYCLE.md`. Durable checkpoint and restart semantics are defined by `design/STATE.md`.

### MESSAGE
Durable communication or event associated with work. It is not the Roadmap body.

### BRANCH
Bounded child work derived from a THREAD and intended to return a result to its parent.

### SoT
Authoritative external source for state, policy, evidence, or artifacts.

### TRANSFER
Explicit responsibility transfer between MODEs. Ordinary PROFILE composition is not a TRANSFER.

## 4. Governing invariant

**Rigid structure, broad capability.**

Rigid:
- objective boundary
- responsibility
- authority
- permission
- authoritative state
- lifecycle
- verification
- recovery
- escalation

Broad:
- professional reasoning
- alternative exploration
- method selection
- composition
- research breadth
- creative/technical solution search

The system constrains authority, not useful expertise.

## 5. User abstraction

The user should normally see:
- current conclusion/state,
- material decisions or changes,
- required next action.

Internal PROFILE selection, intermediate calls, routine verification, and coordination remain auditable but do not require user participation.

## 6. Reference architecture policy

testOS may adopt proven structural patterns after review.
It does not import an external system's runtime identity or vocabulary into normative execution contracts.

Research process:
`external pattern → evaluate → ADOPT / ADAPT / REJECT → redefine in testOS vocabulary → test → promote`

## 7. Current design gates

Before testOS can be considered runnable beyond a prototype:
- MODE contract must be defined.
- PROFILE contract must be defined.
- PROFILE registry and access model must be defined.
- composition and escalation semantics must be defined.
- durable THREAD/state interface: defined in `design/STATE.md`; implementation remains experimental.
- failure/retry/recovery semantics: defined in `design/LIFECYCLE.md`; implementation remains experimental.
- observability/audit contract must be defined.
- fresh-session boot must reproduce the same authority and capability boundaries.

No testOS design is promoted merely because it works once.
