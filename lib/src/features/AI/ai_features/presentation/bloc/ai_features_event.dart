part of 'ai_features_bloc.dart';

@freezed
class AiFeaturesEvent with _$AiFeaturesEvent {
  const factory AiFeaturesEvent.started() = _Started;

  const factory AiFeaturesEvent.getAutoGenerateHistory() =
      GetAutoGenerateHistory;

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


}
