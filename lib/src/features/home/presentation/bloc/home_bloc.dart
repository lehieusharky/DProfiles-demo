import 'dart:async';

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
  int page = 0;

  final int limitPage = 5;

  final refreshController = RefreshController();

  HomeBloc(this.homeUseCase, this.profileUseCase)
      : super(const HomeState.initial()) {
    on<HomeGetFeeds>(_getNewsFeed);
    on<HomeLoadMoreNewsFeed>(_loadMoreNewsFeed);
    on<HomeRefreshNewsFeed>(_refreshNewsFeed);
    on<HomeGetUserInfo>(_getUserInfo);

  }

  FutureOr<void> _getNewsFeed(
      HomeGetFeeds event, Emitter<HomeState> emit) async {
    emit(const HomeLoading());

    final result = await homeUseCase.getNewsFeed(page, limitPage);

    result.fold(
      (l) => emit(HomeError(message: l, title: 'Get news feed failed')),
      (r) {
        final data = r.data as List;

        final newsFeed = data.map((e) => NewFeedModel.fromJson(e)).toList();

        emit(HomeGetFeedsSuccess(newsFeed));
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
      (r) {
        final data = r.data as List;

        final newsFeed = data.map((e) => NewFeedModel.fromJson(e)).toList();

        emit(HomeGetFeedsSuccess(newsFeed));
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

}
