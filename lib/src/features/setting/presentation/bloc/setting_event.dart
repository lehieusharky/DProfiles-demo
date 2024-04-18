part of 'setting_bloc.dart';

@freezed
class SettingEvent with _$SettingEvent {
  const factory SettingEvent.getInitSettingInfo() = GetInitSettingInfo;
  const factory SettingEvent.toggleLanguage(SupportedLanguage language) =
      ToggleLanguage;
  const factory SettingEvent.toggleTheme(SupportedTheme theme) = ToggleTheme;
  const factory SettingEvent.toggleDarkMode(bool status) = ToggleDarkMode;
  const factory SettingEvent.deleteUser() = SettingDeleteUser;
}
