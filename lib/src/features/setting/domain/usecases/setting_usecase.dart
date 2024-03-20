import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/setting/domain/repositories/setting_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

SettingUseCase get settingUseCase => injector.get<SettingUseCase>();

abstract class SettingUseCase {
  Future<Either<String, void>> setInitialSettingInfo(BuildContext context);
}

@Injectable(as: SettingUseCase)
class SettingUseCaseImpl implements SettingUseCase {
  final SettingRepository _settingRepository;

  SettingUseCaseImpl(this._settingRepository);

  @override
  Future<Either<String, void>> setInitialSettingInfo(
      BuildContext context) async {
    final result = await _settingRepository.setInitialSettingInfo();

    return result.fold(
      (l) => Left(l.msgTranslation(context)),
      (r) => Right(r),
    );
  }
}
