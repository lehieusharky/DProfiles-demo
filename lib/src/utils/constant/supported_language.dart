import 'dart:io';

import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

enum SupportedLanguage { en, vi, system }

extension SupportedLanguageExt on SupportedLanguage {
  IconData toIcon() {
    return switch (this) {
      SupportedLanguage.en => IconsaxOutline.sun_1,
      SupportedLanguage.vi => IconsaxOutline.moon,
      SupportedLanguage.system => IconsaxOutline.category,
    };
  }

  String toTitle() {
    return switch (this) {
      SupportedLanguage.en => 'English',
      SupportedLanguage.vi => 'Vietnamese',
      SupportedLanguage.system => 'System',
    };
  }

  String getLanguageCode() {
    return switch (this) {
      SupportedLanguage.vi => 'vi',
      SupportedLanguage.en => 'en',
      _ => Platform.localeName.split('_')[0]
    };
  }
}
