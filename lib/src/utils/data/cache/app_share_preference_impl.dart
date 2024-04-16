import 'dart:math';

import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/utils/constant/string_constant.dart';
import 'package:demo_dprofiles/src/utils/constant/support_theme.dart';
import 'package:demo_dprofiles/src/utils/constant/supported_chat_gpt.dart';
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
const String CHAT_GPT_VERSION = 'chat_gpt_version';
const String RECENT_EMAIL_SIGN_IN = 'recent_email_sign_in';
const String SESSION_ID = 'session_id';
const String USER_ID = 'user_id';

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
  bool isFirstTimeOpenApp() {
    final result = _prefs.getBool(FIRST_TIME_OPEN_APP);
    if (result == null) {
      return true;
    } else {
      return false;
    }
  }

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

  @override
  SupportedChatGPT getChatGPTVersion() {
    final chatGPTVersion =
        _prefs.getString(CHAT_GPT_VERSION) ?? SupportedChatGPT.gpt_3_5;

    return switch (chatGPTVersion) {
      StrConts.gpt_3_5 => SupportedChatGPT.gpt_3_5,
      StrConts.gpt_4 => SupportedChatGPT.gpt_4,
      _ => SupportedChatGPT.gpt_3_5,
    };
  }

  @override
  Future<bool> setChatGPTVersion(SupportedChatGPT chatGPT) async => await _prefs
      .setString(CHAT_GPT_VERSION, chatGPT.name)
      .then((value) => value);

  @override
  String? getRecentEmailSignIn() => _prefs.getString(RECENT_EMAIL_SIGN_IN);

  @override
  Future<void> saveRecentEmailSignIn(String email) async =>
      await _prefs.setString(RECENT_EMAIL_SIGN_IN, email);

  @override
  Future<void> createSessionID() async {
    var randomNumber = '';

    for (var i = 0; i < 3; i++) {
      var digit = Random().nextInt(10);
      randomNumber += digit.toString();
    }

    final id = int.parse(randomNumber);
    await _prefs.setInt(SESSION_ID, id);
  }

  @override
  int? getSessionID() => _prefs.getInt(SESSION_ID);

  @override
  int? getUserID() => _prefs.getInt(USER_ID);

  @override
  Future<void> setUserID(int id) async => await _prefs.setInt(USER_ID, id);
}
