import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/setting_failure.dart';

abstract class SettingRepository {
  Future<Either<SettingFailure, void>> setInitialSettingInfo();
}
