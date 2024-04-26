import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/data/datasource/public_profile_datasource.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/domain/repositories/public_profile_repository.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PublicProfileRepository)
class PublicProfileRepositoryImpl implements PublicProfileRepository {
  final PublicProfileDataSource _profileDataSource;

  PublicProfileRepositoryImpl(this._profileDataSource);

  @override
  Future<Either<PublicFailure, BaseResponse>> getPublicBasicInfo(
      String userName) async {
    try {
      final response = await _profileDataSource.getPublicBasicInfo(userName);

      return Right(response);
    } on DioException catch (e) {
      return Left(PublicFailure(
          response: RegularErrorResponse.fromJson(e.response!.data)));
    }
  }
}