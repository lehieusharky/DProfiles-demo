# demo_dprofiles

### Project was made by lehieusharky [lehieultt@gmail.com]

## URL

[Design Url](https://www.figma.com/file/CtkirLid7QBRq99gcWPMgb/02.-D-App?type=design&node-id=0-1&mode=design&t=hTnXy3OXObTrrwz5-0)

[API Document](https://api.dev.dprofiles.xyz/api#)

## Generate config files before run project [Step by step]

### Step 1

```bash
flutter clean
```

### Step 2

```bash
flutter pub get
```

### Step 3

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### Step 4

```bash
flutter gen-l10n
```

## Watch the files' system for edits

```bash
flutter packages pub run build_runner watch
```

## Generate assets

```bash
fluttergen -c pubspec.yaml
```
