import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/domain/repositories/public_profile_repository.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:injectable/injectable.dart';

abstract class PublicProfileUseCase {
  Future<Either<String, BaseResponse>> getPublicBasicInfo(String userName);
}

@Injectable(as: PublicProfileUseCase)
class PublicProfileUseCaseImpl implements PublicProfileUseCase {
  final PublicProfileRepository _profileRepository;

  PublicProfileUseCaseImpl(this._profileRepository);

  @override
  Future<Either<String, BaseResponse>> getPublicBasicInfo(
      String userName) async {
    final result = await _profileRepository.getPublicBasicInfo(userName);
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ''),
      (r) => Right(r),
    );
  }
}