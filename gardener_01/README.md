# Gardener

Gardener is the first Flutter UI Reality example modernized for current Flutter tooling. It preserves the original purple, orange, and sky-blue visual direction while replacing fixed-width, duplicated UI with responsive, data-driven widgets.

The original interface was inspired by a historical “Gardeners” concept on Uplabs. That source URL no longer resolves, so it is recorded as provenance rather than presented as a live reference. The implementation in this repository is an independent Flutter learning exercise.

## Compatibility

- Flutter 3.44 or newer
- Dart 3.12 or newer
- Android, iOS, and web project scaffolding
- Sound null safety

## Run locally

```sh
flutter pub get
flutter run
```

Choose a connected device or browser when Flutter prompts for one.

## Validate changes

```sh
dart format --output=none --set-exit-if-changed .
flutter analyze
flutter test
flutter build web --release
```

## What was modernized

- migrated the app to sound null safety and current Dart syntax
- removed four unused or obsolete package dependencies
- replaced fixed 1,000-pixel layouts with responsive constraints
- converted repeated search-result markup into a reusable data-driven card
- added working distance and availability filters
- corrected navigation and accessibility labels
- replaced the generated counter test with real UI and navigation tests
- regenerated Android, iOS, and web scaffolding with current Flutter tooling

The historical progress images remain in `process/` for project context. Asset provenance and reuse limitations are documented in the repository-level `THIRD_PARTY_NOTICES.md`.
