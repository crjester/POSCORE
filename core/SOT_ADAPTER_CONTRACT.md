# Production Candidate SoT Adapter Contract
Status: DISTRIBUTION CORE
Adapter input: immutable schema-frozen source copy + declared source class/version.
Output: canonical read-model + passthrough + adapter version + source checksum.
Supported legacy v1 mapping:
project: current_state->state; next_step->next_action; authority remains authority.
service: policy remains policy; no project state emitted.
runtime: observed_status remains observation; no desired/current project state emitted.
publication: published/rendered remain publication facts only.
ml_research: hypothesis/freeze/evidence/claim remain research fields; no promotion inferred.
recovery: root/lkg coordinates remain recovery references only.
Round-trip requirement: fields mapped by adapter plus unknown optional passthrough reproduce the original semantic record exactly. Material missing/ambiguous fields or unsupported future schema => BLOCKED.
