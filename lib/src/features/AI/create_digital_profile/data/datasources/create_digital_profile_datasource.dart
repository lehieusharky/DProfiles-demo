import 'package:demo_dprofiles/src/features/AI/create_digital_profile/data/models/add_user_education_model.dart';
import 'package:demo_dprofiles/src/utils/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class CreateDigitalProfileDataSource {
  Future<BaseResponse> addUserEducation(AddUserEducationModel params);

  Future<BaseResponse> updateUserInfo(UserInfoModel params);

  Future<BaseResponse> getUserInfo();
}
