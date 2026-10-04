# Operational Messaging Storage Binding and Initialization
Operational Messaging data is installation-local durable state and is never shipped in POSCORE.

Binding key: platform.messaging. The installation Registry/config resolves it to a provider and coordinate such as a local SQLite path, managed database DSN, or connector-specific store. POSCORE does not prescribe a machine/user/plugin name.

Fresh install:
1. resolve platform.messaging coordinate from installation configuration;
2. if no store exists and the selected provider supports local initialization, create an empty store using install/messaging/schema.sql;
3. record schema version and bind the coordinate;
4. run message/thread/restart smoke validation.

Existing install:
- connect to the existing configured store;
- inspect schema/version before writes;
- CREATE IF NOT EXISTS is only for absent schema objects and MUST NOT delete/reset/truncate existing records;
- unsupported/newer/conflicting schema => BLOCKED and explicit migration; never initialize over it.

Each ProjectOS installation owns its own coordinate. Two installations may use different physical providers/paths while using the same MESSAGE/THREAD contracts. Store contents, credentials and coordinates remain outside POSCORE.
