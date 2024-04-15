import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/data/datasources/chat_with_ai_datasource.dart';
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/data/models/send_message_to_bot_ai_model.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ChatWithAIDataSource)
class ChatWithAIDataSourceImpl implements ChatWithAIDataSource {
  @override
  Future<String> chatWithAI(SendMessageToBotAIModel data) async {
    try {
      final baseResponse = await MyHttp.rl().chatWithBotAI(data.toJson());
      return baseResponse.response as String;
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> loadBotAI(int chatBotID) async {
    try {
      final body = {
        "session_id": sharePreference.getSessionID(),
        "chat_bot_id": chatBotID,
      };

      final baseResponse = await MyHttp.rl().loadCharacterBot(body);
      return baseResponse;
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getChatBotDetail(
      int chatBotID, bool isPopularBot) async {
    try {
      late BaseResponse baseResponse;

      if (isPopularBot) {
        baseResponse =
            await MyHttp.rl().getPopularCharacterBotDetail(chatBotID);
      } else {
        baseResponse = await MyHttp.rl().getCharacterBotDetail(chatBotID);
      }

      return baseResponse;
    } on DioException catch (e) {
      rethrow;
    }
  }
}
