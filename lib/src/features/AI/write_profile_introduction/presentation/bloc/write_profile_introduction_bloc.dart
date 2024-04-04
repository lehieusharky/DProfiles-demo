import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:demo_dprofiles/src/features/AI/write_profile_introduction/data/models/profile_introduction_model.dart';
import 'package:demo_dprofiles/src/features/AI/write_profile_introduction/domain/usecases/write_profile_intro_usecase.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'write_profile_introduction_event.dart';
part 'write_profile_introduction_state.dart';
part 'write_profile_introduction_bloc.freezed.dart';

class WriteProfileIntroductionBloc
    extends Bloc<WriteProfileIntroductionEvent, WriteProfileIntroductionState> {
  WriteProfileIntroductionBloc()
      : super(const WriteProfileIntroductionState.initial()) {
    on<GenerateProfileIntroduction>(_generateProfileIntroduction);
    on<GetAutoGenerateHistory>(_getAutoGenerateHistory);
  }

  FutureOr<void> _generateProfileIntroduction(GenerateProfileIntroduction event,
      Emitter<WriteProfileIntroductionState> emit) async {
    emit(const WriteProfileIntroLoading());
    final result = await writeProfileIntroductionUseCase
        .generateProfileIntroduction(event.model);

    result.fold(
      (l) => emit(
          WriteProfileIntroError(message: l, title: 'Generate intro failed')),
      (r) => emit(GenerateProfileIntroductionSuccess(r)),
    );
  }

  FutureOr<void> _getAutoGenerateHistory(GetAutoGenerateHistory event,
      Emitter<WriteProfileIntroductionState> emit) async {
    emit(const WriteProfileIntroLoading());
    final result =
        await writeProfileIntroductionUseCase.getAutoGenerateHistory();

    result.fold(
      (l) => emit(
          WriteProfileIntroError(message: l, title: 'Generate intro failed')),
      (r) => emit(GetAutoGenerateHistorySuccess(r)),
    );
  }
}
