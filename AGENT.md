# Agent guide

## Project

- This repository is a Flutter counter app. The app entry point and current UI are in `lib/main.dart`.
- The widget smoke test is in `test/widget_test.dart`.
- Flutter is pinned to 3.47.8 in `mise.toml`; Dart requires `^3.9.2` in `pubspec.yaml`.
- Android and iOS host projects live in `android/` and `ios/`.

## Working conventions

- Keep changes small and consistent with the existing Dart and Flutter code.
- Put app behavior in `lib/` and add or update tests in `test/` when behavior changes.
- Use `dart format` for changed Dart files and follow `analysis_options.yaml`.
- Change platform host files only when the feature requires platform integration.
- Do not edit generated output such as `build/` or `.dart_tool/`.

## Verification

Run these from the repository root after code changes:

```sh
flutter analyze
flutter test
```

For a platform-specific change, also build or run the affected platform when its toolchain is available. Report any check that could not be run.
