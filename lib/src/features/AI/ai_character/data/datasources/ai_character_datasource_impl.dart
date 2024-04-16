import 'package:demo_dprofiles/src/features/AI/ai_character/data/datasources/ai_character_datasource.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/property_ai_character.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AICharacterDataSource)
class AICharacterDataSourceImpl implements AICharacterDataSource {
  @override
  Future<BaseResponse> generateCharacterBot(
      PropertyAICharacterModel data) async {
    try {
      final baseResponse =
          await MyHttp.rl().generateCharacterBot(data.toJson());
      return baseResponse;
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getListCharacterBot() async {
    try {
      final baseResponse = await MyHttp.rl().getListCreatedCharacterBot();
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getListPopularCharacterBot() async {
    try {
      final baseResponse = await MyHttp.rl().getListPopularCharacterBot();
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> followCharacterBot(int botID) async {
    try {
      final body = {
        "chatbot_followee_id": botID,
        "status": 1,
        "follower_id": sharePreference.getUserID(),
      };
      final baseResponse = await MyHttp.rl().followBot(body);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getChatBotFollowedByUser(
      String? search, int page, int limit) async {
    try {
      final baseResponse = await MyHttp.rl().getChatBotFollowedByUser(
        search,
        page,
        limit,
        sharePreference.getUserID() ?? 0,
      );
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }
}
