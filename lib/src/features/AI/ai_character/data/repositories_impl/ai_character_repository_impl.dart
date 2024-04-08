import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/data/datasources/ai_character_datasource.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/property_ai_character.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/domain/repostoties/ai_character_repository.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AICharacterRepository)
class AICharacterRepositoryImpl implements AICharacterRepository {
  final AICharacterDataSource _aiCharacterDataSource;

  AICharacterRepositoryImpl(this._aiCharacterDataSource);

  @override
  Future<Either<AICharacterFailure, BaseResponse>> generateCharacterBot(
      PropertyAICharacterModel data) async {
    try {
      final res = await _aiCharacterDataSource.generateCharacterBot(data);

      return Right(res);
    } on DioException catch (e) {
      return Left(AICharacterFailure(
          response: RegularErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<AICharacterFailure, BaseResponse>> getListCharacterBot() async {
    try {
      final res = await _aiCharacterDataSource.getListCharacterBot();

      return Right(res);
    } on DioException catch (e) {
      return Left(AICharacterFailure(
          response: RegularErrorResponse.fromJson(e.response!.data)));
    }
  }
}
