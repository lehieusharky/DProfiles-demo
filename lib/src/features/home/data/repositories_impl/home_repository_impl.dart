import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/features/home/data/datasources/home_datasources.dart';
import 'package:demo_dprofiles/src/features/home/domain/repositories/home_repository.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final HomeDataSource _homeDataSource;

  HomeRepositoryImpl(this._homeDataSource);

  @override
  Future<Either<HomeFailure, BaseResponse>> getNewsFeed(
      int page, int limit) async {
    try {
      final res = await _homeDataSource.getNewsFeed(page, limit);

      return Right(res);
    } on DioException catch (e) {
      return Left(HomeFailure(
          response: RegularErrorResponse.fromJson(e.response!.data)));
    }
  }
}
