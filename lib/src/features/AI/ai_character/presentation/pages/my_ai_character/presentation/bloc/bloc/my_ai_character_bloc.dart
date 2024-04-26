import 'dart:async';
import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/ai_character_bot_model.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/data/models/chat_bot_message_history_model.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/domain/usecases/chat_with_ai_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_ai_character_event.dart';
part 'my_ai_character_state.dart';
part 'my_ai_character_bloc.freezed.dart';

class MyAiCharacterBloc extends Bloc<MyAiCharacterEvent, MyAiCharacterState> {
  final ChatWithAIUseCase chatWithAiUseCase;

  MyAiCharacterBloc(this.chatWithAiUseCase) : super(const _Initial()) {
    on<MyAiCharacterGetChatBotDetail>(_getChatBotDetail);
    on<MyAiCharacterGetChatWithBotHistory>(_getChatWithBotHistory);
  }

  FutureOr<void> _getChatBotDetail(MyAiCharacterGetChatBotDetail event,
      Emitter<MyAiCharacterState> emit) async {
    emit(const MyAiCharacterLoading());

    final result =
        await chatWithAiUseCase.getChatBotDetail(event.id, event.isPopularBot);

    result.fold(
        (l) => emit(MyAiCharacterError(
            message: [l], title: 'Get chat bot detail  failed')), (r) {
      emit(MyAiCharacterGetChatBotDetailSuccess(
          AICharacterBotModel.fromJson(r.data)));
    });
  }

  FutureOr<void> _getChatWithBotHistory(
      MyAiCharacterGetChatWithBotHistory event,
      Emitter<MyAiCharacterState> emit) async {
    emit(const MyAiCharacterLoading());

    final result = await chatWithAiUseCase.getChatBotMessageHistory(
        chatBotID: event.chatBotID,
        page: event.page,
        limit: event.limit,
        search: event.search);

    result.fold(
      (l) => emit(MyAiCharacterError(
          message: [l], title: 'Get chat bot detail  failed')),
      (r) {
        final data = r.data as List;

        final messages =
            data.map((e) => ChatBotMessageHistoryModel.fromJson(e)).toList();

        emit(MyAiCharacterGetChatWithBotHistorySuccess(messages));
      },
    );
  }
}
