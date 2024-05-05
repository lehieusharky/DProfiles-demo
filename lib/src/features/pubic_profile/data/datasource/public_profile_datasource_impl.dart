import 'package:demo_dprofiles/src/features/pubic_profile/data/datasource/public_profile_datasource.dart';
import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PublicProfileDataSource)
class PublicProfileDataSourceImpl implements PublicProfileDataSource {
  @override
  Future<BaseResponse> getPublicBasicInfo(String userName) async {
    try {
      final response = await MyHttp.rl().getPublicUserInfo(userName);

      return response;
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getPublicCertificates(String userName) async {
    try {
      final response = await MyHttp.rl().getPublicCertificate(userName);

      return response;
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getPublicEducations(String userName) async {
    try {
      final response = await MyHttp.rl().getPublicEducations(userName);

      return response;
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getPublicExperiences(String userName) async {
    try {
      final response = await MyHttp.rl().getPublicExperiences(userName);

      return response;
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getPublicLanguages(String userName) async {
    try {
      final response = await MyHttp.rl().getPublicLanguages(userName);

      return response;
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getPublicSkills(String userName) async {
    try {
      final response = await MyHttp.rl().getPublicSkills(userName);

      return response;
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getPublicBanner(String userName) async {
    try {
      final response = await MyHttp.rl().getPublicBanner(userName);

      return response;
    } on DioException catch (e) {
      rethrow;
    }
  }
}
