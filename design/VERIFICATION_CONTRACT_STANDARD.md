# VERIFICATION Contract Standard

Status: EXPERIMENTAL / NORMATIVE FOR CONTRACT TESTS
Scope: reusable across TE / TD / TL and future MODEs

## 1. Definition

A VERIFICATION contract defines **what evidence must be true before a bounded claim or lifecycle transition may be accepted**.

It performs no domain work and grants no execution authority.

PROFILEs may produce evidence. MODEs select/apply required verification contracts and own the final acceptance decision.

## 2. Required contract fields

Every VERIFICATION definition MUST declare:

### Identity
- `verification_id`
- `version`
- `status`

### Claim / gate
The exact claim or transition being tested, such as capability success, artifact validity, deployment completion, publication completion, research eligibility or objective completion.

### Applicability trigger
Objective, side-effect, artifact/result type or MODE decision that makes this verification mandatory.

A mandatory trigger cannot be waived by the PROFILE being verified.

### Required evidence
For each evidence item declare:
- evidence type;
- authoritative source class;
- freshness/cutoff requirement if any;
- minimum sufficiency rule;
- whether absence means FAIL or BLOCKED.

### Invariants
Conditions that must remain true regardless of result, including authority/objective/SoT boundaries where relevant.

### Evaluation rule
A deterministic rule for:
- PASS
- FAIL
- BLOCKED

PASS requires all mandatory evidence and invariants.
FAIL means evidence contradicts the claim or an invariant is violated.
BLOCKED means required evidence cannot currently be obtained/validated without unauthorized action or material user decision.

### Output
Return:
- verification id/version;
- tested claim;
- PASS/FAIL/BLOCKED;
- evidence refs;
- failed/missing criteria;
- uncertainty;
- allowed lifecycle transition.

### Lifecycle effect
Explicitly declare which transitions PASS permits. Verification itself never performs the transition.

## 3. Selection rules

Verification is selected by the supervising MODE from:
1. objective/result type;
2. actual or intended side effect;
3. domain invariants owned by the MODE;
4. external SoT/service requirements.

The strongest applicable set is cumulative unless two contracts explicitly declare a conflict resolved by a higher authoritative policy.

A PROFILE cannot deselect verification that applies to its own output.

## 4. Evidence rules

- Evidence must be attributable to its responsible source.
- A produced artifact is not automatically evidence of its correctness.
- Self-report from the PROFILE is insufficient when independent/runtime/source verification is required.
- Missing evidence cannot be converted into PASS by confidence or plausibility.
- Stale evidence fails freshness requirements.
- Evidence gathered outside authority may not be used to legitimize the unauthorized action.

## 5. Composition

Multiple verification contracts may form a gate set.

Objective completion requires:
- all mandatory verification contracts PASS;
- no unresolved mandatory BLOCKED result;
- MODE authority still valid;
- lifecycle/THREAD checkpoint requirements satisfied.

A local PROFILE verification PASS can feed a broader gate but never replaces it.

## 6. Anti-patterns

Invalid verification includes:
- "PROFILE returned SUCCESS" as sole completion evidence;
- optional verification chosen by the capability under test;
- a gate that changes after seeing the result;
- a verifier that performs the consequential action it is supposed to verify unless separately authorized as another PROFILE invocation;
- evidence copied from non-authoritative state when authoritative evidence is available;
- treating unavailable evidence as negative or positive without an explicit contract rule.
