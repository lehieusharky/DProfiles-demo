import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class EditProfileDataSource {
  Future<BaseResponse> addNewEducation(EducationModel data);

  Future<BaseResponse> addNewExperience(ExperienceModel data);

  Future<BaseResponse> addNewCertificate(CertificateModel data);

  Future<BaseResponse> updateUserInfo(UserInfoModel data);

  Future<BaseResponse> addNewSkill(String skill);

  Future<BaseResponse> addNewLanguage(int languageID);
}
