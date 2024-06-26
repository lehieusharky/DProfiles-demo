import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/setting/data/datasources/setting_datasource.dart';
import 'package:demo_dprofiles/src/features/setting/domain/repositories/setting_repository.dart';
import 'package:demo_dprofiles/src/utils/data/exceptions/app_exception.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/setting_failure.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SettingRepository)
class SettingRepositoryImpl implements SettingRepository {
  final SettingDataSource _settingDataSource;

  SettingRepositoryImpl(this._settingDataSource);

  @override
  Future<Either<SettingFailure, void>> setInitialSettingInfo() async {
    try {
      final result = await _settingDataSource.setInitialSettingInfo();

      return Right(result);
    } on SettingException catch (e) {
      return Left(SettingFailure(msgCode: e.expCode()));
    }
  }
}
