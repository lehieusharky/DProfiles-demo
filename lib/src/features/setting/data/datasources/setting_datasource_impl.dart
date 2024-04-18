import 'package:demo_dprofiles/src/features/setting/data/datasources/setting_datasource.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:demo_dprofiles/src/utils/data/exceptions/app_exception.dart';
import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:demo_dprofiles/src/utils/services/device_info_service.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SettingDataSource)
class SettingDataSourceImpl implements SettingDataSource {
  @override
  Future<void> setInitialSettingInfo() async {
    try {
      final isFirstTimeOpenApp = sharePreference.isFirstTimeOpenApp();

      await _handleDarkMode(isFirstTimeOpenApp);
    } on Exception catch (e) {
      throw SettingException(e);
    }
  }

  Future<void> _handleDarkMode(bool isFirstTimeOpenApp) async {
    final darkModeCondition =
        DeviceInfoService().darkModeIsEnable() && isFirstTimeOpenApp;
    if (darkModeCondition) {
      await sharePreference.toggleDarkMode(true);
    }
  }

  @override
  Future<BaseResponse> deleteUser() async {
    try {
      final baseResponse = await MyHttp.rl().deleteUser();
      return baseResponse;
    } on DioException catch (e) {
      throw SettingException(e);
    }
  }
}
