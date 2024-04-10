import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class HomeDataSource {
  Future<BaseResponse> getNewsFeed(int page, int limit);
}