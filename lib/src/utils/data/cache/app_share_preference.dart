import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/utils/constant/support_theme.dart';
import 'package:demo_dprofiles/src/utils/constant/supported_language.dart';

AppSharePreference get sharePreference => injector.get<AppSharePreference>();

abstract class AppSharePreference {
  bool isDarkMode();

  Future<bool> isFirstTimeOpenApp();

  Future<bool> toggleDarkMode(bool status);

  Future<SupportedTheme> setTheme(SupportedTheme theme);

  SupportedTheme getTheme();

  Future<SupportedLanguage> setLanguage(SupportedLanguage language);

  SupportedLanguage getLanguage();
}
