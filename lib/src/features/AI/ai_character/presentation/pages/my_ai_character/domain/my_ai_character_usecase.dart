import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/domain/repositories/chat_with_ai_repository.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:injectable/injectable.dart';

abstract class MyAICharacterUseCase {
  Future<Either<String, BaseResponse>> getChatBotDetail(
      int chatBotID, bool isPopularBot);

  Future<Either<String, BaseResponse>> getChatBotMessageHistory(
      {required int chatBotID,
      required int page,
      required int limit,
      required String search});
}

@Injectable(as: MyAICharacterUseCase)
class MyAICharacterUseCaseImpl implements MyAICharacterUseCase {
  final ChatWithAIRepository _chatWithAIRepository;

  MyAICharacterUseCaseImpl(this._chatWithAIRepository);

  @override
  Future<Either<String, BaseResponse>> getChatBotDetail(
      int chatBotID, bool isPopularBot) async {
    final result =
        await _chatWithAIRepository.getChatBotDetail(chatBotID, isPopularBot);
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ""),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, BaseResponse>> getChatBotMessageHistory(
      {required int chatBotID,
      required int page,
      required int limit,
      required String search}) async {
    final result = await _chatWithAIRepository.getChatBotMessageHistory(
        chatBotID: chatBotID, page: page, limit: limit, search: search);
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ""),
      (r) => Right(r),
    );
  }
}
