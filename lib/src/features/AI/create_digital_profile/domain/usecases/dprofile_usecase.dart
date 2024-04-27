import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/domain/repositories/dprofile_repository.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:injectable/injectable.dart';

abstract class DProfileUseCase {
  Future<Either<String, BaseResponse>> getDProfileUpdateHistory();
}

@Injectable(as: DProfileUseCase)
class DProfileUseCaseImpl implements DProfileUseCase {
  final DProfileRepository _dProfileRepository;

  DProfileUseCaseImpl(this._dProfileRepository);

  @override
  Future<Either<String, BaseResponse>> getDProfileUpdateHistory() async {
    final result = await _dProfileRepository.getDProfileUpdateHistory();
    return result.fold(
      (l) => Left(
          (l.response as RegularErrorResponse).message ?? 'Get history failed'),
      (r) => Right(r),
    );
  }
}
