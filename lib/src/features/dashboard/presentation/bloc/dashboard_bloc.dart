import 'dart:async';

import 'package:demo_dprofiles/src/features/setting/domain/usecases/setting_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final SettingUseCase settingUseCase;

  DashboardBloc(this.settingUseCase) : super(const DashboardState.initial()) {
    on<DashboardDeleteAccount>(_deleteUser);
  }

  FutureOr<void> _deleteUser(
      DashboardDeleteAccount event, Emitter<DashboardState> emit) async {
    final status = await settingUseCase.deleteUser();

    status.fold(
      (l) => emit(DashboardError(title: 'Delete account failed', msg: l)),
      (r) => emit(const DashboardDeleteAccountSuccess()),
    );
  }
}
