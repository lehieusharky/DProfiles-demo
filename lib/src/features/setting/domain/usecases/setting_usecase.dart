import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/setting/domain/repositories/setting_repository.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:injectable/injectable.dart';

abstract class SettingUseCase {
  Future<Either<String, void>> setInitialSettingInfo();

  Future<Either<String, BaseResponse>> deleteUser();
}

@Injectable(as: SettingUseCase)
class SettingUseCaseImpl implements SettingUseCase {
  final SettingRepository _settingRepository;

  SettingUseCaseImpl(this._settingRepository);

  @override
  Future<Either<String, void>> setInitialSettingInfo() async {
    final result = await _settingRepository.setInitialSettingInfo();

    return result.fold(
      (l) => const Left('error'),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<String, BaseResponse>> deleteUser() async {
    final result = await _settingRepository.deleteUser();
    return result.fold(
      (l) => const Left('error'),
      (r) => Right(r),
    );
  }
}
