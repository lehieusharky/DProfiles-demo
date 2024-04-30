import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/features/post/data/datasources/post_datasource.dart';
import 'package:demo_dprofiles/src/features/post/domain/repositoties/post_repository.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/error_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PostRepository)
class PostRespotoryImpl implements PostRepository {
  final PostDataSource _postDataSource;

  PostRespotoryImpl(this._postDataSource);

  @override
  Future<Either<PostFailure, BaseResponse>> getUserPosts() async {
    try {
      final response = await _postDataSource.getUserPosts();

      return Right(response);
    } on DioException catch (e) {
      return Left(PostFailure(
          response: RegularErrorResponse.fromJson(e.response!.data)));
    }
  }

  @override
  Future<Either<PostFailure, BaseResponse>> post(
      {required int userID,
      int? adminID,
      required String content,
      List<String>? imageUrl,
      List<String>? videoUrl}) async {
    try {
      final response = await _postDataSource.post(
        userID: userID,
        content: content,
        adminID: adminID,
        imageUrl: imageUrl,
        videoUrl: videoUrl,
      );

      return Right(response);
    } on DioException catch (e) {
      return Left(PostFailure(
          response: ErrorResponse.fromJson(e.response!.data)));
    }
  }
}
