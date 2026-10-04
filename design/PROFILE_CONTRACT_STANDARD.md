# PROFILE Contract Standard

Status: EXPERIMENTAL / NORMATIVE FOR CONTRACT TESTS
Scope: reusable across TE / TD / TL and future MODEs

## 1. Definition

A PROFILE is a bounded professional capability. It describes **how an authorized capability may be performed**. It never owns the user's overall objective, MODE identity, responsibility transfer, or final completion decision.

A PROFILE can broaden methods inside its bounded objective, but cannot broaden authority.

## 2. Required contract fields

Every PROFILE definition MUST declare these sections.

### Identity
- `profile_id`: stable unique identifier.
- `version`: contract version.
- `status`: PLANNED / EXPERIMENTAL / ACTIVE / RETIRED.

### Purpose
One bounded capability statement. It MUST describe a capability, not a role identity.

### Input contract
Declare:
- required objective fragment;
- required context/evidence;
- accepted constraints;
- required authority context;
- optional inputs.

The PROFILE MUST reject or return a typed failure when a required input is absent. It MUST NOT invent authority or authoritative state.

### Output contract
Declare:
- result type;
- evidence/artifact references produced;
- unresolved uncertainty;
- local verification result;
- side effects actually performed.

Output MUST be consumable by another PROFILE or the supervising MODE without transferring responsibility.

### Side-effect class
Exactly one maximum class:
- `READ`
- `WRITE_REVERSIBLE`
- `WRITE_CONSEQUENTIAL`
- `EXTERNAL_ACTION`

The declared class is a ceiling, not permission. Invocation still requires MODE EXECUTE access and task authority.

### Preconditions
Conditions that must be true before invocation, including any required SoT/runtime availability or upstream evidence.

### Authority boundary
Must state what the PROFILE cannot decide. At minimum:
- cannot change the parent objective;
- cannot expand MODE authority;
- cannot grant itself/another PROFILE access;
- cannot redefine authoritative SoT;
- cannot perform a higher side-effect class than declared;
- cannot declare MODE objective completion;
- cannot TRANSFER responsibility.

### Method freedom
Describe the solution space the PROFILE may explore. Method choices are free unless constrained by objective, MODE authority, external SoT policy, verification requirements or explicit user constraints.

### Local verification
Declare what proves that the PROFILE invocation itself succeeded. This is capability-local evidence only and MUST NOT be interpreted as MODE completion.

### Failure contract
Return one or more lifecycle-compatible classes:
- `TRANSIENT`
- `METHOD`
- `AUTHORITY`
- `OBJECTIVE`
- `VERIFICATION`

Include the blocking fact/evidence and whether bounded retry with the same invocation is meaningful.

### Composition
Declare:
- valid upstream input types;
- valid downstream output consumers;
- whether parallel composition is safe;
- conflicts/exclusivity;
- idempotence/replay characteristics where material.

### External policy references
Reference mutable service/project policy rather than copying it into the PROFILE.

## 3. Invocation envelope

A MODE invocation MUST bind:
- parent thread/objective reference;
- bounded sub-objective;
- constraints;
- current authority grant;
- authoritative input/evidence refs;
- required output type;
- applicable verification contracts;
- allowed side-effect ceiling.

The effective authority is the intersection of MODE authority, registry access, task authorization, PROFILE side-effect ceiling and external SoT/service policy.

## 4. Result envelope

Every invocation returns:
- `profile_id/version`
- `status: SUCCESS | FAILED | BLOCKED`
- `result`
- `evidence_refs`
- `uncertainty`
- `side_effects`
- `local_verification`
- `failure_class` when not successful

SUCCESS means only that the bounded capability completed according to its local contract.

## 5. Registry rule

PROFILE definition and PROFILE access are separate.
A registry grant is explicit per MODE:
- EXECUTE
- REFERENCE
- no grant

Side-effect similarity never implies permission inheritance.

## 6. Anti-patterns

Invalid PROFILEs include:
- a miniature MODE owning end-to-end responsibility;
- a profile that chooses its own authoritative repository/service;
- a profile that promotes its own result into policy/ACTIVE state;
- a profile whose SUCCESS bypasses MODE verification;
- a profile that embeds mutable project thresholds/runtime state;
- a profile that uses another PROFILE as a permission proxy.
