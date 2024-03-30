import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/data/datasources/create_digital_profile_datasource.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/data/models/add_user_education.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/domain/repositories/create_digital_profile_repository.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/error_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CreateDigitalProfileRepository)
class CreateDigitalProfileRepositoryImpl
    implements CreateDigitalProfileRepository {
  final CreateDigitalProfileDataSource _createDigitalProfileDataSource;

  CreateDigitalProfileRepositoryImpl(this._createDigitalProfileDataSource);

  @override
  Future<Either<CreateDigitalProfileFailure, BaseResponse>> addUserEducation(
      AddUserEducationModel params) async {
    try {
      final model =
          await _createDigitalProfileDataSource.addUserEducation(params);
      return Right(model);
    } on DioException catch (e) {
      return Left(CreateDigitalProfileFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }
}
