# Changelog

All notable changes from the 2026 maintenance revival onward will be documented here. Earlier development history remains available in Git commits and example README journals; dates have not been reconstructed without evidence.

## [Unreleased] — 2026 Maintenance Revival

### Added

- MIT license for repository-authored source and documentation, with explicit third-party asset exclusions.
- Contribution, maintenance, security, conduct, issue, and pull-request guidance.
- Stable-Flutter CI for the maintained Gardener example.
- Automated widget tests for landing, navigation, results, and distance filtering.
- Dependabot configuration for the maintained Flutter package and GitHub Actions.
- Evidence-based maintenance audit and release-candidate notes.

### Changed

- Modernized Gardener for Flutter 3.44 and Dart 3.12.
- Replaced obsolete dependencies and repeated result cards with platform widgets and data-driven components.
- Regenerated Android, iOS, and web scaffolding with the current stable Flutter toolchain.
- Reworked the Gardener layout for narrow and wide viewports and added accessibility labels.
- Reframed the repository README around verified maintenance status and a staged migration roadmap.

### Removed

- Tracked editor metadata, generated Flutter files, merge backups, and obsolete sponsorship metadata.
- Stale cryptocurrency donation addresses from the Market App README.

### Known limitations

- Friendly Forest, Market App, Application Activity, and the testing sandbox remain legacy Dart 2 examples.
- Historical asset provenance is incomplete; see `THIRD_PARTY_NOTICES.md`.
- Android and iOS builds require platform toolchains not available in the maintenance environment; the web release build is the verified build target for this revival.
