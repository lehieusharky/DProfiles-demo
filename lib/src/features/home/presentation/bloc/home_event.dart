part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getFeeds() = HomeGetFeeds;

  const factory HomeEvent.refreshNewsFeed() = HomeRefreshNewsFeed;

  const factory HomeEvent.loadMoreNewsFeed() = HomeLoadMoreNewsFeed;

  const factory HomeEvent.getUserInfo() = HomeGetUserInfo;

  const factory HomeEvent.updateFeed(NewFeedModel feed) = UpdateFeedEvent;
}
