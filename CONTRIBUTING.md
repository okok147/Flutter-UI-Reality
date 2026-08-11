# Contributing

Thank you for helping maintain Flutter UI Reality. Small, reviewable changes with clear evidence are the easiest to merge.

## Before you start

- Search existing issues and pull requests.
- Use an issue to discuss large migrations, new examples, or repository-wide changes.
- Identify whether your change targets the maintained Gardener example or a legacy example.
- Never add an image, font, animation, design export, or generated icon without its source and reuse terms.

## Development workflow

1. Fork the repository and create a focused branch.
2. Install the stable Flutter version documented in the target example.
3. Make the smallest coherent change and update documentation where behavior or compatibility changes.
4. Add or update tests for maintained code.
5. Run the validation commands below.
6. Open a pull request using the repository template and include before/after screenshots for visual changes.

For Gardener:

```sh
cd gardener_01
flutter pub get
dart format --output=none --set-exit-if-changed lib test
flutter analyze
flutter test
flutter build web --release
```

Legacy examples currently fail dependency resolution on stable Dart 3. A migration pull request must update the SDK constraint, dependencies, deprecated APIs, tests, and platform scaffolding together. An isolated major-version dependency bump without a runnable result is not sufficient.

## Style and pull requests

- Follow `flutter_lints` and keep public behavior understandable.
- Prefer data-driven, reusable widgets over repeated hard-coded blocks.
- Keep generated build output and editor files out of commits.
- Explain the problem, approach, user-visible impact, and validation performed.
- Link related issues and disclose limitations or validation you could not run.
- Do not claim visual or runtime parity without checking it on the relevant viewport or device.

## Issues and security

Use the issue forms for reproducible bugs and focused feature proposals. Do not disclose suspected vulnerabilities publicly; follow [.github/SECURITY.md](.github/SECURITY.md).

By contributing, you agree that your contribution is provided under this repository's MIT License and that you have the right to submit it. Third-party assets remain subject to their own terms.
