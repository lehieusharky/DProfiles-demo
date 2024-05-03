part of 'ai_features_bloc.dart';

@freezed
class AiFeaturesEvent with _$AiFeaturesEvent {
  const factory AiFeaturesEvent.started() = _Started;

  const factory AiFeaturesEvent.getAutoGenerateHistory(
      {int? page, int? limit}) = GetAutoGenerateHistory;

  const factory AiFeaturesEvent.generateProfileIntroduction(
          WriteProfileIntroductionModel profileIntroductionModel) =
      GenerateProfileIntroduction;

  const factory AiFeaturesEvent.generateInterviewQuestion(
          WriteInterviewQuestionModel interviewQuestionModel) =
      GenerateInterviewQuestion;

  const factory AiFeaturesEvent.generateSkillKnowledge(
      WriteSkillKnowledgeModel skillKnowledgeModel) = GenerateSkillKnowledge;

  const factory AiFeaturesEvent.generateCoverLetter(
      WriteCoverLetterModel coverLetterModel) = GenerateCoverLetter;

  const factory AiFeaturesEvent.getAutoGenerateHistoryDetail(int id) =
      GetAutoGenerateHistoryDetail;

  const factory AiFeaturesEvent.getCurrentPointOfUser() = GetCurrentPointOfUser;

  const factory AiFeaturesEvent.changeGPTVersion(SupportedChatGPT version) =
      AICharacterChangeGPTVersion;
}
