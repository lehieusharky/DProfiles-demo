import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/setting_failure.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class SettingRepository {
  Future<Either<SettingFailure, void>> setInitialSettingInfo();

  Future<Either<SettingFailure, BaseResponse>> deleteUser();
}
