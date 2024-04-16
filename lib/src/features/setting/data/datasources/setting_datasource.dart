import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class SettingDataSource {
  Future<void> setInitialSettingInfo();

  Future<BaseResponse> deleteUser();
}
