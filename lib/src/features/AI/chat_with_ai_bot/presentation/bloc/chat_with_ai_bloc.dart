import 'dart:async';

import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/ai_character_bot_model.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/data/models/chat_bot_message_history_model.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/data/models/send_message_to_bot_ai_model.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/domain/usecases/chat_with_ai_usecase.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/domain/usecases/profile_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_with_ai_event.dart';
part 'chat_with_ai_state.dart';
part 'chat_with_ai_bloc.freezed.dart';

class ChatWithAiBloc extends Bloc<ChatWithAiEvent, ChatWithAiState> {
  final ChatWithAIUseCase chatWithAIUseCase;
  final ProfileUseCase profileUseCase;

  ChatWithAiBloc(this.chatWithAIUseCase, this.profileUseCase)
      : super(const ChatWithAiState.initial()) {
    on<ChatWithAILoadBotAI>(_loadChatAI);
    on<ChatWithAIGetChatBotDetail>(_getChatBotDetail);
    on<ChatWithAISendMessage>(_sendMessage);
    on<ChatWithAIGetChatWithBotHistory>(_getChatWithAIHistory);
    
  }

  FutureOr<void> _loadChatAI(
      ChatWithAILoadBotAI event, Emitter<ChatWithAiState> emit) async {
    final result = await chatWithAIUseCase.loadBotAI(event.chatBotID);

    result.fold(
      (l) => emit(
          const ChatWithAIError(title: 'Load bot failed', msg: 'Load failed')),
      (r) => emit(const ChatWithAILoadBotAISuccess()),
    );
  }

  FutureOr<void> _getChatBotDetail(
      ChatWithAIGetChatBotDetail event, Emitter<ChatWithAiState> emit) async {
    final result = await chatWithAIUseCase.getChatBotDetail(
        event.chatBotID, event.isPopularBot);

    result.fold(
      (l) => emit(const ChatWithAIError(
          title: 'get details bot failed', msg: 'Load failed')),
      (r) {
        emit(ChatWithAIGetChatBotDetailSuccess(
            AICharacterBotModel.fromJson(r.data)));
      },
    );
  }

  FutureOr<void> _sendMessage(
      ChatWithAISendMessage event, Emitter<ChatWithAiState> emit) async {
    final result = await chatWithAIUseCase.chatWithAI(event.data);

    result.fold(
        (l) => emit(const ChatWithAIError(
            title: 'get details bot failed', msg: 'Load failed')),
        (r) => emit(ChatWithAISendMessageSuccess(r)));
  }

  FutureOr<void> _getChatWithAIHistory(ChatWithAIGetChatWithBotHistory event,
      Emitter<ChatWithAiState> emit) async {
    emit(const ChatWithAILoading());

    final result = await chatWithAIUseCase.getChatBotMessageHistory(
        chatBotID: event.chatBotID,
        page: event.page,
        limit: event.limit,
        search: event.search);

    result.fold(
      (l) =>
          emit(ChatWithAIError(msg: l, title: 'Get chat bot detail  failed')),
      (r) {
        final data = r.data as List;

        final messages =
            data.map((e) => ChatBotMessageHistoryModel.fromJson(e)).toList();

        emit(ChatWithAIGetChatWithBotHistorySuccess(messages));
      },
    );
  }
}
