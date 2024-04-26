import 'package:demo_dprofiles/src/features/pubic_profile/data/datasource/public_profile_datasource.dart';
import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PublicProfileDataSource)
class PublicProfileDataSourceImpl implements PublicProfileDataSource {
  @override
  Future<BaseResponse> getPublicBasicInfo(String userName) async {
    try {
      final response = await MyHttp.rl().getPublicUserInfo(userName);

      return response;
    } on DioException catch (e) {
      rethrow;
    }
  }
}
