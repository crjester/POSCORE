# POSCORE

POSCORE is the public core distribution of ProjectOS.

It is intentionally small: it provides a reproducible operating layer that lets an AI session discover its connected resources, restore an appropriate role, build missing development/runtime environments when authorized, verify its work, and record durable state in external Sources of Truth.

## Core roles

- `SYS-MODE 적용` — conservative ProjectOS system administration, integrity, bootstrap and recovery.
- `DEV-MODE 적용` — normal engineering, development, environment construction, deployment and verification.
- `ED-MODE 적용` — documentation, editorial work and publication preparation. A blog is optional and is not part of POSCORE.
- `도움말` — show the short user help.

## Design boundary

POSCORE does **not** ship the owner's current services, blog, MarketLens, Mini PC configuration, private projects, credentials, IP addresses, runtime databases or personal operating state.

POSCORE stores operating rules and stable discovery information. Mutable project/service/runtime state belongs to the responsible external Source of Truth.

## Boot

For a MODE command:

1. Read `profiles/REGISTRY.md`.
2. Read `boot/BOOT.md`.
3. Load the selected profile.
4. Discover only the resources required for readiness.
5. Report READY or DEGRADED with evidence.
6. Restore project/task state only when an actual task requires it.

Do not synthesize MODE behavior from session memory when these external files are available.

## Self-building environment

Missing tooling is not, by itself, a reason to stop. DEV-MODE may inspect the host and build the minimum authorized development/runtime environment required by the task, then verify it and record the durable result. It must reuse suitable existing resources before adding new ones.

## Recovery

`baseline/MANIFEST.md` defines the protected POSCORE baseline. SYS-MODE owns comparison and recovery. Recovery must preserve user projects, data and unrelated resources by default, and must require explicit approval before destructive replacement.

## License

No license is currently granted. Public visibility permits viewing and GitHub-platform use subject to GitHub's terms, but this repository does not currently grant a general open-source license.
