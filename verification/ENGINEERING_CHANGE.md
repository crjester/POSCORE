# VERIFY-ENGINEERING-CHANGE
Identity: verification_id=VERIFY-ENGINEERING-CHANGE; version=1; status=EXPERIMENTAL
Claim / gate: an engineering change may be accepted as complete.
Applicability trigger: any engineering objective that changes repository/configuration/runtime state.
Required evidence: fixed target/acceptance criteria (authoritative task/SoT; current); implementation evidence (target artifact); automated/deterministic checks when applicable; runtime evidence when runtime behavior changed; preservation evidence proportionate to scope; material SoT update evidence when required. Missing mandatory evidence => BLOCKED.
Invariants: objective/authority/target unchanged unless explicitly authorized; unrelated scope preserved; PROFILE success alone insufficient.
Evaluation rule: PASS iff all applicable mandatory evidence exists and supports claim; FAIL on contradictory evidence/invariant violation; BLOCKED when evidence cannot be obtained within authority.
Output: id/version, claim, PASS/FAIL/BLOCKED, evidence refs, failed/missing criteria, uncertainty, allowed transition.
Lifecycle effect: PASS permits TE to move verified engineering objective toward COMPLETED; verifier performs no transition.
