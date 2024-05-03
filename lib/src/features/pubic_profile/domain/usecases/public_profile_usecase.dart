import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/domain/repositories/public_profile_repository.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:injectable/injectable.dart';

abstract class PublicProfileUseCase {
  Future<Either<String, BaseResponse>> getPublicBasicInfo(String userName);

  Future<Either<String, BaseResponse>> getEducations(String userName);

  Future<Either<String, BaseResponse>> getExperiences(String userName);

  Future<Either<String, BaseResponse>> getCertificates(String userName);

  Future<Either<String, BaseResponse>> getPublicLanguages(String userName);

  Future<Either<String, BaseResponse>> getPublicSkills(String userName);

  Future<Either<String, BaseResponse>> getPublicBanner(String userName);
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

  @override
  Future<Either<String, BaseResponse>> getCertificates(String userName) async {
    final result = await _profileRepository.getCertificates(userName);
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ''),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, BaseResponse>> getEducations(String userName) async {
    final result = await _profileRepository.getEducations(userName);
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ''),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, BaseResponse>> getExperiences(String userName) async {
    final result = await _profileRepository.getExperiences(userName);
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ''),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, BaseResponse>> getPublicLanguages(
      String userName) async {
    final result = await _profileRepository.getPublicLanguages(userName);
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ''),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, BaseResponse>> getPublicSkills(String userName) async {
    final result = await _profileRepository.getPublicSkills(userName);
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ''),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, BaseResponse>> getPublicBanner(String userName) async {
    final result = await _profileRepository.getPublicBanner(userName);
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ''),
      (r) => Right(r),
    );
  }
}
