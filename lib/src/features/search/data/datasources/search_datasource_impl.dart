import 'package:demo_dprofiles/src/features/search/data/datasources/search_datasource.dart';
import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SearchDataSource)
class SearchDataSourceImpl implements SearchDataSource {
  @override
  Future<BaseResponse> searchBar(String? search, int page, int? limit) async {
    try {
      final response = await MyHttp.rl().searchBar(search, page, limit);

      return response;
    } on DioException {
      rethrow;
    }
  }
}
