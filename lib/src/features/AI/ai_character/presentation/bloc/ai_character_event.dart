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
}
