# Production Candidate Release Smoke Contract
Status: DISTRIBUTION CORE
Smoke uses the release's normal production ENTRYPOINT, router, resource resolver and permission resolver. No fixture/test bypass entrypoint is allowed.
Minimum smoke:
- manifest/checksum identity matches ACTIVE;
- SE/ED/ML alias routes to expected canonical roles;
- required resource probes succeed with external environment bindings;
- baseline permissions match frozen signature;
- boot-only loads no project/THREAD state;
- THREAD store remains reachable but unmodified.
Any required smoke failure prevents COMMITTED/LKG promotion and triggers rollback semantics.
