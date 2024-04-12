import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class ProfileDataSource {
  Future<BaseResponse> getUserInfo();

  Future<BaseResponse> getUserCertificates();

  Future<BaseResponse> getUserEducations();

  Future<BaseResponse> getUserExperiences();

  Future<BaseResponse> addNewEducation(EducationModel data);

  Future<BaseResponse> addNewExperience(ExperienceModel data);

  Future<BaseResponse> addNewCertificate(CertificateModel  data);
}
