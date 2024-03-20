import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@singleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.initial()) {
    on<HomeIncrease>(_onIncrease);
    on<HomeDecrease>(_onDecrease);
  }

  Future<void> _onIncrease(HomeIncrease event, Emitter<HomeState> emit) async {
    try {
      emit(const HomeIncreaseSuccessful());
    } catch (e) {
      emit(const HomeError());
    }
  }

  Future<void> _onDecrease(HomeDecrease event, Emitter<HomeState> emit) async {
    try {
      emit(const HomeDecreaseSuccessful());
    } catch (e) {
      emit(const HomeError());
    }
  }
}
