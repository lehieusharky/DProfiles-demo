import 'package:dio/dio.dart';
import 'app_rest_client.dart';
import 'dio_interceptor.dart';

class MyHttp {
  static Dio getDio() {

    Dio dio = Dio();

    dio.interceptors.add(DioInterceptor());

    return dio;
  }

  static RestClient rl() {
    final restClient = RestClient(getDio());

    return restClient;
  }
}
