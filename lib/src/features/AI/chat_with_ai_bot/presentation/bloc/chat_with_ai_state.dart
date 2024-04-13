part of 'chat_with_ai_bloc.dart';

@freezed
class ChatWithAiState with _$ChatWithAiState {
  const factory ChatWithAiState.initial() = _Initial;

  const factory ChatWithAiState.loading() = ChatWithAILoading;

  const factory ChatWithAiState.error(
      {required String title, required String msg}) = ChatWithAIError;

  const factory ChatWithAiState.sendMessageSuccess(String msg) =
      ChatWithAISendMessageSuccess;

  const factory ChatWithAiState.loadBotAISuccess() = ChatWithAILoadBotAISuccess;

  const factory ChatWithAiState.getChatBotDetailSuccess(
      AICharacterBotModel aiCharacterBot) = ChatWithAIGetChatBotDetailSuccess;
}
