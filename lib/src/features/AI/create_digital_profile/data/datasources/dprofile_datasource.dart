import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class DProfileDataSource {
  Future<BaseResponse> getDProfileUpdateHistory();
}
