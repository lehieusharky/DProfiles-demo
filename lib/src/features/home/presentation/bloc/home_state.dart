part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.loading() = HomeLoading;

  const factory HomeState.error(
      {required String message, required String title}) = HomeError;

  const factory HomeState.getFeedsSuccess(List<NewFeedModel> newsFeed) =
      HomeGetFeedsSuccess;

  const factory HomeState.getUserInfoSuccess() = HomeGetUserInfoSuccess;
}
