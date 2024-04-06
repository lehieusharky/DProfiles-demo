import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/domain/repositories/auto_generate_history_repository.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:injectable/injectable.dart';

AutoGenerateUseCase get autoGenerateUseCase =>
    injector.get<AutoGenerateUseCase>();

abstract class AutoGenerateUseCase {
  Future<Either<String, BaseResponse>> getAutoGenerateHistory();
}

@Injectable(as: AutoGenerateUseCase)
class AutoGenerateUseCaseImpl implements AutoGenerateUseCase {
  final AutoGenerateRepository _autoGenerateRepository;

  AutoGenerateUseCaseImpl(this._autoGenerateRepository);

  @override
  Future<Either<String, BaseResponse>> getAutoGenerateHistory() async {
    final result = await _autoGenerateRepository.getAutoGenerateHistory();

    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message!),
      (r) => Right(r),
    );
  }
}
