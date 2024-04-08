import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class ProfileDataSource {
  Future<BaseResponse> getUserInfo();

  Future<BaseResponse> getUserCertificates();

  Future<BaseResponse> getUserEducations();

  Future<BaseResponse> getUserExperiences();
}