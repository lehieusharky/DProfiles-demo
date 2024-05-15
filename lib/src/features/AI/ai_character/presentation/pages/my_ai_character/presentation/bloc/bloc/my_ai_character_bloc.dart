import 'dart:async';

import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/ai_character_bot_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/pages/my_ai_character/domain/my_ai_character_usecase.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/data/models/chat_bot_message_history_model.dart';
import 'package:demo_dprofiles/src/utils/domain/usecases/file_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_ai_character_bloc.freezed.dart';
part 'my_ai_character_event.dart';
part 'my_ai_character_state.dart';

class MyAiCharacterBloc extends Bloc<MyAiCharacterEvent, MyAiCharacterState> {
  final MyAICharacterUseCase myAICharacterUseCase;

  final FileUseCase fileUseCase = injector<FileUseCase>();

  AICharacterBotModel? botInfo = null;

  MyAiCharacterBloc(this.myAICharacterUseCase) : super(const _Initial()) {
    on<MyAiCharacterGetChatBotDetail>(_getChatBotDetail);
    on<MyAiCharacterGetChatWithBotHistory>(_getChatWithBotHistory);
    on<MyAiCharacterUploadAvatar>(_uploadAvatar);
    on<MyAiCharacterUploadBanner>(_uploadBanner);
  }

  FutureOr<void> _getChatBotDetail(MyAiCharacterGetChatBotDetail event,
      Emitter<MyAiCharacterState> emit) async {
    emit(const MyAiCharacterLoading());

    final result = await myAICharacterUseCase.getChatBotDetail(
        event.id, event.isPopularBot);

    result.fold(
        (l) => emit(MyAiCharacterError(
            message: [l], title: 'Get chat bot detail  failed')), (r) {
      botInfo = AICharacterBotModel.fromJson(r.data);
      emit(MyAiCharacterGetChatBotDetailSuccess(botInfo!));
    });
  }

  FutureOr<void> _getChatWithBotHistory(
      MyAiCharacterGetChatWithBotHistory event,
      Emitter<MyAiCharacterState> emit) async {
    emit(const MyAiCharacterLoading());

    final result = await myAICharacterUseCase.getChatBotMessageHistory(
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

  FutureOr<void> _uploadAvatar(
      MyAiCharacterUploadAvatar event, Emitter<MyAiCharacterState> emit) async {
    final result = await fileUseCase.uploadImage();
    result.fold((l) {}, (r) {
      emit(MyAiCharacterGetChatBotDetailSuccess(botInfo!.copyWith(
        avatar: r?.objectKey ?? '',
      )));
    });
  }

  FutureOr<void> _uploadBanner(
      MyAiCharacterUploadBanner event, Emitter<MyAiCharacterState> emit) async {
    final result = await fileUseCase.uploadImage();
  }
}
