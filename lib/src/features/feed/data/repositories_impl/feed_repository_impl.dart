import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/feed/data/datasources/feed_datasource.dart';
import 'package:demo_dprofiles/src/features/feed/domain/repositories/feed_repository.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FeedRepository)
class FeedRepositoryImpl implements FeedRepository {
  final FeedDataSource _dataSource;

  FeedRepositoryImpl(this._dataSource);

  @override
  Future<Either<String, BaseResponse>> createComment(
      Map<String, dynamic> comment) async {
    try {
      final res = await _dataSource.createComment(comment);
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> createLike(
      Map<String, dynamic> like) async {
    try {
      final res = await _dataSource.createLike(like);
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> createShare(
      Map<String, dynamic> share) async {
    try {
      final res = await _dataSource.createShare(share);
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> deleteComment(int id) async {
    try {
      final res = await _dataSource.deleteComment(id);
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> deleteLike(int id) async {
    try {
      final res = await _dataSource.deleteLike(id);
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> deleteShare(int id) async {
    try {
      final res = await _dataSource.deleteShare(id);
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> getCommentedPost(int postId) async {
    try {
      final res = await _dataSource.getCommentedPost(postId);
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> getLikedPost(int postId) async {
    try {
      final res = await _dataSource.getLikedPost(postId);
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> getNewsFeed(int page, int limit) async {
    try {
      final res = await _dataSource.getNewsFeed(page, limit);
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> getSharedPost(int postId) async {
    try {
      final res = await _dataSource.getSharedPost(postId);
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> readAllComments() async {
    try {
      final res = await _dataSource.readAllComments();
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> readAllCommentsByPost(
      int postId, int page, int limit) async {
    try {
      final res = await _dataSource.readAllCommentsByPost(postId, page, limit);
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> readAllLikes(
      int postId, int page, int limit) async {
    try {
      final res = await _dataSource.readAllLikes(postId, page, limit);
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> readAllLikesByPost(
      int postId, int page, int limit) async {
    try {
      final res = await _dataSource.readAllLikesByPost(postId, page, limit);
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> readAllPosts(int page, int limit) async {
    try {
      final res = await _dataSource.readAllPosts(page, limit);
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> readAllShares() async {
    try {
      final res = await _dataSource.readAllShares();
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> readAllSharesByPost(
      int postId, int page, int limit) async {
    try {
      final res = await _dataSource.readAllSharesByPost(postId, page, limit);
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> readComment(int id) async {
    try {
      final res = await _dataSource.readComment(id);
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> readLike(int id) async {
    try {
      final res = await _dataSource.readLike(id);
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> readPost(int id) async {
    try {
      final res = await _dataSource.readPost(id);
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> readShare(int id) async {
    try {
      final res = await _dataSource.readShare(id);
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> updateComment(
      int id, Map<String, dynamic> comment) async {
    try {
      final res = await _dataSource.updateComment(id, comment);
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> updatePost(
      int id, Map<String, dynamic> post) async {
    try {
      final res = await _dataSource.updatePost(id, post);
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> updateShare(
      int id, Map<String, dynamic> share) async {
    try {
      final res = await _dataSource.updateShare(id, share);
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, BaseResponse>> deletePost(int id) async {
    try {
      final res = await _dataSource.deletePost(id);
      return Right(res);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }
}
