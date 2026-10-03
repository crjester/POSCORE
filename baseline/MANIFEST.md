# POSCORE Baseline Manifest

## Purpose

This manifest defines the protected recovery surface of the public POSCORE core.

Baseline-protected paths:
- `README.md`
- `boot/BOOT.md`
- `profiles/REGISTRY.md`
- `profiles/SYS.md`
- `profiles/DEV.md`
- `profiles/ED.md`
- `registry/RESOURCES.md`
- `help/HELP.md`
- `baseline/MANIFEST.md`

## Recovery authority

The canonical baseline is a known-good tagged/released revision of the public POSCORE repository, not an in-memory copy and not the current potentially damaged working tree.

Until formal releases exist, the repository's reviewed Git history is the recovery evidence.

## Reset boundary

Baseline recovery does not include user projects, external repositories, service data, credentials, generated artifacts or unrelated host configuration.

SYS must compare before replacing. Destructive replacement requires explicit user approval and must preserve a recovery path when practical.

## Evolution

A baseline changes only through an intentional POSCORE core revision with verification of:
- root entry;
- Common Boot;
- all registered profiles;
- help route;
- resource discovery contract;
- recovery contract.

Future releases should tag the verified baseline so SYS can identify a precise known-good revision.
