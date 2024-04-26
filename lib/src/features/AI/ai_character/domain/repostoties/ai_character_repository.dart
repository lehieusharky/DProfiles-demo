import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/property_ai_character.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/app_failure.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class AICharacterRepository {
  Future<Either<AICharacterFailure, BaseResponse>> generateCharacterBot(
      PropertyAICharacterModel data);

  Future<Either<AICharacterFailure, BaseResponse>> getListCharacterBot();

  Future<Either<AICharacterFailure, BaseResponse>> getListPopularCharacterBot(
      {required int page, int? limit});

  Future<Either<AICharacterFailure, BaseResponse>> followCharacterBot(
      int botID);

  Future<Either<AICharacterFailure, BaseResponse>> getChatBotFollowedByUser(
      String? search, int page, int limit);
}

class AICharacterFailure extends AppFailure {
  const AICharacterFailure({super.msgCode, super.response});
}
