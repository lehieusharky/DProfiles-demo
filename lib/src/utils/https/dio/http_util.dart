import 'package:dio/dio.dart';
import 'app_rest_client.dart';
import 'dio_interceptor.dart';

class HttpUtil {
  static RestClient restClient() {
    Dio dio = Dio();

    dio.options.headers['Demo-Header'] = 'demo header';

    dio.interceptors.add(DioInterceptor());

    final restClient = RestClient(dio);

    return restClient;
  }
}
