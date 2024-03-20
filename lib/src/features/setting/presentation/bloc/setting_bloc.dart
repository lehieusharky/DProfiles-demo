import 'dart:async';

import 'package:demo_dprofiles/src/features/setting/domain/usecases/setting_usecase.dart';
import 'package:demo_dprofiles/src/utils/constant/support_theme.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:demo_dprofiles/src/utils/services/device_info_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils/constant/supported_language.dart';

part 'setting_event.dart';
part 'setting_state.dart';
part 'setting_bloc.freezed.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  final BuildContext context;

  SettingBloc(this.context) : super(const SettingState.initial()) {
    on<GetInitSettingInfo>(_onGetInitSettingInfo);
    on<ToggleTheme>(_onToggleTheme);
    on<ToggleLanguage>(_onToggleLanguage);
    on<ToggleDarkMode>(_onToggleDarkMode);

    add(const GetInitSettingInfo());
  }

  Future<void> _onToggleTheme(
      ToggleTheme event, Emitter<SettingState> emit) async {
    try {
      final updatedTheme = await sharePreference.setTheme(event.theme);

      if (updatedTheme == SupportedTheme.light) {
        await sharePreference.toggleDarkMode(false);
      } else if (updatedTheme == SupportedTheme.dark ||
          DeviceInfoService().darkModeIsEnable()) {
        await sharePreference.toggleDarkMode(true);
      }

      emit(ToggleThemeSuccess(updatedTheme));
    } catch (e) {
      emit(const SettingError('Failed to toggle theme'));
    }
  }

  Future<void> _onToggleLanguage(
      ToggleLanguage event, Emitter<SettingState> emit) async {
    try {
      final updatedLanguage = await sharePreference.setLanguage(event.language);

      emit(ToggleLanguageSuccess(updatedLanguage));
    } catch (e) {
      emit(const SettingError('Failed to toggle language'));
    }
  }

  FutureOr<void> _onToggleDarkMode(
      ToggleDarkMode event, Emitter<SettingState> emit) async {
    try {
      final status = await sharePreference.toggleDarkMode(event.status);

      if (status) {
        await sharePreference.setTheme(SupportedTheme.dark);
      } else {
        await sharePreference.setTheme(SupportedTheme.light);
      }

      emit(ToggleDarkModeSuccess(status));
    } catch (e) {
      emit(const SettingError('Failed to toggle language'));
    }
  }

  FutureOr<void> _onGetInitSettingInfo(
      GetInitSettingInfo event, Emitter<SettingState> emit) async {
    final status = await settingUseCase.setInitialSettingInfo(context);

    status.fold(
      (l) => emit(SettingError(l)),
      (r) => emit(const GetInitSettingInfoSucess()),
    );
  }
}
