# Publication Adapter Contract
An installation adapter translates platform.publication into a concrete blog/CMS/publication service without changing Core semantics.

State: UNBOUND | BOUND_READY | BOUND_DEGRADED | BLOCKED.
Lifecycle for a publish request: resolve binding -> resolve exact target/service policy -> re-resolve current authority -> PUBLICATION-EXECUTE -> record publication_ref/evidence in publication-owned state -> PUBLICATION-RENDER-CHECK -> VERIFY-PUBLICATION.

Fresh install has no publication store to initialize by default. Binding is created only when the installer chooses a provider. Existing provider data is authoritative to that provider and is connected non-destructively. Adapter-local cache/index, if any, must be installation-local, rebuildable, and must not become Project STATE.
