import 'package:demo_dprofiles/src/features/AI/write_profile_introduction/data/datasources/write_profile_intro_datasource.dart';
import 'package:demo_dprofiles/src/features/AI/write_profile_introduction/data/models/profile_introduction_model.dart';
import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: WriteProfileIntroDataSource)
class WriteProfileIntroDataSourceImpl implements WriteProfileIntroDataSource {
  @override
  Future<BaseResponse> generateProfileIntroduction(
      ProfileIntroductionModel model) async {
    try {
      final response =
          await MyHttp.rl().generateProfileIntroduction(model.toJson());

      return response;
    } on DioException catch (e){
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getAutoGenerateHistory() async {
    try {
      final response = await MyHttp.rl().getAutoGenerateHistory();

      return response;
    } on DioException {
      rethrow;
    }
  }
}
