import 'package:demo_dprofiles/src/features/profile/data/datasoures/profile_datasource.dart';

import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProfileDataSource)
class ProfileDataSourceImpl implements ProfileDataSource {
  @override
  Future<BaseResponse> getUserCertificates() async {
    try {
      final baseResponse = await MyHttp.rl().getUserCertificates();
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getUserEducations() async {
    try {
      final baseResponse = await MyHttp.rl().getUserEducations();
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getUserExperiences() async {
    try {
      final baseResponse = await MyHttp.rl().getUserExperiences();
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getUserInfo() async {
    try {
      final baseResponse = await MyHttp.rl().getUserInfo();

      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getUserLanguage() async {
    try {
      final baseResponse = await MyHttp.rl().getUserLanguages();
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getUserSkills() async {
    try {
      final baseResponse = await MyHttp.rl().getUserSkills();
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }
}
