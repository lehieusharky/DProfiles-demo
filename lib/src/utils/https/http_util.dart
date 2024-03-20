import 'package:dio/dio.dart';
import 'app_rest_client.dart';
import 'dio_interceptor.dart';

class HttpUtil {
  static RestClient restClient() {
    Dio dio = Dio();
    //  add header
    dio.interceptors.add(DioInterceptor());

    final restClient = RestClient(dio);
    return restClient;
  }
}
