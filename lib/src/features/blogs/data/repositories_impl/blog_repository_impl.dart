import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/features/blogs/data/datasources/blog_datasource.dart';
import 'package:demo_dprofiles/src/features/blogs/data/models/blog_model.dart';
import 'package:demo_dprofiles/src/features/blogs/domain/repositories/blog_repository.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BlogRepository)
class BlogRepositoryImpl implements BlogRepository {
  final BlogDataSource _blogDataSource;

  BlogRepositoryImpl(this._blogDataSource);

  @override
  Future<Either<BlogFailure, List<BlogModel>>> getBlogs(int page) async {
    try {
      final response = await _blogDataSource.getBlogs(page);
      return Right(response);
    } on DioException catch (e) {
      return Left(BlogFailure(
          response: RegularErrorResponse.fromJson(e.response!.data)));
    }
  }
}
