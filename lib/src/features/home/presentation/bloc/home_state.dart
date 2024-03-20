part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.increaseSuccessful() = HomeIncreaseSuccessful;
  const factory HomeState.decreaseSuccessful() = HomeDecreaseSuccessful;
  const factory HomeState.error() = HomeError;
}
