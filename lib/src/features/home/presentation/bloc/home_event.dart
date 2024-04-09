part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getFeeds(int page, int limit) = HomeGetFeeds;
}
