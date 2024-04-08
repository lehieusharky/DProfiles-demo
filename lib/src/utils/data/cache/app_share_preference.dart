import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/utils/constant/support_theme.dart';
import 'package:demo_dprofiles/src/utils/constant/supported_chat_gpt.dart';
import 'package:demo_dprofiles/src/utils/constant/supported_language.dart';

AppSharePreference get sharePreference => injector.get<AppSharePreference>();

abstract class AppSharePreference {
  bool isDarkMode();

  bool isFirstTimeOpenApp();

  Future<bool> setFirstTimeOpenApp();

  Future<bool> toggleDarkMode(bool status);

  Future<SupportedTheme> setTheme(SupportedTheme theme);

  SupportedTheme getTheme();

  Future<SupportedLanguage> setLanguage(SupportedLanguage language);

  SupportedLanguage getLanguage();

  Future<bool> setAccessToken(String token);

  Future<bool> removeAccessToken();

  Future<bool> setRefreshToken(String token);

  String? getAccessToken();

  String? getRefreshToken();

  Future<bool> setChatGPTVersion(SupportedChatGPT chatGPT);

  SupportedChatGPT getChatGPTVersion();
}
