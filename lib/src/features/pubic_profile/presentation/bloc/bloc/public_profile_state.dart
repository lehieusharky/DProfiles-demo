part of 'public_profile_bloc.dart';

@freezed
class PublicProfileState with _$PublicProfileState {
  const factory PublicProfileState.initial() = _Initial;

  const factory PublicProfileState.loading() = PublicProfileLoading;

  const factory PublicProfileState.error(
      {required String title, required String msg}) = PublicProfileError;

  const factory PublicProfileState.getBasicInfoSuccess(
      PublicUserInfoModel userInfo) = PublicProfileGetBasicInfoSuccess;
}
