part of 'ai_character_bloc.dart';

@freezed
class AiCharacterState with _$AiCharacterState {
  const factory AiCharacterState.initial() = _Initial;

  const factory AiCharacterState.loading() = AICharacterLoading;

  const factory AiCharacterState.error(
      {required List<String> message, String? title}) = AICharacterError;

  const factory AiCharacterState.changeCreationStepSuccess(int currentStep) =
      AICharacterChangeCreationStepSuccess;

  const factory AiCharacterState.addBasicInfoOfCharacterBotSuccess() =
      AddBasicInfoOfCharacterBotSuccess;

  const factory AiCharacterState.getUserInfo(UserInfoModel userInfoModel) =
      AICharacterGetUserInfoSuccess;

  const factory AiCharacterState.getUserCertificatesSuccess(
          List<CertificateModel> certificates) =
      AICharacterGetUserCertificatesSuccess;

  const factory AiCharacterState.getUserEducationsSuccess(
      List<EducationModel> educations) = AICharacterGetUserEducationsSuccess;

  const factory AiCharacterState.getUserExperiencesSuccess(
      List<ExperienceModel> experiences) = AICharacterGetUserExperiencesSuccess;

  const factory AiCharacterState.generateCharacterBotSuccess(
          CreatedCharacterBotModel createCharacterBotModel) =
      GenerateCharacterBotSuccess;

  const factory AiCharacterState.getListCharacterBotSuccess(
      List<AICharacterBotModel> bots) = GetListCharacterBotSuccess;

  const factory AiCharacterState.getListPopularCharacterBotSuccess(
      List<AICharacterBotModel> bots) = GetListPopularCharacterBotSuccess;
}