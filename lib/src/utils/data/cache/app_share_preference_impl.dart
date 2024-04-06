import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/utils/constant/string_constant.dart';
import 'package:demo_dprofiles/src/utils/constant/support_theme.dart';
import 'package:demo_dprofiles/src/utils/constant/supported_language.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_share_preference.dart';

const String FIRST_TIME_OPEN_APP = 'first_time_open_app';
const String ACCESS_TOKEN = 'access_token';
const String REFRESH_TOKEN = 'refresh_token';
const String IS_DARK_MODE = 'is_dark_mode';
const String CURRENT_THEME = 'current_theme';
const String CURRENT_LANGUAGE = 'current_language';

@Injectable(as: AppSharePreference)
class AppSharePreferenceImpl implements AppSharePreference {
  final SharedPreferences _prefs = injector.get<SharedPreferences>();

  @override
  bool isDarkMode() => (_prefs.getBool(IS_DARK_MODE) ?? false);

  @override
  Future<bool> toggleDarkMode(bool status) async => await _prefs
      .setBool(IS_DARK_MODE, status)
      .then((value) => value ? status : false);

  @override
  SupportedTheme getTheme() {
    final currentThemeString = _prefs.getString(CURRENT_THEME);

    return switch (currentThemeString) {
      StrConts.light => SupportedTheme.light,
      StrConts.dark => SupportedTheme.dark,
      _ => SupportedTheme.system,
    };
  }

  @override
  SupportedLanguage getLanguage() {
    final currentLanguageString = _prefs.getString(CURRENT_LANGUAGE);

    return switch (currentLanguageString) {
      StrConts.en => SupportedLanguage.en,
      StrConts.vi => SupportedLanguage.vi,
      _ => SupportedLanguage.system,
    };
  }

  @override
  Future<SupportedTheme> setTheme(SupportedTheme theme) async => await _prefs
      .setString(CURRENT_THEME, theme.name)
      .then((value) => value ? theme : SupportedTheme.system);

  @override
  Future<SupportedLanguage> setLanguage(SupportedLanguage language) async =>
      await _prefs
          .setString(CURRENT_LANGUAGE, language.name)
          .then((value) => value ? language : SupportedLanguage.system);

  @override
  bool isFirstTimeOpenApp() =>
      _prefs.getBool(FIRST_TIME_OPEN_APP) == null ? true : false;

  @override
  Future<bool> setFirstTimeOpenApp() async =>
      await _prefs.setBool(FIRST_TIME_OPEN_APP, true).then((value) => value);

  @override
  String? getAccessToken() => (_prefs.getString(ACCESS_TOKEN));

  @override
  String? getRefreshToken() => (_prefs.getString(REFRESH_TOKEN));

  @override
  Future<bool> setAccessToken(String token) async =>
      await _prefs.setString(ACCESS_TOKEN, token).then((value) => value);

  @override
  Future<bool> setRefreshToken(String token) async =>
      await _prefs.setString(REFRESH_TOKEN, token).then((value) => value);

  @override
  Future<bool> removeAccessToken() async =>
      _prefs.remove(ACCESS_TOKEN).then((value) => value);
}
