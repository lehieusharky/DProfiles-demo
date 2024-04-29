import 'package:demo_dprofiles/src/features/auth/data/models/sign_in_model.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/upload_file_response.dart';
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

  @DELETE('/api/v1/user')
  Future<BaseResponse> deleteUser();

  // education

  @POST('/api/v1/user-education')
  Future<BaseResponse> addUserEducation(@Body() Map<String, dynamic> body);

  @GET('/api/v1/user-education')
  Future<BaseResponse> getUserEducations();

  @GET('/api/v1/user-education/{id}')
  Future<BaseResponse> getEducationInfo(@Path() String id);

  @DELETE('/api/v1/user-education/{id}')
  Future<BaseResponse> deleteEducationInfo(@Path() int id);

  @PUT('/api/v1/user-education/{id}')
  Future<BaseResponse> updateEducationInfo(
      @Path() int id, @Body() Map<String, dynamic> body);

  // certificate

  @POST('/api/v1/user-certificate')
  Future<BaseResponse> addUserCertificate(@Body() Map<String, dynamic> body);

  @GET('/api/v1/user-certificate')
  Future<BaseResponse> getUserCertificates();

  @GET('/api/v1/user-certificate/{id}')
  Future<BaseResponse> getCertificateInfo(@Path() String id);

  @PUT('/api/v1/user-certificate/{id}')
  Future<BaseResponse> updateCertificateInfo(
      @Path() int id, @Body() Map<String, dynamic> body);

  @DELETE('/api/v1/user-certificate/{id}')
  Future<BaseResponse> deleteCertificate(@Path() int id);

  // experience

  @GET('/api/v1/user-experience')
  Future<BaseResponse> getUserExperiences();

  @POST('/api/v1/user-experience')
  Future<BaseResponse> addUserExperience(@Body() Map<String, dynamic> body);

  @GET('/api/v1/user-experience/{id}')
  Future<BaseResponse> getExperienceInfo(@Path() String id);

  @PUT('/api/v1/user-experience/{id}')
  Future<BaseResponse> updateExperienceInfo(
      @Path() int id, @Body() Map<String, dynamic> body);

  @DELETE('/api/v1/user-experience/{id}')
  Future<BaseResponse> deleteExperienceInfo(@Path() int id);

  // auto generate

  @POST('/api/v1/auto-generate/profile-introduction')
  Future<BaseResponse> generateProfileIntroduction(
      @Body() Map<String, dynamic> body);

  @POST('/api/v1/auto-generate/interview-question')
  Future<BaseResponse> generateInterviewQuestion(
      @Body() Map<String, dynamic> body);

  @POST('/api/v1/auto-generate/skill-knowledge')
  Future<BaseResponse> generateSkillKnowledge(
      @Body() Map<String, dynamic> body);

  @POST('/api/v1/auto-generate/cover-letter')
  Future<BaseResponse> generateCoverLetter(@Body() Map<String, dynamic> body);

  @GET('/api/v1/auto-generate-history')
  Future<BaseResponse> getAutoGenerateHistory();

  @GET('/api/v1/auto-generate-history/{id}')
  Future<BaseResponse> getAutoGenerateHistoryItem(@Path() int id);

  // create digital profile

  @POST('/api/v1/dProfile/mint')
  Future<BaseResponse> createDigitalProfile();

  @PUT('/api/v1/dProfile/update')
  Future<BaseResponse> updateDigitalProfile();

  @GET('/api/v1/dprofile-stored')
  Future<BaseResponse> checkDigitalProfileStored();

  @GET('/api/v1/dprofile-history')
  Future<BaseResponse> getDigitalProfileUpdateHistory();

  // ai character

  @POST('https://char.dev.dprofiles.xyz/generate-character-bot/')
  Future<BaseResponse> generateCharacterBot(@Body() Map<String, dynamic> body);

  @GET('/api/v1/character-chatbot')
  Future<BaseResponse> getListCreatedCharacterBot();

  @GET('/api/v1/character-chatbot/{id}')
  Future<BaseResponse> getCharacterBotDetail(@Path() int id);

  @GET('/api/v1/character-chatbot/popular/{id}')
  Future<BaseResponse> getPopularCharacterBotDetail(@Path() int id);

  @POST('https://char.dev.dprofiles.xyz/load-character-bot/')
  Future<BaseResponse> loadCharacterBot(@Body() Map<String, dynamic> body);

  @GET('/api/v1/character-chatbot/popular')
  Future<BaseResponse> getListPopularCharacterBot(
    @Query('page') int? page,
    @Query('limit') int? limit,
  );

  @POST('/api/v1/chatbot-follow')
  Future<BaseResponse> followBot(@Body() Map<String, dynamic> body);

  // community
  @GET('/api/v1/post/newsFeed')
  Future<BaseResponse> getNewsFeed(
    @Query('page') int page,
    @Query('limit') int limit,
  );

  @GET('/api/v1/chatbot-follow/read-by-follower')
  Future<BaseResponse> getChatBotFollowedByUser(
    @Query('search') String? search,
    @Query('page') int page,
    @Query('limit') int limit,
    @Query('followee_id') int followeeID,
  );

  // skill

  @GET('/api/v1/user-skill')
  Future<BaseResponse> getUserSkills();

  @POST('/api/v1/user-skill')
  Future<BaseResponse> addNewUseSkill(@Body() Map<String, dynamic> body);

  @GET('/api/v1/user-skill/{id}')
  Future<BaseResponse> getUserSkillDetail(@Path() String id);

  @DELETE('/api/v1/user-skill/{id}')
  Future<BaseResponse> deleteUserSkill(@Path() String id);

  @PUT('/api/v1/user-skill/{id}')
  Future<BaseResponse> updateUserSkill(
      @Path() String id, @Body() Map<String, dynamic> body);

  // language

  @GET('/api/v1/user-language')
  Future<BaseResponse> getUserLanguages();

  @POST('/api/v1/user-language')
  Future<BaseResponse> addNewUseLanguage(@Body() Map<String, dynamic> body);

  @GET('/api/v1/user-language/{id}')
  Future<BaseResponse> getUserLanguageDetail(@Path() String id);

  @DELETE('/api/v1/user-language/{id}')
  Future<BaseResponse> deleteUserLanguage(@Path() String id);

  @PUT('/api/v1/user-language/{id}')
  Future<BaseResponse> updateUserLanguage(
      @Path() String id, @Body() Map<String, dynamic> body);

  // chat with ai

  @POST('https://char.dev.dprofiles.xyz/chat/')
  Future<BaseResponse> chatWithBotAI(@Body() Map<String, dynamic> body);

  @GET('/api/v1/chatbot-message-history')
  Future<BaseResponse> getChatBotHistory(
    @Query('search') String search,
    @Query('page') int page,
    @Query('limit') int limit,
    @Query('chatbot_id') int chatBotID,
  );

  // forgot password

  @POST('/reset-password')
  Future<BaseResponse> resetPassword(@Body() Map<String, dynamic> body);

  @GET('/reset-password')
  Future<BaseResponse> getResetPassword();

  @POST('/request-password-reset')
  Future<BaseResponse> requestResetPassword(@Body() Map<String, dynamic> body);

  @POST('/update-password')
  Future<BaseResponse> updatePassword(@Body() Map<String, dynamic> body);

  // Feed
  @GET('/api/v1/post')
  Future<BaseResponse> readAllPosts(
    @Query('page') int page,
    @Query('limit') int limit,
  );

  @GET('/api/v1/post/{id}')
  Future<BaseResponse> readPost(
    @Path('id') int id,
  );

  @PUT('/api/v1/post/{id}')
  Future<BaseResponse> updatePost(
    @Path('id') int id,
    @Body() Map<String, dynamic> post,
  );

  @DELETE('/api/v1/post/{id}')
  Future<BaseResponse> deletePost(
    @Path('id') int id,
  );

  @GET('/api/v1/share')
  Future<BaseResponse> readAllShares();

  @POST('/api/v1/share')
  Future<BaseResponse> createShare(
    @Body() Map<String, dynamic> share,
  );

  @GET('/api/v1/share/read-by-post')
  Future<BaseResponse> readAllSharesByPost(
    @Query('post_id') int postId,
    @Query('page') int page,
    @Query('limit') int limit,
  );

  @GET('/api/v1/share/shared/{post_id}')
  Future<BaseResponse> getSharedPost(
    @Path('post_id') int postId,
  );

  @GET('/api/v1/share/{id}')
  Future<BaseResponse> readShare(
    @Path('id') int id,
  );

  @PUT('/api/v1/share/{id}')
  Future<BaseResponse> updateShare(
    @Path('id') int id,
    @Body() Map<String, dynamic> share,
  );

  @DELETE('/api/v1/share/{id}')
  Future<BaseResponse> deleteShare(
    @Path('id') int id,
  );

  @GET('/api/v1/comment')
  Future<BaseResponse> readAllComments();

  @POST('/api/v1/comment')
  Future<BaseResponse> createComment(
    @Body() Map<String, dynamic> comment,
  );

  @GET('/api/v1/comment/read-by-post')
  Future<BaseResponse> readAllCommentsByPost(
    @Query('post_id') int postId,
    @Query('page') int page,
    @Query('limit') int limit,
  );

  @GET('/api/v1/comment/commented/{post_id}')
  Future<BaseResponse> getCommentedPost(
    @Path('post_id') int postId,
  );

  @GET('/api/v1/comment/{id}')
  Future<BaseResponse> readComment(
    @Path('id') int id,
  );

  @PUT('/api/v1/comment/{id}')
  Future<BaseResponse> updateComment(
    @Path('id') int id,
    @Body() Map<String, dynamic> comment,
  );

  @DELETE('/api/v1/comment/{id}')
  Future<BaseResponse> deleteComment(
    @Path('id') int id,
  );

  @GET('/api/v1/like')
  Future<BaseResponse> readAllLikes(
    @Query('post_id') int postId,
    @Query('page') int page,
    @Query('limit') int limit,
  );

  @POST('/api/v1/like')
  Future<BaseResponse> createLike(
    @Body() Map<String, dynamic> like,
  );

  @GET('/api/v1/like/read-by-post')
  Future<BaseResponse> readAllLikesByPost(
    @Query('post_id') int postId,
    @Query('page') int page,
    @Query('limit') int limit,
  );

  @GET('/api/v1/like/liked/{post_id}')
  Future<BaseResponse> getLikedPost(
    @Path('post_id') int postId,
  );

  @GET('/api/v1/like/{id}')
  Future<BaseResponse> readLike(
    @Path('id') int id,
  );

  @DELETE('/api/v1/like/{id}')
  Future<BaseResponse> deleteLike(
    @Path('id') int id,
  );

  // upload

  @POST('https://upload.dev.dprofiles.xyz/presigned-upload-url')
  Future<BaseResponse> uploadImage(@Body() Map<String, dynamic> body);

  // search

  @GET('/api/v1/search-bar')
  Future<BaseResponse> searchBar(
    @Query('search') String? search,
    @Query('page') int page,
    @Query('limit') int? limit,
  );

  // meta

  @GET('/api/v1/meta-language')
  Future<BaseResponse> getMetaLanguage();

  // public

  @GET('/api/v1/public/user/{username}')
  Future<BaseResponse> getPublicUserInfo(@Path('username') String userName);

  @GET('/api/v1/public/certificate/{username}')
  Future<BaseResponse> getPublicCertificate(@Path('username') String userName);

  @GET('/api/v1/public/education/{username}')
  Future<BaseResponse> getPublicEducations(@Path('username') String userName);

  @GET('/api/v1/public/experience/{username}')
  Future<BaseResponse> getPublicExperiences(@Path('username') String userName);

  @GET('/api/v1/public/language/{username}')
  Future<BaseResponse> getPublicLanguages(@Path('username') String userName);

  @GET('/api/v1/public/skill/{username}')
  Future<BaseResponse> getPublicSkills(@Path('username') String userName);

  @GET('/api/v1/public/working-location/{username}')
  Future<BaseResponse> getPublicWorkingLocation(
      @Path('username') String userName);
}
