import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/app_failure.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class EditProfileRepository {
  Future<Either<EditProfileFailure, BaseResponse>> addNewEducation(
      EducationModel data);

  Future<Either<EditProfileFailure, BaseResponse>> addNewExperience(
      ExperienceModel data);

  Future<Either<EditProfileFailure, BaseResponse>> addNewCertificate(
      CertificateModel data);

  Future<Either<EditProfileFailure, BaseResponse>> updateUserInfo(
      UserInfoModel data);

  Future<Either<EditProfileFailure, BaseResponse>> addNewSkill(String skill);

  Future<Either<EditProfileFailure, BaseResponse>> addNewLanguage(
      int languageID);
}

class EditProfileFailure extends AppFailure {
  const EditProfileFailure({super.msgCode, super.response});
}
