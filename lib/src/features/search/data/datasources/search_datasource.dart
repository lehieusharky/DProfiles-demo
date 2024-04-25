import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class SearchDataSource {
  Future<BaseResponse> searchBar(String? search, int page, int? limit);
}