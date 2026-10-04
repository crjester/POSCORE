# Production Candidate Permission Defaults
Status: DISTRIBUTION CORE
Default: fail closed. Missing grant = no EXECUTE.

## Baseline access
role.engineering: EXECUTE read/design/diagnose/test/runtime-observe capabilities from engineering role; consequential engineering change/deploy/SoT maintenance require explicit bounded task grant.
role.editorial: EXECUTE editorial read/write-artifact/preparation/check capabilities from editorial role; publication external action requires explicit bounded task grant.
role.research: EXECUTE research role research/ML READ capabilities; canonical learning-state commit, promotion, publication, engineering change and real action are not granted by default.

## Effective authority
effective = MODE authority ∩ role PROFILE access ∩ explicit task grant ∩ PROFILE side-effect ceiling ∩ external SoT/service policy.
All dimensions must permit the requested operation.

## Non-grants
Alias, resource binding, participant ID, MESSAGE, TRANSFER, historical THREAD snapshot, PROFILE side-effect class and PROFILE presence never grant authority.
Current stricter policy overrides historical authority.
Cross-MODE PROFILE reuse requires an explicit bounded EXECUTE grant from the current MODE/task and transfers no role responsibility.
Failed/denied capability cannot be proxied through another PROFILE.
