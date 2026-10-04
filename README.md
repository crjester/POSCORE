# POSCORE — ProjectOS Core Distribution
POSCORE is the installable upstream distribution for ProjectOS Core. It contains no user-specific resources, credentials, project state or live operational data.

## Install
Create/select a user-owned ProjectOS repository, copy this Core into it, then point ChatGPT bootstrap instructions at that user repository. POSCORE remains an immutable distribution/recovery upstream, not the normal write target.

## Production MODE aliases
- ENG-MODE -> role.engineering
- PUB-MODE -> role.editorial
- RES-MODE -> role.research

Canonical roles are stable; aliases grant no authority. PROFILE and VERIFICATION contracts are independent capability/evidence identifiers.

## Boot
Read core/ENTRYPOINT.md then boot/BOOT.md. Boot resolves role, resources and current permission before reporting readiness. Project/THREAD state is lazy-loaded only for work/resume.

## Recovery
Releases are immutable. ACTIVE/LKG selection and durable project/THREAD/message state are external to release payload. Use docs/RECOVERY.md; rollback must never rewind legitimate external durable state.

## Distribution boundary
Never store private resource bindings, SoTs, runtime state, credentials, message contents or user project data in POSCORE.
