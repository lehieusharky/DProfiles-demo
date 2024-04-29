import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class PublicProfileDataSource {
  Future<BaseResponse> getPublicBasicInfo(String userName);

  Future<BaseResponse> getPublicEducations(String userName);

  Future<BaseResponse> getPublicExperiences(String userName);

  Future<BaseResponse> getPublicCertificates(String userName);

  Future<BaseResponse> getPublicLanguages(String userName);

  Future<BaseResponse> getPublicSkills(String userName);
}
