# POSCORE Installation
1. Connect GitHub and create/select a user-owned ProjectOS repository; private is recommended.
2. Copy the POSCORE distribution into that repository without importing any other user's bindings/state.
3. Configure environment-specific resource bindings outside the immutable Core contracts.
4. Set ChatGPT bootstrap instructions from bootstrap/CHATGPT_INSTRUCTIONS.md to the user repository.
5. If host execution is needed, follow docs/HOST_MCP.md and verify reboot recovery.
6. Fresh-chat boot ENG-MODE, PUB-MODE and RES-MODE; verify canonical roles and required resources.
7. Verify Operational Messaging/THREAD integration if messaging is configured.
8. Record the installed immutable release and LKG rollback reference.

Never place secrets or live user state in POSCORE.
