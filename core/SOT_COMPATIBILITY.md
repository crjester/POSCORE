# Production Candidate SoT Compatibility Contract
Status: DISTRIBUTION CORE
Source classes: PROJECT_STATE, SERVICE_STATE, RUNTIME_STATE, PUBLICATION_STATE, ML_RESEARCH_STATE, RECOVERY_REFERENCE.
Rules:
- source class and owner are immutable semantic metadata;
- legacy supported schema may be read directly or adapted into candidate read-model;
- adapter is pure/reversible where conversion is required and never writes source fixture;
- unknown optional fields are preserved in passthrough metadata;
- missing material identity/authority/state field => BLOCKED;
- newer unsupported schema => BLOCKED;
- HISTORY/PUBLICATION/RUNTIME never overrides PROJECT_STATE;
- adapter cannot add authority or convert observational/publication data into project truth;
- writes, if later authorized, route to owning SoT through current permission checks; G6 performs no real writes.
