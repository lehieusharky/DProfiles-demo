import 'package:demo_dprofiles/src/features/edit_profile/data/datasources/edit_profile_datasource.dart';

import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: EditProfileDataSource)
class EditProfileDataSourceImpl implements EditProfileDataSource {
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
