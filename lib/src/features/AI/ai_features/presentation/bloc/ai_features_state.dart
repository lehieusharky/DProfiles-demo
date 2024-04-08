part of 'ai_features_bloc.dart';

@freezed
class AiFeaturesState with _$AiFeaturesState {
  const factory AiFeaturesState.initial() = _Initial;

  const factory AiFeaturesState.error(
      {required String message, required String title}) = AiFeaturesError;

  const factory AiFeaturesState.loading() = AiFeaturesLoading;

  const factory AiFeaturesState.getAutoGenerateHistory(
          List<AutoGenerateHistoryModel> autoGenerateHistories) =
      GetAutoGenerateHistorySuccess;

  const factory AiFeaturesState.generateProfileIntroductionSuccess(
      String data) = GenerateProfileIntroductionSuccess;

  const factory AiFeaturesState.generateInterviewQuestionSuccess(String data) =
      GenerateInterviewQuestionSuccess;

  const factory AiFeaturesState.generateSkillKnowledgeSuccess(String data) =
      GenerateSkillKnowledgeSuccess;

  const factory AiFeaturesState.generateCoverLetterSuccess(String data) =
      GenerateCoverLetterSuccess;
}
