import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@module
abstract class StrapiModule {
  @Named('strapi')
  @lazySingleton
  Dio strapiDioClient() {
    Dio dio = Dio();
    final baseUrl = dotenv.get('strapiBaseUrl');
    final accessToken = dotenv.get('strapiAccessToken');
    dio.options.baseUrl = baseUrl;
    dio.options.headers = {
      "Content-Type": "application/json",
      "Authorization": "Bearer $accessToken"
    };
    return dio..interceptors.add(LogInterceptor(responseBody: true));
  }
}
