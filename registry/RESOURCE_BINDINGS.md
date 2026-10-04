# Resource Binding Registry
POSCORE defines logical resource capabilities only. Physical connector/plugin names are installation-local coordinates and MUST NOT be embedded in MODE, PROFILE, VERIFICATION, permission, or canonical-role contracts.

| binding_key | logical capability | required |
|---|---|---:|
| os.root | read installed ProjectOS root | yes |
| os.roles | read canonical role registry | yes |
| os.boot | read production boot contract | yes |
| platform.bootstrap | discover environment capabilities/resources | yes |
| platform.messaging | discover Operational Messaging backend | no |
| os.recovery | read recovery contract | yes |

Installation supplies binding_key -> connector coordinate. Connector display names are never resource IDs, roles, PROFILEs, or authority identifiers. Replacing connector A with connector B changes only the environment binding map; canonical roles, MODE contracts, PROFILE access, VERIFICATION contracts and authority remain unchanged. Missing required capability is BLOCKED; optional failure is DEGRADED. Connector metadata grants no authority. Credentials/live state remain outside POSCORE.
