import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/data/models/add_user_education.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/domain/repositories/create_digital_profile_repository.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/error_response.dart';

import 'package:injectable/injectable.dart';

CreateDigitalProfileUseCase get createDigitalProfileUseCase =>
    injector.get<CreateDigitalProfileUseCase>();

abstract class CreateDigitalProfileUseCase {
  Future<Either<List<String>, BaseResponse>> addUserEducation(
      AddUserEducationModel params);
}

@Injectable(as: CreateDigitalProfileUseCase)
class CreateDigitalProfileUseCaseImpl implements CreateDigitalProfileUseCase {
  final CreateDigitalProfileRepository _createDigitalProfileRepository;

  CreateDigitalProfileUseCaseImpl(this._createDigitalProfileRepository);

  @override
  Future<Either<List<String>, BaseResponse>> addUserEducation(
      AddUserEducationModel params) async {
    final result =
        await _createDigitalProfileRepository.addUserEducation(params);
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }
}
