part of 'chat_with_ai_bloc.dart';

@freezed
class ChatWithAiEvent with _$ChatWithAiEvent {
  const factory ChatWithAiEvent.started() = _Started;

  const factory ChatWithAiEvent.sendMessage(ChatWIthAIModel data) =
      ChatWithAISendMessage;

  const factory ChatWithAiEvent.loadBotAI(int chatBotID) = ChatWithAILoadBotAI;

  const factory ChatWithAiEvent.getChatBotDetail(int chatBotID) =
      ChatWithAIGetChatBotDetail;
}
