import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/AI/write_profile_introduction/data/datasources/write_profile_intro_datasource.dart';
import 'package:demo_dprofiles/src/features/AI/write_profile_introduction/data/models/profile_introduction_model.dart';
import 'package:demo_dprofiles/src/features/AI/write_profile_introduction/domain/repositories/write_profile_intro_repository.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/error_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: WriteProfileIntroRepository)
class WriteProfileIntroRepositoryImpl implements WriteProfileIntroRepository {
  final WriteProfileIntroDataSource _profileIntroDataSource;

  WriteProfileIntroRepositoryImpl(this._profileIntroDataSource);

  @override
  Future<Either<WriteProfileIntroFailure, BaseResponse>>
      generateProfileIntroduction(ProfileIntroductionModel model) async {
    try {
      final response =
          await _profileIntroDataSource.generateProfileIntroduction(model);

      return Right(response);
    } on DioException catch (e) {
      return Left(WriteProfileIntroFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<WriteProfileIntroFailure, BaseResponse>>
      getAutoGenerateHistory() async {
    try {
      final response = await _profileIntroDataSource.getAutoGenerateHistory();

      return Right(response);
    } on DioException catch (e) {
      return Left(WriteProfileIntroFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }
}
