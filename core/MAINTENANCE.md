# Production Candidate Maintenance Contract
Status: DISTRIBUTION CORE
Preserve incumbent operating-system maintenance semantics:
- normal weekly health-check attempt: Monday 03:00 Korea time;
- health check targets real drift/duplication/conflict, not cosmetic rewriting;
- load current authoritative contracts and sample external SoTs/runtime only as needed;
- refactor only affected areas, verify, and record meaningful changes;
- if authoritative contracts/resources or trustworthy verification are unavailable, DEFER with no partial speculative policy edit;
- manual checks do not reset the regular schedule;
- never copy mutable downstream state into the OS.
Scheduling/execution mechanics are external and are not implemented by G1.
