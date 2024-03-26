import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'app_rest_client.g.dart';

@RestApi(baseUrl: 'https://api.dev.dprofiles.xyz')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST('/api/v1/user')
  Future<List<BaseResponse>> getTasks();
}
