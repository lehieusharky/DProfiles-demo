import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/data/models/send_message_to_bot_ai_model.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/app_failure.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class ChatWithAIRepository {
  Future<Either<ChatWithAiFailure, String>> chatWithAI(
      SendMessageToBotAIModel data);

  Future<Either<ChatWithAiFailure, BaseResponse>> loadBotAI(int chatBotID);

  Future<Either<ChatWithAiFailure, BaseResponse>> getChatBotDetail(
      int chatBotID, bool isPopularBot);
}

class ChatWithAiFailure extends AppFailure {
  const ChatWithAiFailure({super.msgCode, super.response});
}
