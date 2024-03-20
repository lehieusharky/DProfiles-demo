part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.increase() = HomeIncrease;
  const factory HomeEvent.decrease() = HomeDecrease;
}
