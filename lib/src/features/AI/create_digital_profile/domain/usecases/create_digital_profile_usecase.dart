import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/domain/repositories/create_digital_profile_repository.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/error_response.dart';

import 'package:injectable/injectable.dart';

CreateDigitalProfileUseCase get createDigitalProfileUseCase =>
    injector.get<CreateDigitalProfileUseCase>();

abstract class CreateDigitalProfileUseCase {
  Future<Either<List<String>, BaseResponse>> updateUserInfo(
      UserInfoModel params);

  Future<Either<List<String>, BaseResponse>> getUserInfo();

  // certificate

  Future<Either<List<String>, BaseResponse>> getUserCertificates();

  Future<Either<List<String>, BaseResponse>> addUserCertificate(
      CertificateModel param);

  Future<Either<List<String>, BaseResponse>> getCertificateInfo(String id);

  Future<Either<List<String>, BaseResponse>> updateUserCertificate(
      String id, CertificateModel data);

  Future<Either<List<String>, BaseResponse>> deleteUserCertificate(String id);

  // education

  Future<Either<List<String>, BaseResponse>> getUserEducations();

  Future<Either<List<String>, BaseResponse>> addUserEducation(
      EducationModel params);

  Future<Either<List<String>, BaseResponse>> getEducationInfo(String id);

  Future<Either<List<String>, BaseResponse>> updateUserEducation(
      String id, EducationModel data);

  Future<Either<List<String>, BaseResponse>> deleteUserEducation(String id);

  // experience

  Future<Either<List<String>, BaseResponse>> getUserExperiences();

  Future<Either<List<String>, BaseResponse>> addUserExperience(
      ExperienceModel params);

  Future<Either<List<String>, BaseResponse>> getExperienceInfo(String id);

  Future<Either<List<String>, BaseResponse>> updateUserExperience(
      String id, ExperienceModel data);

  Future<Either<List<String>, BaseResponse>> deleteUserExperience(String id);

  Future<Either<String, void>> createDigitalProfile();

  Future<Either<String, BaseResponse>> updateDigitalProfile();
}

@Injectable(as: CreateDigitalProfileUseCase)
class CreateDigitalProfileUseCaseImpl implements CreateDigitalProfileUseCase {
  final CreateDigitalProfileRepository _createDigitalProfileRepository;

  CreateDigitalProfileUseCaseImpl(this._createDigitalProfileRepository);

  @override
  Future<Either<List<String>, BaseResponse>> updateUserInfo(
      UserInfoModel params) async {
    final result = await _createDigitalProfileRepository.updateUserInfo(params);
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<List<String>, BaseResponse>> getUserInfo() async {
    final result = await _createDigitalProfileRepository.getUserInfo();
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  // certificate

  @override
  Future<Either<List<String>, BaseResponse>> addUserCertificate(
      CertificateModel param) async {
    final result =
        await _createDigitalProfileRepository.addUserCertificate(param);
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<List<String>, BaseResponse>> deleteUserCertificate(
      String id) async {
    final result =
        await _createDigitalProfileRepository.deleteUserCertificate(id);
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<List<String>, BaseResponse>> getCertificateInfo(
      String id) async {
    final result = await _createDigitalProfileRepository.getCertificateInfo(id);
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<List<String>, BaseResponse>> getUserCertificates() async {
    final result = await _createDigitalProfileRepository.getUserCertificates();
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<List<String>, BaseResponse>> updateUserCertificate(
      String id, CertificateModel data) async {
    final result =
        await _createDigitalProfileRepository.updateUserCertificate(id, data);
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  // education

  @override
  Future<Either<List<String>, BaseResponse>> addUserEducation(
      EducationModel param) async {
    final result =
        await _createDigitalProfileRepository.addUserEducation(param);
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<List<String>, BaseResponse>> deleteUserEducation(
      String id) async {
    final result = await _createDigitalProfileRepository.deleteEducation(id);
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<List<String>, BaseResponse>> getEducationInfo(String id) async {
    final result = await _createDigitalProfileRepository.getEducationInfo(id);
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<List<String>, BaseResponse>> getUserEducations() async {
    final result = await _createDigitalProfileRepository.getUserEducations();
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<List<String>, BaseResponse>> updateUserEducation(
      String id, EducationModel data) async {
    final result =
        await _createDigitalProfileRepository.updateEducationInfo(id, data);
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  // experience

  @override
  Future<Either<List<String>, BaseResponse>> addUserExperience(
      ExperienceModel param) async {
    final result =
        await _createDigitalProfileRepository.addUserExperience(param);
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<List<String>, BaseResponse>> deleteUserExperience(
      String id) async {
    final result = await _createDigitalProfileRepository.deleteExperience(id);
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<List<String>, BaseResponse>> getExperienceInfo(
      String id) async {
    final result = await _createDigitalProfileRepository.getExperienceInfo(id);
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<List<String>, BaseResponse>> getUserExperiences() async {
    final result = await _createDigitalProfileRepository.getUserExperiences();
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<List<String>, BaseResponse>> updateUserExperience(
      String id, ExperienceModel data) async {
    final result =
        await _createDigitalProfileRepository.updateExperienceInfo(id, data);
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, void>> createDigitalProfile() async {
    final result = await _createDigitalProfileRepository.createDigitalProfile();
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ''),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, BaseResponse>> updateDigitalProfile() async {
    final result = await _createDigitalProfileRepository.updateDigitalProfile();
    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message ?? ''),
      (r) => Right(r),
    );
  }
}
