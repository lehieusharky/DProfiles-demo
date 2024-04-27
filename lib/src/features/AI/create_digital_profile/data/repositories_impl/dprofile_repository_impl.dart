import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/data/datasources/dprofile_datasource.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/domain/repositories/dprofile_repository.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: DProfileRepository)
class DProfileRepositoryImpl implements DProfileRepository {
  final DProfileDataSource _dProfileDataSource;

  DProfileRepositoryImpl(this._dProfileDataSource);

  @override
  Future<Either<DProfileFailure, BaseResponse>>
      getDProfileUpdateHistory() async {
    try {
      final model = await _dProfileDataSource.getDProfileUpdateHistory();
      return Right(model);
    } on DioException catch (e) {
      return Left(DProfileFailure(
          response: RegularErrorResponse.fromJson(e.response!.data)));
    }
  }
}
