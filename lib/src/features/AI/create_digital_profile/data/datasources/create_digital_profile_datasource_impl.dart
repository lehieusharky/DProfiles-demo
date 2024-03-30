import 'package:demo_dprofiles/src/features/AI/create_digital_profile/data/datasources/create_digital_profile_datasource.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/data/models/add_user_education.dart';
import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CreateDigitalProfileDataSource)
class CreateDigitalProfileDataSourceImpl
    implements CreateDigitalProfileDataSource {
  @override
  Future<BaseResponse> addUserEducation(
      AddUserEducationModel params) async {
    try {
      final response = await MyHttp.rl().addUserEducation(params.toJson());
      return response;
    } on DioException catch (e) {
      rethrow;
    }
  }
}
