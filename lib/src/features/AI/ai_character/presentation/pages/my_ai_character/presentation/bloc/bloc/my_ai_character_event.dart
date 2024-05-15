part of 'my_ai_character_bloc.dart';

@freezed
class MyAiCharacterEvent with _$MyAiCharacterEvent {
  const factory MyAiCharacterEvent.getChatBotDetail(int id, bool isPopularBot) =
      MyAiCharacterGetChatBotDetail;

  const factory MyAiCharacterEvent.getChatWithBotHistory(
      {required int chatBotID,
      required int page,
      required int limit,
      required String search}) = MyAiCharacterGetChatWithBotHistory;

  const factory MyAiCharacterEvent.uploadAvatar() = MyAiCharacterUploadAvatar;

  const factory MyAiCharacterEvent.uploadBanner() = MyAiCharacterUploadBanner;
}
