part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _Initial;

  const factory DashboardState.logoutSuccess() = DashboardLogOutSuccess;

  const factory DashboardState.deleteAccountSuccess() =
      DashboardDeleteAccountSuccess;

  const factory DashboardState.loading() = DashboardLoading;

  const factory DashboardState.error(
      {required String title, required String msg}) = DashboardError;
}
