import 'dart:async';

import 'package:demo_dprofiles/src/features/home/data/models/new_feed_model.dart';
import 'package:demo_dprofiles/src/features/home/domain/usecases/home_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUseCase homeUseCase;

  // Page number starts from 1
  int page = 0;

  final int limitPage = 5;

  final refreshController = RefreshController();

  HomeBloc(this.homeUseCase) : super(const HomeState.initial()) {
    on<HomeGetFeeds>(_getNewsFeed);
    on<HomeLoadMoreNewsFeed>(_loadMoreNewsFeed);
    on<HomeRefreshNewsFeed>(_refreshNewsFeed);
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

    refreshController.loadComplete();

    // final List<NewFeedModel> currentNewsFeed = state is HomeGetFeedsSuccess
    //     ? (state as HomeGetFeedsSuccess).newsFeed
    //     : [];
    //
    // final result = await homeUseCase.getNewsFeed(++page, limitPage);
    //
    // result.fold(
    //   (l) => refreshController.loadFailed(),
    //   (r) {
    //     refreshController.loadComplete();
    //     final data = r.data as List;
    //
    //     final newsFeed = data.map((e) => NewFeedModel.fromJson(e)).toList();
    //     refreshController.loadComplete();
    //
    //     emit(HomeGetFeedsSuccess(currentNewsFeed + newsFeed));
    //   },
    // );
  }

  FutureOr<void> _refreshNewsFeed(
      HomeRefreshNewsFeed event, Emitter<HomeState> emit) async {
    refreshController.requestRefresh();

    page = 0;
    refreshController.refreshCompleted();

    // final result = await homeUseCase.getNewsFeed(page, limitPage);
    // result.fold(
    //   (l) => refreshController.refreshFailed(),
    // (r) {
    //
    // final data = r.data as List;
    //
    // final newsFeed = data.map((e) => NewFeedModel.fromJson(e)).toList();
    //
    // emit(HomeGetFeedsSuccess(newsFeed));
    // },
    // );
  }
}
