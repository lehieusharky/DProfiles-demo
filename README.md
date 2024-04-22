# demo_dprofiles

### Project was made by lehieusharky [lehieultt@gmail.com]

## URL

[Design Url](https://www.figma.com/file/4wZhgX6PuILbYqon2RZhpY/02.-D-App?type=design&node-id=800-108&mode=design&t=3tKODGUmuC1ku4NZ-0)

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