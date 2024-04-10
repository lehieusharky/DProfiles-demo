import 'package:demo_dprofiles/src/features/setting/data/datasources/setting_datasource.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:demo_dprofiles/src/utils/data/exceptions/app_exception.dart';
import 'package:demo_dprofiles/src/utils/services/device_info_service.dart';
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
}
