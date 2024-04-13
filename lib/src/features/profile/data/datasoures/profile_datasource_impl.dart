import 'package:demo_dprofiles/src/features/profile/data/datasoures/profile_datasource.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
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
  Future<BaseResponse> addNewEducation(EducationModel data) async {
    try {
      final baseResponse = await MyHttp.rl().addUserEducation(data.toJson());
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> addNewCertificate(CertificateModel data) async {
    try {
      final baseResponse = await MyHttp.rl().addUserCertificate(data.toJson());
      return baseResponse;
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> addNewExperience(ExperienceModel data) async {
    try {
      final baseResponse = await MyHttp.rl().addUserExperience(data.toJson());
      return baseResponse;
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> updateUserInfo(UserInfoModel data) async {
    try {
      final baseResponse = await MyHttp.rl().updateUserInfo(data.toJson());
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }
}
