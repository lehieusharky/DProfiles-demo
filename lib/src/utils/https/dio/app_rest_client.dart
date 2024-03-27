import 'package:demo_dprofiles/src/features/auth/data/models/sign_in_model.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'app_rest_client.g.dart';

@RestApi(baseUrl: 'https://api.dev.dprofiles.xyz')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST('/send-code-register')
  Future<BaseResponse> sendSignUpEmail(@Body() Map<String, dynamic> body);

  @POST('/resend-code-register')
  Future<BaseResponse> resendSignUpEmail(@Body() Map<String, dynamic> body);

  @POST('/validate-register-code')
  Future<BaseResponse> validateSignUpCode(@Body() Map<String, dynamic> body);

  @POST('/api/v1/user/register')
  Future<BaseResponse> createAnAccount(@Body() Map<String, dynamic> body);

  @POST('/api/login')
  Future<SignInModel?> signIn(@Body() Map<String, dynamic> body);
}