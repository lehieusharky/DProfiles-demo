part of 'setting_bloc.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState.initial() = _Initial;
  const factory SettingState.getInitSettingInfoSuccess() =
      GetInitSettingInfoSucess;
  const factory SettingState.toggleThemeSuccess(SupportedTheme updatedTheme) =
      ToggleThemeSuccess;
  const factory SettingState.toggleLanguageSuccess(
      SupportedLanguage updatedLanguage) = ToggleLanguageSuccess;
  const factory SettingState.toggleDarkModeSuccess(bool status) =
      ToggleDarkModeSuccess;
  const factory SettingState.error(String msg) = SettingError;
}
