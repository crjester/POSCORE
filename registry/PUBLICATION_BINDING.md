# Publication Resource Binding
Publication is an optional external capability. POSCORE ships no publication endpoint, URL, credential, post database, content, or user-specific service identity.

Binding key: platform.publication
Logical capability: prepare target-aware packages, execute authorized publication actions, observe publication state/rendering.
Default state when no coordinate is configured: UNBOUND.

Rules:
- UNBOUND does not block ProjectOS boot or editorial writing/review/candidate work that does not require a resolved target.
- target-dependent preparation may report unresolved target requirements rather than inventing service details.
- a publication execution request while UNBOUND => BLOCKED_RESOURCE/UNBOUND; never success.
- binding resolves to an installation-local adapter/connector coordinate and service policy reference.
- connector display name, endpoint, credentials, storage path and publication records remain outside POSCORE.
- binding grants zero publication authority. PUBLICATION-EXECUTE still requires its existing explicit task authority and service/target resolution.
- publication result is PUBLICATION_STATE/evidence and cannot override PROJECT_STATE or domain SoT.
- connecting an existing service is non-destructive: probe/read current service metadata; never initialize, truncate or delete existing posts/data unless separately authorized by that service's own operation.
- each installation may bind a different connector/provider while keeping the same canonical role, PROFILE and VERIFICATION contracts.

Adapter minimum interface:
- probe() -> BOUND_READY | BOUND_DEGRADED | UNBOUND
- prepare_capabilities() -> supported metadata/assets/presentation constraints
- publish(package, exact_target, idempotency_key, authority_context) -> publication_ref/evidence
- observe(publication_ref) -> current render/access/discovery evidence
- recover(publication_ref/idempotency_key) -> authoritative publication state

Adapters MUST reject publish when explicit publication authority is absent even if the connector is authenticated and writable.
