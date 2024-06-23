import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/refresh_token_response.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import 'app_rest_client.dart';
import 'curl_log_interceptor.dart';
import 'dio_interceptor.dart';

const UNAUTHORIZED_MESSAGE = 'Unauthorized';
const UNAUTHORIZED_STATUSCODE = 401;

class MyHttp {
  static Dio getDio() {
    Dio dio = Dio();

    final accessToken = sharePreference.getAccessToken();

    final refreshToken = sharePreference.getAccessToken();

    if (accessToken != null) {
      dio.options.headers = {
        "Content-Type": "application/json",
        "Authorization": "Bearer $accessToken",
      };
    }

    dio.interceptors.addAll(
      [
        DioInterceptor(),
        CurlLoggerDioInterceptor(printOnSuccess: true),
        InterceptorsWrapper(
            onError: (exception, handler) =>
                onUnauthorizedError(exception, handler, refreshToken),
            onRequest: ((options, handler) {
              sharePreference.getAccessToken();
            })),
      ],
    );

    return dio;
  }

  static RestClient rl() {
    final restClient = RestClient(getDio());

    return restClient;
  }

  static void onUnauthorizedError(
    DioException exception,
    ErrorInterceptorHandler handler,
    String? myRefreshToken,
  ) {
    final condition =
        (exception.response?.statusCode == UNAUTHORIZED_STATUSCODE ||
                exception.response?.statusMessage == UNAUTHORIZED_MESSAGE) &&
            myRefreshToken != null;

    if (condition) {
      Logger().e('------------Expired token------------');
      Logger().e(exception.requestOptions);
      _handleUnauthorizedException(exception, myRefreshToken);
    }
  }

  static void _handleUnauthorizedException(
    DioException exception,
    String myRefreshToken,
  ) async {
    final body = {"token": myRefreshToken};

    await MyHttp.rl().refreshToken(body).then((res) => _retry(exception, res));
  }

  static _retry(DioException exception, RefreshTokenResponse res) async {
    await sharePreference.setAccessToken(res.accessToken);

    await sharePreference.setRefreshToken(res.refreshToken);

    final requestOptions = exception.requestOptions;

    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );

    getDio().request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }
}
