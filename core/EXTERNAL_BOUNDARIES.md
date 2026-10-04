# Production Candidate External Boundaries
Status: DISTRIBUTION CORE

## Platform/resource discovery
Production Common Boot owns only stable discovery coordinates. It delegates Platform/resource/service discovery to the registered external Platform bootstrap using the canonical participant binding. Mutable downstream paths, credentials, runtime results and service policy are not copied into the OS.

Required/optional readiness must remain distinguishable. Missing required discovery fails closed; optional unavailability may degrade only the affected capability.

## Operational Messaging
Boot may discover and summarize Operational Messaging but MUST NOT execute messages merely because they exist. MESSAGE is communication/event state, not execution authority or THREAD truth. Explicit processing and MESSAGE<->THREAD lifecycle are separate candidate contracts to be implemented and tested at G7.

## External SoT
Project repositories own project STATE/history/code; Platform/Service SoTs own infrastructure/service policy; live runtime owns observed runtime state; publication service owns publication state; research/project SoTs own mutable domain policy/data/learned state.

## Specialist transfer
Engineering, editorial and research responsibility transfers are explicit. A transfer does not grant receiver authority. Receiver resolves current authority before execution.
