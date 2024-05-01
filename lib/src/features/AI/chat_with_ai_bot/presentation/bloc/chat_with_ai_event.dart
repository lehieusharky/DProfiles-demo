part of 'chat_with_ai_bloc.dart';

@freezed
class ChatWithAiEvent with _$ChatWithAiEvent {
  const factory ChatWithAiEvent.started() = _Started;

  const factory ChatWithAiEvent.sendMessage(SendMessageToBotAIModel data) =
      ChatWithAISendMessage;

  const factory ChatWithAiEvent.loadBotAI(int chatBotID) = ChatWithAILoadBotAI;

  const factory ChatWithAiEvent.getChatBotDetail(
      int chatBotID, bool isPopularBot) = ChatWithAIGetChatBotDetail;

  const factory ChatWithAiEvent.getChatWithBotHistory(
      {required int chatBotID,
      required int page,
      required int limit,
      required String search}) = ChatWithAIGetChatWithBotHistory;

  const factory ChatWithAiEvent.getUserInfo() = ChatWithAIGetUserInfo;

  const factory ChatWithAiEvent.afterSendMessage() = ChatWithAIAfterSendMessage;
}
