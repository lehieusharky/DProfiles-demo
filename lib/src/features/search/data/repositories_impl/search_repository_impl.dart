import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/features/search/data/datasources/search_datasource.dart';
import 'package:demo_dprofiles/src/features/search/domain/repositories/search_repository.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SearchRepository)
class SearchRepositoryImpl implements SearchRepository {
  final SearchDataSource _searchDataSource;

  SearchRepositoryImpl(this._searchDataSource);

  @override
  Future<Either<SearchFailure, BaseResponse>> searchBar(
      String? search, int page, int? limit) async {
    try {
      final response = await _searchDataSource.searchBar(search, page, limit);

      return Right(response);
    } on DioException catch (e) {
      return Left(SearchFailure(
          response: RegularErrorResponse.fromJson(e.response!.data)));
    }
  }
}
