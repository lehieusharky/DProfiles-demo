part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getFeeds() = HomeGetFeeds;

  const factory HomeEvent.refreshNewsFeed() = HomeRefreshNewsFeed;

  const factory HomeEvent.loadMoreNewsFeed() = HomeLoadMoreNewsFeed;
}
