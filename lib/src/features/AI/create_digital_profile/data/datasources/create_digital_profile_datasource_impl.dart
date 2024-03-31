import 'package:demo_dprofiles/src/features/AI/create_digital_profile/data/datasources/create_digital_profile_datasource.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/data/models/add_user_education_model.dart';
import 'package:demo_dprofiles/src/utils/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CreateDigitalProfileDataSource)
class CreateDigitalProfileDataSourceImpl
    implements CreateDigitalProfileDataSource {
  @override
  Future<BaseResponse> addUserEducation(AddUserEducationModel params) async {
    try {
      final baseResponse = await MyHttp.rl().addUserEducation(params.toJson());
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> updateUserInfo(UserInfoModel params) async {
    try {
      final baseResponse = await MyHttp.rl().updateUserInfo(params.toJson());
      return baseResponse;
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getUserInfo() async {
    try {
      final baseResponse = await MyHttp.rl().getUserInfo();
      return baseResponse;
    } on DioException catch (e) {
      rethrow;
    }
  }
}
