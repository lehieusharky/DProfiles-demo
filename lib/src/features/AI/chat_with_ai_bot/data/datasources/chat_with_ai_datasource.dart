import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/data/models/send_message_to_bot_ai_model.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class ChatWithAIDataSource {
  Future<String> chatWithAI(SendMessageToBotAIModel data);

  Future<BaseResponse> loadBotAI(int chatBotID);

  Future<BaseResponse> getChatBotDetail(int chatBotID, bool isPopularBot);
}
