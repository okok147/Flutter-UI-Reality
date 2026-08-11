# Maintenance policy

## Current scope

| Area | Status | Support policy |
| --- | --- | --- |
| `gardener_01` | Maintained | Bug fixes, compatible dependency updates, tests, documentation, and current stable Flutter support. |
| `friendly_forest_02` | Legacy / migration planned | Documentation and coordinated migration work only. |
| `market_app_03` | Legacy / migration planned | Documentation and coordinated migration work only. |
| `mobile_application_activity_04` | Legacy / migration planned | Documentation and coordinated migration work only. |
| `testing` | Legacy | Historical reference until its future is decided. |

## Maintainer

[@okok147](https://github.com/okok147) is the repository owner and primary maintainer. Responsibilities include issue and pull-request triage, dependency decisions, compatibility migrations, CI, documentation, release preparation, and security-report handling. Historical contributions remain attributed through Git history.

Maintenance resumed in August 2026 after a documented gap. The project does not claim uninterrupted maintenance during that period.

## Triage principles

- Reproducible failures in the maintained example take priority.
- Security reports use the private process in `.github/SECURITY.md`.
- Legacy-example requests are labeled and scheduled as coordinated migrations.
- Dependency pull requests are merged only when the affected example resolves, analyzes, tests, and builds in its supported environment.
- Asset additions require documented provenance and terms.

No response-time or resolution-time guarantee is offered. Community help is welcome through focused issues and pull requests.

## Release process

1. Confirm the intended scope in `CHANGELOG.md`.
2. Run format, analysis, tests, and the web release build for Gardener.
3. Confirm CI succeeds on the release commit.
4. Review dependency, license, asset-provenance, and secret-scanning results.
5. Create a signed or annotated version tag and GitHub release from prepared notes.
6. Record any platform validation that was unavailable; do not imply it passed.

Release notes may be prepared in advance, but they are labeled as candidates until these gates pass.
