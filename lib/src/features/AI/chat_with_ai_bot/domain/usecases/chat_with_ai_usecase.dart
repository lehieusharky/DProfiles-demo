import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/data/models/chat_with_ai_model.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/domain/repositories/chat_with_ai_repository.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:injectable/injectable.dart';

abstract class ChatWithAIUseCase {
  Future<Either<String, String>> chatWithAI(ChatWIthAIModel data);

  Future<Either<String, BaseResponse>> loadBotAI(int chatBotID);

  Future<Either<String, BaseResponse>> getChatBotDetail(int chatBotID);
}

@Injectable(as: ChatWithAIUseCase)
class ChatWithAIUseCaseImpl implements ChatWithAIUseCase {
  final ChatWithAIRepository _chatWithAIRepository;

  ChatWithAIUseCaseImpl(this._chatWithAIRepository);

  @override
  Future<Either<String, String>> chatWithAI(ChatWIthAIModel data) async {
    final result = await _chatWithAIRepository.chatWithAI(data);
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ""),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, BaseResponse>> getChatBotDetail(int chatBotID) async {
    final result = await _chatWithAIRepository.getChatBotDetail(chatBotID);
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ""),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, BaseResponse>> loadBotAI(int chatBotID) async {
    final result = await _chatWithAIRepository.loadBotAI(chatBotID);
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ""),
      (r) => Right(r),
    );
  }
}