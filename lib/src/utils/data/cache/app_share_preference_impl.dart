import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/utils/constant/support_theme.dart';
import 'package:demo_dprofiles/src/utils/constant/supported_language.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_share_preference.dart';

@Injectable(as: AppSharePreference)
class AppSharePreferenceImpl implements AppSharePreference {
  final SharedPreferences _prefs = injector.get<SharedPreferences>();

  @override
  bool isDarkMode() => (_prefs.getBool('is_dark_mode') ?? false);

  @override
  Future<bool> toggleDarkMode(bool status) async => await _prefs
      .setBool('is_dark_mode', status)
      .then((value) => value ? status : false);

  @override
  SupportedTheme getTheme() {
    final currentThemeString = _prefs.getString('current_theme');

    return switch (currentThemeString) {
      'light' => SupportedTheme.light,
      'dark' => SupportedTheme.dark,
      _ => SupportedTheme.system,
    };
  }

  @override
  SupportedLanguage getLanguage() {
    final currentLanguageString = _prefs.getString('current_language');

    return switch (currentLanguageString) {
      'en' => SupportedLanguage.en,
      'vi' => SupportedLanguage.vi,
      _ => SupportedLanguage.system,
    };
  }

  @override
  Future<SupportedTheme> setTheme(SupportedTheme theme) async => await _prefs
      .setString('current_theme', theme.name)
      .then((value) => value ? theme : SupportedTheme.system);

  @override
  Future<SupportedLanguage> setLanguage(SupportedLanguage language) async =>
      await _prefs
          .setString('current_language', language.name)
          .then((value) => value ? language : SupportedLanguage.system);

  @override
  Future<bool> isFirstTimeOpenApp() async {
    bool? isFirstTime = _prefs.getBool('first_time_open_app');

    final status = isFirstTime == null ? true : false;

    final result = await _prefs.setBool('first_time_open_app', status);

    isFirstTime = _prefs.getBool('first_time_open_app');

    return (result == true && isFirstTime != null) ? isFirstTime : false;
  }
}
