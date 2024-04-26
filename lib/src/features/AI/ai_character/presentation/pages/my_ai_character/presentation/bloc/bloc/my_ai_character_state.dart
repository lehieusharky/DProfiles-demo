part of 'my_ai_character_bloc.dart';

@freezed
class MyAiCharacterState with _$MyAiCharacterState {
  const factory MyAiCharacterState.initial() = _Initial;

  const factory MyAiCharacterState.loading() = MyAiCharacterLoading;

  const factory MyAiCharacterState.error(
      {required List<String> message, String? title}) = MyAiCharacterError;

  const factory MyAiCharacterState.getChatBotDetailSuccess(
          AICharacterBotModel characterBotDetail) =
      MyAiCharacterGetChatBotDetailSuccess;

  const factory MyAiCharacterState.getChatWithBotHistorySuccess(
          List<ChatBotMessageHistoryModel> messagesHistory) =
      MyAiCharacterGetChatWithBotHistorySuccess;
}
