# Production Candidate Resource Registry
Status: DISTRIBUTION CORE
Registry stores stable discovery bindings only; mutable downstream state/credentials/messages are forbidden.

| resource_id | owner | required | binding_key | access | minimum_probe |
|---|---|---:|---|---|---|
| resource.os.root | ProjectOS | yes | os.root | repository-read | root-readable |
| resource.role.registry | ProjectOS | yes | os.roles | repository-read | registry-readable |
| resource.common.boot | ProjectOS | yes | os.boot | repository-read | boot-readable |
| resource.platform.bootstrap | Platform | yes | platform.bootstrap | external-bootstrap | bootstrap-readable |
| resource.messaging.discovery | Platform | no | platform.messaging | platform-delegated | discovery-readable |
| resource.recovery.manual | ProjectOS | yes | os.recovery | repository-read | recovery-readable |

Participant-scoped downstream discovery is returned by Platform after bootstrap and is not copied here.
Binding coordinates are environment configuration. They grant no authority.
