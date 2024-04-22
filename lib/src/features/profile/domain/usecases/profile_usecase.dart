import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/features/profile/domain/repositories/profile_repository.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/error_response.dart';
import 'package:injectable/injectable.dart';

abstract class ProfileUseCase {
  Future<Either<List<String>, BaseResponse>> getUserInfo();

  Future<Either<List<String>, BaseResponse>> getUserCertificates();

  Future<Either<List<String>, BaseResponse>> getUserEducations();

  Future<Either<List<String>, BaseResponse>> getUserExperiences();

  Future<Either<String, BaseResponse>> getUserSkills();

  Future<Either<String, BaseResponse>> getUserLanguage();
}

@Injectable(as: ProfileUseCase)
class ProfileUseCaseImpl implements ProfileUseCase {
  final ProfileRepository _profileRepository;

  ProfileUseCaseImpl(this._profileRepository);

  @override
  Future<Either<List<String>, BaseResponse>> getUserCertificates() async {
    final result = await _profileRepository.getUserCertificates();
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<List<String>, BaseResponse>> getUserEducations() async {
    final result = await _profileRepository.getUserEducations();
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<List<String>, BaseResponse>> getUserExperiences() async {
    final result = await _profileRepository.getUserExperiences();
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<List<String>, BaseResponse>> getUserInfo() async {
    final result = await _profileRepository.getUserInfo();
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, BaseResponse>> getUserLanguage() async {
    final result = await _profileRepository.getUserLanguage();
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ''),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, BaseResponse>> getUserSkills() async {
    final result = await _profileRepository.getUserSkills();
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ''),
      (r) => Right(r),
    );
  }
}
