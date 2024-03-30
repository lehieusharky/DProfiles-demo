import 'package:dio/dio.dart';
import 'app_rest_client.dart';
import 'dio_interceptor.dart';

class MyHttp {
  static Dio getDio() {
    Dio dio = Dio();

    dio.options.headers = {
      "Content-Type": "application/json",
      "Authorization":
          "Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzOTUwLCJ1c2VybmFtZSI6ImMwOGUzOTFmMTg3YmFjMmM1ODVlYTVkZDgxOGMxOWQ1Iiwicm9sZXMiOltdLCJpYXQiOjE3MTE4MDU0OTMsImV4cCI6MTcxMjQxMDI5M30.Vtlptill_GqtzUVklp9eu22CPg5JAMbwtq9MgxzLHGs4KK9eaawi5pIwGqV5fOHmscgCARqiS3q_CzS9g1z-jwCM3RgsSyLvTxA077OkXXXX_edc9BJ-MNcxClOW6LIElqtDT3hqm-wEpsqHe9b0aQ6C29rC2sfFefF2JzKP2BYUh56vZqUTMKE7JULBdCsl8Egv2k_G7jYIpbbaj42VFH8PRqyDQFzsFJ1OINnJ53no3QyByW9q8o9psL-BJKTw5nRTf8XhMRdBvf9xmTwkWHYmqlQMwEEDTisMldwU9kgqG4Zx6q4UPie7t2TNAlTcjipkTXiFjUkPsiHuUAitNg",
    };

    dio.interceptors.add(DioInterceptor());

    return dio;
  }

  static RestClient rl() {
    final restClient = RestClient(getDio());

    return restClient;
  }
}
