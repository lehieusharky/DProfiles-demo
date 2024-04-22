part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.logout() = DashboardLogOut;

  const factory DashboardEvent.deleteAccount() = DashboardDeleteAccount;

  const factory DashboardEvent.updateWalletAddress(UserInfoModel userInfo) =
      DashboardUpdateWalletAddress;
}
