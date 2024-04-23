import 'dart:async';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/auto_generate_history_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_cover_letter_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_interview_question_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_profile_introduction_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_skill_knowledge_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/domain/usecases/auto_generate_usecase.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/domain/usecases/profile_usecase.dart';
import 'package:demo_dprofiles/src/utils/constant/supported_chat_gpt.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_features_event.dart';
part 'ai_features_state.dart';
part 'ai_features_bloc.freezed.dart';

class AiFeaturesBloc extends Bloc<AiFeaturesEvent, AiFeaturesState> {
  final AutoGenerateUseCase autoGenerateUseCase;
  final ProfileUseCase profileUseCase;

  SupportedChatGPT currentChatGPTVersion = sharePreference.getChatGPTVersion();

  AiFeaturesBloc(this.autoGenerateUseCase, this.profileUseCase)
      : super(const AiFeaturesState.initial()) {
    on<GetAutoGenerateHistory>(_getAutoGenerateHistory);
    on<GetAutoGenerateHistoryDetail>(_getAutoGenerateHistoryDetail);
    on<GenerateProfileIntroduction>(_generateProfileIntroduction);
    on<GenerateCoverLetter>(_generateCoverLetter);
    on<GenerateSkillKnowledge>(_generateSkillKnowledge);
    on<GenerateInterviewQuestion>(_generateInterviewQuestion);
    on<GetCurrentPointOfUser>(_getCurrentPointOfUser);
    on<AICharacterChangeGPTVersion>(_changeGPTVersion);
  }

  FutureOr<void> _getAutoGenerateHistory(
      GetAutoGenerateHistory event, Emitter<AiFeaturesState> emit) async {
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

  FutureOr<void> _getAutoGenerateHistoryDetail(
      GetAutoGenerateHistoryDetail event, Emitter<AiFeaturesState> emit) async {
    emit(const AiFeaturesLoading());

    final result =
        await autoGenerateUseCase.getAutoGenerateHistoryDetail(event.id);

    result.fold(
      (l) => emit(AiFeaturesError(
          message: l, title: 'Get auto generation detail failed')),
      (r) {
        emit(GetAutoGenerateHistoryDetailSuccess(
            AutoGenerateHistoryModel.fromJson(r.data)));
      },
    );
  }

  FutureOr<void> _getCurrentPointOfUser(
      GetCurrentPointOfUser event, Emitter<AiFeaturesState> emit) async {
    emit(const AiFeaturesState.initial());

    final result = await profileUseCase.getUserInfo();

    result.fold(
      (l) => emit(const AiFeaturesError(
          message: 'Get point failed',
          title: 'Get auto generation detail failed')),
      (r) {
        emit(GetCurrentPointOfUserSuccess(
            UserInfoModel.fromJson(r.data).point ?? 0));
      },
    );
  }

  FutureOr<void> _changeGPTVersion(
      AICharacterChangeGPTVersion event, Emitter<AiFeaturesState> emit) async {
    try {
      currentChatGPTVersion = event.version;

      emit(ChangeGPTVersionSuccess(currentChatGPTVersion));
    } catch (e) {
      emit(
          const AiFeaturesError(message: 'change gpt failed', title: 'failed'));
    }
  }
}
