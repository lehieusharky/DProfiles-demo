import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/AI/write_profile_introduction/data/models/profile_introduction_model.dart';
import 'package:demo_dprofiles/src/features/AI/write_profile_introduction/domain/repositories/write_profile_intro_repository.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:injectable/injectable.dart';

WriteProfileIntroductionUseCase get writeProfileIntroductionUseCase =>
    injector.get<WriteProfileIntroductionUseCase>();

abstract class WriteProfileIntroductionUseCase {
  Future<Either<String, BaseResponse>> generateProfileIntroduction(
      ProfileIntroductionModel model);

  Future<Either<String, BaseResponse>> getAutoGenerateHistory();
}

@Injectable(as: WriteProfileIntroductionUseCase)
class WriteProfileIntroductionUseCaseImpl
    implements WriteProfileIntroductionUseCase {
  final WriteProfileIntroRepository _writeProfileIntroRepository;

  WriteProfileIntroductionUseCaseImpl(this._writeProfileIntroRepository);

  @override
  Future<Either<String, BaseResponse>> generateProfileIntroduction(
      ProfileIntroductionModel model) async {
    final result =
        await _writeProfileIntroRepository.generateProfileIntroduction(model);

    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message!),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, BaseResponse>> getAutoGenerateHistory() async {
    final result = await _writeProfileIntroRepository.getAutoGenerateHistory();

    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message!),
      (r) => Right(r),
    );
  }
}
