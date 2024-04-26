import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class PublicProfileDataSource {
  Future<BaseResponse> getPublicBasicInfo(String userName);
}