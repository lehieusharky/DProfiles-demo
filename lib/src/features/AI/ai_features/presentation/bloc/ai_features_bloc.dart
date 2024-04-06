import 'dart:async';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/auto_generate_history_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/domain/usecases/auto_generate_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_features_event.dart';
part 'ai_features_state.dart';
part 'ai_features_bloc.freezed.dart';

class AiFeaturesBloc extends Bloc<AiFeaturesEvent, AiFeaturesState> {
  BuildContext context;

  AiFeaturesBloc(this.context) : super(const AiFeaturesState.initial()) {
    on<GetAutoGenerateHistory>(_getAutoGenerateHistory);

    add(const GetAutoGenerateHistory());
  }

  FutureOr<void> _getAutoGenerateHistory(
      GetAutoGenerateHistory event, Emitter<AiFeaturesState> emit) async {
    emit(const AiFeaturesLoading());

    final result = await autoGenerateUseCase.getAutoGenerateHistory();

    result.fold(
      (l) => emit(AiFeaturesError(
          message: l, title: 'Get auto generate history failed')),
      (r) {
        final dataJson = r.data as List;

        final histories =
            dataJson.map((e) => AutoGenerateHistoryModel.fromJson(e)).toList();

        emit(GetAutoGenerateHistorySuccess(histories));
      },
    );
  }
}
