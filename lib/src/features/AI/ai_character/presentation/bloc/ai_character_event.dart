part of 'ai_character_bloc.dart';

@freezed
class AiCharacterEvent with _$AiCharacterEvent {
  const factory AiCharacterEvent.started() = _Started;

  const factory AiCharacterEvent.changeCreationStep({required bool isNext}) =
      AICharacterChangeCreationStep;

  const factory AiCharacterEvent.getUserInfo() = AICharacterGetUserInfo;

  const factory AiCharacterEvent.addBasicInfoOfCharacterBot(
      {required String name,
      required String summary}) = AddBasicInfoOfCharacterBot;

  const factory AiCharacterEvent.getUserCertificates() =
      AICharacterGetUserCertificates;

  const factory AiCharacterEvent.getUserEducations() =
      AICharacterGetUserEducations;

  const factory AiCharacterEvent.getUserExperiences() =
      AICharacterGetUserExperiences;

  const factory AiCharacterEvent.generateCharacterBot() = GenerateCharacterBot;

  const factory AiCharacterEvent.getListCharacterBot() = GetListCharacterBot;

  const factory AiCharacterEvent.getListPopularCharacterBot() =
      GetListPopularCharacterBot;

  const factory AiCharacterEvent.updatePropertiesOfCharacterBot(
          PropertiesOfCharacter property, int value) =
      UpdatePropertiesOfCharacterBot;

  const factory AiCharacterEvent.getChatBotDetail(int id, bool isPopularBot) =
      AICharacterGetChatBotDetail;

  const factory AiCharacterEvent.removeCertificate(
      CertificateModel certificateModel) = AICharacterRemoveCertificate;

  const factory AiCharacterEvent.removeEducation(
      EducationModel educationModel) = AICharacterRemoveEducation;

  const factory AiCharacterEvent.removeExperience(
      ExperienceModel experienceModel) = AICharacterRemoveExperience;

  const factory AiCharacterEvent.editCertificate(
          int index, CertificateModel certificateModel) =
      AICharacterEditCertificate;

  const factory AiCharacterEvent.editEducation(
      int index, EducationModel educationModel) = AICharacterEditEducation;

  const factory AiCharacterEvent.editExperience(
      int index, ExperienceModel experienceModel) = AICharacterEditExperience;
}
