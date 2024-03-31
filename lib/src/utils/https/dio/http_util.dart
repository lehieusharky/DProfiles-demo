import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:dio/dio.dart';
import 'app_rest_client.dart';
import 'dio_interceptor.dart';

class MyHttp {
  static Dio getDio() {
    Dio dio = Dio();

    final accessToken = sharePreference.getAccessToken();

    if (accessToken != null) {
      dio.options.headers = {
        "Content-Type": "application/json",
        "Authorization": "Bearer $accessToken",
      };
    }

    dio.interceptors.add(DioInterceptor());

    return dio;
  }

  static RestClient rl() {
    final restClient = RestClient(getDio());

    return restClient;
  }
}
