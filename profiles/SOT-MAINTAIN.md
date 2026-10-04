# SOT-MAINTAIN
Identity: profile_id=SOT-MAINTAIN; version=1; status=EXPERIMENTAL
Purpose: Record an already-decided verified material change in its responsible technical SoT.
Input contract: authoritative target SoT, verified decision/change, evidence refs, explicit write authority.
Output contract: updated SoT ref/version, recorded facts, side effects, local verification.
Side-effect class: WRITE_REVERSIBLE
Preconditions: decision already owned/accepted by MODE; target SoT resolved; explicit task authority and EXECUTE grant.
Authority boundary: cannot create/change the decision, choose a different SoT, alter unrelated state, grant authority, or declare completion.
Method freedom: representation may follow current SoT schema/policy.
Local verification: authoritative record reflects the supplied verified decision without semantic expansion.
Failure contract: TRANSIENT/METHOD/AUTHORITY/VERIFICATION.
Composition: consumes verified MODE decision; normally terminal evidence input; sequential per SoT record.
External policy references: responsible SoT schema/maintenance policy.
