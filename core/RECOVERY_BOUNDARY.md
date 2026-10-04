# Production Candidate Recovery Boundary
Status: DISTRIBUTION CORE
Normal boot must have a documented external manual-bootstrap route that reaches the production root without reconstructing authority from memory. Structural release rollback must use a separately preserved last-known-good release reference. Durable THREAD recovery follows design/STATE.md: current stricter authority wins; verified work is not replayed; missing/corrupt/incompatible state fails closed.
Install/update/rollback mechanics are intentionally not implemented here and remain G8 scope.
