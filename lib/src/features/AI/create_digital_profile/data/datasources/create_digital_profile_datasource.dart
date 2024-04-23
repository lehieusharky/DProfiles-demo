import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class CreateDigitalProfileDataSource {
  Future<BaseResponse> updateUserInfo(UserInfoModel params);

  Future<BaseResponse> getUserInfo();

  Future<BaseResponse> checkDigitalProfileIsAvailable();

  // certificate

  Future<BaseResponse> getUserCertificates();

  Future<BaseResponse> addUserCertificate(CertificateModel param);

  Future<BaseResponse> getCertificateInfo(String id);

  Future<BaseResponse> updateUserCertificate(String id, CertificateModel data);

  Future<BaseResponse> deleteUserCertificate(String id);

  // education
  Future<BaseResponse> getUserEducations();

  Future<BaseResponse> addUserEducation(EducationModel data);

  Future<BaseResponse> getEducationInfo(String id);

  Future<BaseResponse> updateEducationInfo(String id, EducationModel data);

  Future<BaseResponse> deleteEducation(String id);

  // experience

  Future<BaseResponse> getUserExperiences();

  Future<BaseResponse> addUserExperience(ExperienceModel data);

  Future<BaseResponse> getExperienceInfo(String id);

  Future<BaseResponse> updateExperienceInfo(String id, ExperienceModel data);

  Future<BaseResponse> deleteExperience(String id);

  // create digital profile

  Future<void> createDigitalProfile();

  Future<BaseResponse> updateDigitalProfile();
}
