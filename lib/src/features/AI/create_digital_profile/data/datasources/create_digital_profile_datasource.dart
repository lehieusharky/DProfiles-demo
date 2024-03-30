import 'package:demo_dprofiles/src/features/AI/create_digital_profile/data/models/add_user_education.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';


abstract class CreateDigitalProfileDataSource {
  Future<BaseResponse> addUserEducation(AddUserEducationModel params);
}
