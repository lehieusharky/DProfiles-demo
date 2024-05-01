import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/app_failure.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/upload_file_response.dart';

abstract class ProfileRepository {
  Future<Either<ProfileFailure, BaseResponse>> getUserInfo();

  Future<Either<ProfileFailure, BaseResponse>> getUserCertificates();

  Future<Either<ProfileFailure, BaseResponse>> getUserEducations();

  Future<Either<ProfileFailure, BaseResponse>> getUserExperiences();

  Future<Either<ProfileFailure, BaseResponse>> getUserSkills();

  Future<Either<ProfileFailure, BaseResponse>> getUserLanguage();

  Future<Either<ProfileFailure, BaseResponse>> getMetaLanguage();

  Future<Either<ProfileFailure, BaseResponse>> deleteUserExperience(int id);

  Future<Either<ProfileFailure, BaseResponse>> deleteUserEducation(int id);

  Future<Either<ProfileFailure, BaseResponse>> deleteUserCertificate(int id);

  Future<Either<ProfileFailure, BaseResponse>> updateUserExperience(
      ExperienceModel experienceModel);

  Future<Either<ProfileFailure, BaseResponse>> updateUserEducation(
      EducationModel educationModel);

  Future<Either<ProfileFailure, BaseResponse>> updateUserCertificate(
      CertificateModel certificateModel);

  Future<Either<ProfileFailure, BaseResponse>> getBanner();

  Future<Either<ProfileFailure, BaseResponse>> postBanner(
      String bannenUrlBanner);
}

class ProfileFailure extends AppFailure {
  const ProfileFailure({super.msgCode, super.response});
}
