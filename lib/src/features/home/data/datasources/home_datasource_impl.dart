import 'package:demo_dprofiles/src/features/home/data/datasources/home_datasources.dart';
import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeDataSource)
class HomeDataSourceIml implements HomeDataSource {
  @override
  Future<BaseResponse> getNewsFeed(int page, int limit) async {
    try {
      final baseResponse = await MyHttp.rl().getNewsFeed(page, limit);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }
}
