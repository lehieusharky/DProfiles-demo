import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/upload_file_response.dart';

abstract class ProfileDataSource {
  Future<BaseResponse> getUserInfo();

  Future<BaseResponse> getUserCertificates();

  Future<BaseResponse> getUserEducations();

  Future<BaseResponse> getUserExperiences();

  Future<BaseResponse> getUserSkills();

  Future<BaseResponse> getUserLanguage();

  Future<UploadFileResponse?> uploadImage();

  Future<BaseResponse> getMetaLanguage();

  Future<BaseResponse> deleteUserExperience(int id);

  Future<BaseResponse> deleteUserEducation(int id);

  Future<BaseResponse> deleteUserCertificate(int id);

  Future<BaseResponse> updateUserExperience(ExperienceModel experienceModel);

  Future<BaseResponse> updateUserEducation(EducationModel educationModel);

  Future<BaseResponse> updateUserCertificate(CertificateModel certificateModel);
}
