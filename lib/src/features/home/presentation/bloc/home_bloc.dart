import 'dart:async';

import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/feed/domain/repositories/feed_repository.dart';
import 'package:demo_dprofiles/src/features/home/data/models/new_feed_model.dart';
import 'package:demo_dprofiles/src/features/home/domain/usecases/home_usecase.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/domain/usecases/profile_usecase.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUseCase homeUseCase;
  final ProfileUseCase profileUseCase;

  // Page number starts from 1
  int page = 1;

  final int limitPage = 10;

  final refreshController = RefreshController();

  final feedRepository = injector.get<FeedRepository>();

  HomeBloc(this.homeUseCase, this.profileUseCase)
      : super(const HomeState.initial()) {
    on<HomeGetFeeds>(_getNewsFeed);
    on<HomeLoadMoreNewsFeed>(_loadMoreNewsFeed);
    on<HomeRefreshNewsFeed>(_refreshNewsFeed);
    on<HomeGetUserInfo>(_getUserInfo);
    on<UpdateFeedEvent>(_updateFeed);
  }

  FutureOr<void> _getNewsFeed(
      HomeGetFeeds event, Emitter<HomeState> emit) async {
    emit(const HomeLoading());

    final result = await homeUseCase.getNewsFeed(page, limitPage);

    await result.fold(
      (l) async => emit(HomeError(message: l, title: 'Get news feed failed')),
      (r) async {
        final data = r.data as List;

        final newsFeed = data.map((e) => NewFeedModel.fromJson(e)).toList();
        // emit(HomeGetFeedsSuccess(newsFeed));
        final feedUpdated = await _updatesLiked(newsFeed);
        emit(HomeState.getFeedsSuccess(feedUpdated));
      },
    );
  }

  FutureOr<void> _loadMoreNewsFeed(
      HomeLoadMoreNewsFeed event, Emitter<HomeState> emit) async {
    refreshController.requestLoading();
    final List<NewFeedModel> currentNewsFeed = state is HomeGetFeedsSuccess
        ? (state as HomeGetFeedsSuccess).newsFeed
        : [];

    final result = await homeUseCase.getNewsFeed(++page, limitPage);

    result.fold(
      (l) => refreshController.loadFailed(),
      (r) {
        refreshController.loadComplete();
        final data = r.data as List;
        final newsFeed = data.map((e) => NewFeedModel.fromJson(e)).toList();
        refreshController.loadComplete();

        emit(HomeGetFeedsSuccess(currentNewsFeed + newsFeed));
      },
    );
  }

  FutureOr<void> _refreshNewsFeed(
      HomeRefreshNewsFeed event, Emitter<HomeState> emit) async {
    refreshController.requestRefresh();

    page = 0;

    final result = await homeUseCase.getNewsFeed(page, limitPage);
    result.fold(
      (l) => refreshController.refreshFailed(),
      (r) async {
        final data = r.data as List;

        final newsFeed = data.map((e) => NewFeedModel.fromJson(e)).toList();

        // emit(HomeGetFeedsSuccess(newsFeed));
        emit(HomeGetFeedsSuccess(await _updatesLiked(newsFeed)));
      },
    );
  }

  FutureOr<void> _getUserInfo(
      HomeGetUserInfo event, Emitter<HomeState> emit) async {
    final result = await profileUseCase.getUserInfo();

    result.fold(
      (l) => emit(HomeError(
          message: l.map((e) => e).toString(), title: 'Get info failed')),
      (r) async {
        final userInfo = UserInfoModel.fromJson(r.data);
        await sharePreference.setUserID(userInfo.id!);

        emit(const HomeGetUserInfoSuccess());
      },
    );
  }

  Future<List<NewFeedModel>> _updatesLiked(List<NewFeedModel> newsFeed) async {
    final newsFeedWithLiked = newsFeed.map((e) async {
      return await _updateLiked(e);
    });
    final res = await Future.wait(newsFeedWithLiked);
    return res;
  }

  Future<NewFeedModel> _updateLiked(NewFeedModel feed) async {
    final res = await feedRepository.getLikedPost(feed.id ?? 0);
    // bool liked = feed.liked;
    res.fold((l) {}, (r) {
      // liked = r.data as bool;
    });
    return feed;
  }

  FutureOr<void> _updateFeed(
      UpdateFeedEvent event, Emitter<HomeState> emit) async {
    if (state is HomeGetFeedsSuccess) {
      final newsFeed = (state as HomeGetFeedsSuccess).newsFeed;
      final updatedNewsFeed = newsFeed.map((e) {
        if (e.id == event.feed.id) {
          return event.feed;
        }
        return e;
      }).toList();
      emit(HomeGetFeedsSuccess(updatedNewsFeed));
    }
  }
}
