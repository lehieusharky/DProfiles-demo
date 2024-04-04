import 'package:demo_dprofiles/src/features/AI/write_profile_introduction/data/models/profile_introduction_model.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class WriteProfileIntroDataSource {
  Future<BaseResponse> generateProfileIntroduction(
      ProfileIntroductionModel model);

  Future<BaseResponse> getAutoGenerateHistory();
}
