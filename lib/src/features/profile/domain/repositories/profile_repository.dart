import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/app_failure.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class ProfileRepository {
  Future<Either<ProfileFailure, BaseResponse>> getUserInfo();

  Future<Either<ProfileFailure, BaseResponse>> getUserCertificates();

  Future<Either<ProfileFailure, BaseResponse>> getUserEducations();

  Future<Either<ProfileFailure, BaseResponse>> getUserExperiences();

  Future<Either<ProfileFailure, BaseResponse>> addNewEducation(
      EducationModel data);

  Future<Either<ProfileFailure, BaseResponse>> addNewExperience(
      ExperienceModel data);

  Future<Either<ProfileFailure, BaseResponse>> addNewCertificate(
      CertificateModel data);

  Future<Either<ProfileFailure, BaseResponse>> updateUserInfo(UserInfoModel data);
}

class ProfileFailure extends AppFailure {
  const ProfileFailure({super.msgCode, super.response});
}
