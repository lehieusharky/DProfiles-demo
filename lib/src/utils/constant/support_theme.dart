import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

enum SupportedTheme { light, dark, system }

extension SupportedThemeExt on SupportedTheme {
  IconData toIcon() {
    return switch (this) {
      SupportedTheme.light => IconsaxOutline.sun_1,
      SupportedTheme.dark => IconsaxOutline.moon,
      SupportedTheme.system => IconsaxOutline.category,
    };
  }

  String toTitle(BuildContext context) {
    return switch (this) {
      SupportedTheme.light => 'Light',
      SupportedTheme.dark => 'Dark',
      SupportedTheme.system => 'System',
    };
  }

  ThemeMode getThemeMode() {
    return switch (this) {
      SupportedTheme.light => ThemeMode.light,
      SupportedTheme.dark => ThemeMode.dark,
      _ => ThemeMode.system,
    };
  }
}
