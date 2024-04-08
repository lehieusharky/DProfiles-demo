import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/app_failure.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class CreateDigitalProfileRepository {
  Future<Either<CreateDigitalProfileFailure, BaseResponse>> updateUserInfo(
      UserInfoModel data);

  Future<Either<CreateDigitalProfileFailure, BaseResponse>> getUserInfo();

  // certificate

  Future<Either<CreateDigitalProfileFailure, BaseResponse>>
      getUserCertificates();

  Future<Either<CreateDigitalProfileFailure, BaseResponse>> addUserCertificate(
      CertificateModel param);

  Future<Either<CreateDigitalProfileFailure, BaseResponse>> getCertificateInfo(
      String id);

  Future<Either<CreateDigitalProfileFailure, BaseResponse>>
      updateUserCertificate(String id, CertificateModel data);

  Future<Either<CreateDigitalProfileFailure, BaseResponse>>
      deleteUserCertificate(String id);

  // education

  Future<Either<CreateDigitalProfileFailure, BaseResponse>> getUserEducations();

  Future<Either<CreateDigitalProfileFailure, BaseResponse>> addUserEducation(
      EducationModel data);

  Future<Either<CreateDigitalProfileFailure, BaseResponse>> getEducationInfo(
      String id);

  Future<Either<CreateDigitalProfileFailure, BaseResponse>> updateEducationInfo(
      String id, EducationModel data);

  Future<Either<CreateDigitalProfileFailure, BaseResponse>> deleteEducation(
      String id);

  // experience

  Future<Either<CreateDigitalProfileFailure, BaseResponse>>
      getUserExperiences();

  Future<Either<CreateDigitalProfileFailure, BaseResponse>> addUserExperience(
      ExperienceModel data);

  Future<Either<CreateDigitalProfileFailure, BaseResponse>> getExperienceInfo(
      String id);

  Future<Either<CreateDigitalProfileFailure, BaseResponse>>
      updateExperienceInfo(String id, ExperienceModel data);

  Future<Either<CreateDigitalProfileFailure, BaseResponse>> deleteExperience(
      String id);

  Future<Either<CreateDigitalProfileFailure, void>> createDigitalProfile();

  Future<Either<CreateDigitalProfileFailure, BaseResponse>> updateDigitalProfile();
}

class CreateDigitalProfileFailure extends AppFailure {
  const CreateDigitalProfileFailure({super.msgCode, super.response});
}
