import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/property_ai_character.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/domain/repostoties/ai_character_repository.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:injectable/injectable.dart';

abstract class AICharacterUseCase {
  Future<Either<String, BaseResponse>> generateCharacterBot(
      PropertyAICharacterModel data);

  Future<Either<String, BaseResponse>> getListCharacterBot();

  Future<Either<String, BaseResponse>> getListPopularCharacterBot();
}

@Injectable(as: AICharacterUseCase)
class AICharacterUseCaseImpl implements AICharacterUseCase {
  final AICharacterRepository _aiCharacterRepository;

  AICharacterUseCaseImpl(this._aiCharacterRepository);

  @override
  Future<Either<String, BaseResponse>> generateCharacterBot(
      PropertyAICharacterModel data) async {
    final result = await _aiCharacterRepository.generateCharacterBot(data);
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ""),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, BaseResponse>> getListCharacterBot() async {
    final result = await _aiCharacterRepository.getListCharacterBot();
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ''),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, BaseResponse>> getListPopularCharacterBot() async {
    final result = await _aiCharacterRepository.getListPopularCharacterBot();
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ''),
      (r) => Right(r),
    );
  }
}
