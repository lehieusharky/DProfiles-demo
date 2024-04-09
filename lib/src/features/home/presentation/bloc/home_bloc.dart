import 'dart:async';

import 'package:demo_dprofiles/src/features/home/data/models/new_feed_model.dart';
import 'package:demo_dprofiles/src/features/home/domain/usecases/home_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUseCase homeUseCase;

  HomeBloc(this.homeUseCase) : super(const HomeState.initial()) {
    on<HomeGetFeeds>(_getNewsFeed);
  }

  FutureOr<void> _getNewsFeed(
      HomeGetFeeds event, Emitter<HomeState> emit) async {
    emit(const HomeLoading());

    final result = await homeUseCase.getNewsFeed(event.page, event.limit);

    result.fold(
      (l) => emit(HomeError(message: l, title: 'Get news feed failed')),
      (r) {
        final data = r.data as List;

        final newsFeed = data.map((e) => NewFeedModel.fromJson(e)).toList();

        emit(HomeGetFeedsSuccess(newsFeed));
      },
    );
  }
}
