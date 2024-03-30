import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/data/models/add_user_education_model.dart';
import 'package:demo_dprofiles/src/utils/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/app_failure.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class CreateDigitalProfileRepository {
  Future<Either<CreateDigitalProfileFailure, BaseResponse>> addUserEducation(
      AddUserEducationModel params);

  Future<Either<CreateDigitalProfileFailure, BaseResponse>> updateUserInfo(
      UserInfoModel params);

  Future<Either<CreateDigitalProfileFailure, BaseResponse>> getUserInfo();
}

class CreateDigitalProfileFailure extends AppFailure {
  const CreateDigitalProfileFailure({super.msgCode, super.response});
}
