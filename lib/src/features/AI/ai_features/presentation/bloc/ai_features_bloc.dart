import 'dart:async';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/auto_generate_history_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_cover_letter_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_interview_question_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_profile_introduction_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_skill_knowledge_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/domain/usecases/auto_generate_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_features_event.dart';
part 'ai_features_state.dart';
part 'ai_features_bloc.freezed.dart';

class AiFeaturesBloc extends Bloc<AiFeaturesEvent, AiFeaturesState> {
  final AutoGenerateUseCase autoGenerateUseCase;

  AiFeaturesBloc(this.autoGenerateUseCase)
      : super(const AiFeaturesState.initial()) {
    on<GetAutoGenerateHistory>(_getAutoGenerateHistory);
    on<GenerateProfileIntroduction>(_generateProfileIntroduction);
    on<GenerateCoverLetter>(_generateCoverLetter);
    on<GenerateSkillKnowledge>(_generateSkillKnowledge);
    on<GenerateInterviewQuestion>(_generateInterviewQuestion);
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

  FutureOr<void> _generateProfileIntroduction(
      GenerateProfileIntroduction event, Emitter<AiFeaturesState> emit) async {
    emit(const AiFeaturesLoading());

    final result = await autoGenerateUseCase
        .generateProfileIntroduction(event.profileIntroductionModel);

    result.fold(
      (l) => emit(AiFeaturesError(
          message: l, title: 'Generate profile introduction failed')),
      (r) {
        emit(GenerateProfileIntroductionSuccess(r.data));
      },
    );
  }

  FutureOr<void> _generateCoverLetter(
      GenerateCoverLetter event, Emitter<AiFeaturesState> emit) async {
    emit(const AiFeaturesLoading());

    final result =
        await autoGenerateUseCase.generateCoverLetter(event.coverLetterModel);

    result.fold(
      (l) => emit(
          AiFeaturesError(message: l, title: 'Generate cover letter failed')),
      (r) {
        emit(GenerateCoverLetterSuccess(r.data));
      },
    );
  }

  FutureOr<void> _generateSkillKnowledge(
      GenerateSkillKnowledge event, Emitter<AiFeaturesState> emit) async {
    emit(const AiFeaturesLoading());

    final result = await autoGenerateUseCase
        .generateSkillKnowledge(event.skillKnowledgeModel);

    result.fold(
      (l) => emit(AiFeaturesError(
          message: l, title: 'Generate skill knowledge failed')),
      (r) {
        emit(GenerateSkillKnowledgeSuccess(r.data));
      },
    );
  }

  FutureOr<void> _generateInterviewQuestion(
      GenerateInterviewQuestion event, Emitter<AiFeaturesState> emit) async {
    emit(const AiFeaturesLoading());

    final result = await autoGenerateUseCase
        .generateInterviewQuestion(event.interviewQuestionModel);

    result.fold(
      (l) => emit(AiFeaturesError(
          message: l, title: 'Generate interview question failed')),
      (r) {
        emit(GenerateInterviewQuestionSuccess(r.data));
      },
    );
  }
}
