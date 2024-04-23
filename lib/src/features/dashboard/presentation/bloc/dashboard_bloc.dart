import 'dart:async';

import 'package:demo_dprofiles/src/features/AI/create_digital_profile/domain/usecases/create_digital_profile_usecase.dart';
import 'package:demo_dprofiles/src/features/edit_profile/domain/usecases/edit_profile_usecase.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/setting/domain/usecases/setting_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final SettingUseCase settingUseCase;
  final EditProfileUseCase editProfileUseCase;
  final CreateDigitalProfileUseCase createDigitalProfileUseCase;

  DashboardBloc(
    this.settingUseCase,
    this.editProfileUseCase,
    this.createDigitalProfileUseCase,
  ) : super(const DashboardState.initial()) {
    on<DashboardDeleteAccount>(_deleteUser);
    on<DashboardUpdateWalletAddress>(_updateWalletAddress);
    on<DashboardCheckDigitalProfileAvailable>(_checkDigitalProfileAvailable);
  }

  FutureOr<void> _deleteUser(
      DashboardDeleteAccount event, Emitter<DashboardState> emit) async {
    final status = await settingUseCase.deleteUser();

    status.fold(
      (l) => emit(DashboardError(title: 'Delete account failed', msg: l)),
      (r) => emit(const DashboardDeleteAccountSuccess()),
    );
  }

  FutureOr<void> _updateWalletAddress(
      DashboardUpdateWalletAddress event, Emitter<DashboardState> emit) async {
    final status = await editProfileUseCase.updateUserInfo(event.userInfo);

    status.fold(
      (l) => emit(
          DashboardError(title: 'Update wallet address failed', msg: l[0])),
      (r) => emit(const DashboardUpdateWalletAddressSuccess()),
    );
  }

  FutureOr<void> _checkDigitalProfileAvailable(
      DashboardCheckDigitalProfileAvailable event,
      Emitter<DashboardState> emit) async {
    emit(const DashboardLoading());
    final status =
        await createDigitalProfileUseCase.checkDigitalProfileIsAvailable();

    status.fold(
      (l) => emit(const DashboardCheckDigitalProfileAvailableSuccess(false)),
      (r) => emit(DashboardCheckDigitalProfileAvailableSuccess(
          r.data != null ? true : false)),
    );
  }
}
