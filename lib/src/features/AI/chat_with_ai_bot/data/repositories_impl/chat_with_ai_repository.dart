import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/data/datasources/chat_with_ai_datasource.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/data/models/chat_with_ai_model.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/domain/repositories/chat_with_ai_repository.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ChatWithAIRepository)
class ChatWithAIRepositoryImpl implements ChatWithAIRepository {
  final ChatWithAIDataSource _chatWithAIDataSource;

  ChatWithAIRepositoryImpl(this._chatWithAIDataSource);

  @override
  Future<Either<ChatWithAiFailure, String>> chatWithAI(
      ChatWIthAIModel data) async {
    try {
      final res = await _chatWithAIDataSource.chatWithAI(data);

      return Right(res);
    } on DioException catch (e) {
      return Left(ChatWithAiFailure(
          response: RegularErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<ChatWithAiFailure, BaseResponse>> getChatBotDetail(
      int chatBotID) async {
    try {
      final res = await _chatWithAIDataSource.getChatBotDetail(chatBotID);

      return Right(res);
    } on DioException catch (e) {
      return Left(ChatWithAiFailure(
          response: RegularErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<ChatWithAiFailure, BaseResponse>> loadBotAI(
      int chatBotID) async {
    try {
      final res = await _chatWithAIDataSource.loadBotAI(chatBotID);

      return Right(res);
    } on DioException catch (e) {
      return Left(ChatWithAiFailure(
          response: RegularErrorResponse.fromJson(e.response!.data)));
    }
  }
}
