import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/property_ai_character.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class AICharacterDataSource {
  Future<BaseResponse> generateCharacterBot(PropertyAICharacterModel data);

  Future<BaseResponse> getListCharacterBot();

  Future<BaseResponse> getListPopularCharacterBot();

  Future<BaseResponse> followCharacterBot(int botID);

  Future<BaseResponse> getChatBotFollowedByUser(
      String? search, int page, int limit);
}
