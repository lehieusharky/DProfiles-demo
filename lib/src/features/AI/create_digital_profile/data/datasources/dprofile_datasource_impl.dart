import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'dprofile_datasource.dart';

@Injectable(as: DProfileDataSource)
class DProfileDataSourceImpl implements DProfileDataSource {
  @override
  Future<BaseResponse> getDProfileUpdateHistory() async {
    try {
      final baseResponse = await MyHttp.rl().getDigitalProfileUpdateHistory();
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }
}
