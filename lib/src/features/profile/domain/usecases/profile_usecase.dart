import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/domain/repositories/profile_repository.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/error_response.dart';
import 'package:injectable/injectable.dart';

abstract class ProfileUseCase {
  Future<Either<List<String>, BaseResponse>> getUserInfo();

  Future<Either<List<String>, BaseResponse>> getUserCertificates();

  Future<Either<List<String>, BaseResponse>> getUserEducations();

  Future<Either<List<String>, BaseResponse>> getUserExperiences();

  Future<Either<List<String>, BaseResponse>> addNewEducation(
      EducationModel data);

  Future<Either<List<String>, BaseResponse>> addNewExperience(
      ExperienceModel data);

  Future<Either<List<String>, BaseResponse>> addNewCertificate(
      CertificateModel data);

  Future<Either<List<String>, BaseResponse>> updateUserInfo(UserInfoModel data);
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
  Future<Either<List<String>, BaseResponse>> addNewCertificate(
      CertificateModel data) async {
    final result = await _profileRepository.addNewCertificate(data);
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<List<String>, BaseResponse>> addNewEducation(
      EducationModel data) async {
    final result = await _profileRepository.addNewEducation(data);
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<List<String>, BaseResponse>> addNewExperience(
      ExperienceModel data) async {
    final result = await _profileRepository.addNewExperience(data);
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<List<String>, BaseResponse>> updateUserInfo(
      UserInfoModel data) async {
    final result = await _profileRepository.updateUserInfo(data);
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }
}
