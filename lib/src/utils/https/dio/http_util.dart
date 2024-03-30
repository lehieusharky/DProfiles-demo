import 'package:dio/dio.dart';
import 'app_rest_client.dart';
import 'dio_interceptor.dart';

class MyHttp {
  static Dio getDio() {
    Dio dio = Dio();

    dio.options.headers = {
      "Content-Type": "application/json",
      "Authorization":
          "Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzOTUwLCJ1c2VybmFtZSI6ImMwOGUzOTFmMTg3YmFjMmM1ODVlYTVkZDgxOGMxOWQ1Iiwicm9sZXMiOltdLCJpYXQiOjE3MTE4MTI0NzgsImV4cCI6MTcxMjQxNzI3OH0.REN7IOPkeTItwKTMmXJX_J1WYslPk-leALccni9qXd8Zn9U_rUQHNkbrBARYFucH-3OqmV7T2TuhzSe2BOe2pPheKK4GY0bvsnHGfipILNZMMxWj1tyrTiNi7BgCrOvedsx_Fr7oCgEyRLqgIbZ3ib8ikL-zA8xw9iS6xGu6Fud8aKsUpbNc2ZmJX1RzwlACPIOlvbez-RE09iH43qCEbz1XM0HZto-VclS-5O9ZnM55hqg6dd4Dag40B-xXfXDKZaqSEE26uvqZun3e04vrvT3fq_cNvo--jHadrmKLKKxXZhdhx7e-ZtdVUhX4Lpn8ixnWmOk4fSrjVZJcyt2sig",
    };

    dio.interceptors.add(DioInterceptor());

    return dio;
  }

  static RestClient rl() {
    final restClient = RestClient(getDio());

    return restClient;
  }
}
