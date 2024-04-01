import 'package:demo_dprofiles/src/features/auth/data/models/sign_in_model.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'app_rest_client.g.dart';

@RestApi(baseUrl: 'https://api.dev.dprofiles.xyz')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  //  authentication

  @POST('/send-code-register')
  Future<BaseResponse> sendSignUpEmail(@Body() Map<String, dynamic> body);

  @POST('/resend-code-register')
  Future<BaseResponse> resendSignUpEmail(@Body() Map<String, dynamic> body);

  @POST('/validate-register-code')
  Future<BaseResponse> validateSignUpCode(@Body() Map<String, dynamic> body);

  @POST('/api/v1/user/register')
  Future<BaseResponse> createAnAccount(@Body() Map<String, dynamic> body);

  @POST('/api/login')
  Future<SignInModel> signIn(@Body() Map<String, dynamic> body);

  // user

  @GET('/api/v1/user')
  Future<BaseResponse> getUserInfo();

  @PUT('/api/v1/user')
  Future<BaseResponse> updateUserInfo(@Body() Map<String, dynamic> body);

  // education

  @POST('/api/v1/user-education')
  Future<BaseResponse> addUserEducation(@Body() Map<String, dynamic> body);

  @GET('/api/v1/user-education')
  Future<BaseResponse> getUserEducations();

  @GET('/api/v1/user-education/{id}')
  Future<BaseResponse> getEducationInfo(@Path() String id);

  @DELETE('/api/v1/user-education/{id}')
  Future<BaseResponse> deleteEducationInfo(@Path() String id);

  @PUT('/api/v1/user-education/{id}')
  Future<BaseResponse> updateEducationInfo(
      @Path() String id, @Body() Map<String, dynamic> body);

  // certificate

  @POST('/api/v1/user-certificate')
  Future<BaseResponse> addUserCertificate(@Body() Map<String, dynamic> body);

  @GET('/api/v1/user-certificate')
  Future<BaseResponse> getUserCertificates();

  @GET('/api/v1/user-certificate/{id}')
  Future<BaseResponse> getCertificateInfo(@Path() String id);

  @PUT('/api/v1/user-certificate/{id}')
  Future<BaseResponse> updateCertificateInfo(
      @Path() String id, @Body() Map<String, dynamic> body);

  @DELETE('/api/v1/user-certificate/{id}')
  Future<BaseResponse> deleteCertificate(@Path() String id);

  // experience

  @GET('/api/v1/user-experience')
  Future<BaseResponse> getUserExperiences();

  @POST('/api/v1/user-experience')
  Future<BaseResponse> addUserExperience(@Body() Map<String, dynamic> body);

  @GET('/api/v1/user-experience/{id}')
  Future<BaseResponse> getExperienceInfo(@Path() String id);

  @PUT('/api/v1/user-experience/{id}')
  Future<BaseResponse> updateExperienceInfo(
      @Path() String id, @Body() Map<String, dynamic> body);

  @DELETE('/api/v1/user-experience/{id}')
  Future<BaseResponse> deleteExperienceInfo(@Path() String id);

  // generate profile introduction

  @POST('/api/v1/auto-generate/profile-introduction')
  Future<BaseResponse> generateProfileIntroduction(
      @Body() Map<String, dynamic> body);

  @GET('/api/v1/auto-generate-history')
  Future<BaseResponse> getAutoGenerateHistory();
}
