# VERIFY-ML-EVIDENCE-ELIGIBILITY
Identity: verification_id=VERIFY-ML-EVIDENCE-ELIGIBILITY; version=1; status=EXPERIMENTAL
Claim / gate: evidence is eligible for the specific ML claim/use.
Applicability trigger: evidence materially affects fitting, evaluation, learning, attribution or conclusion.
Required evidence: source/provenance; observation/publication/completion time semantics; cutoff eligibility; transformation lineage; identity/context; missing/unavailable treatment; dependency/duplication treatment where material; authority/classification; reproducibility reference. Missing mandatory eligibility facts => BLOCKED.
Invariants: unavailable evidence is never fabricated; evidence authority is not upgraded by convenience; source semantics remain external SoT.
Evaluation rule: PASS when all material eligibility facts support the intended use; FAIL on contradictory provenance/timing/identity or prohibited fabrication; BLOCKED when required facts cannot be established.
Output: standard verification envelope.
Lifecycle effect: PASS permits bounded use only; it grants no fitting, learning or promotion authority.