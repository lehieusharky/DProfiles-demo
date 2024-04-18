import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class FeedRepository {
  Future<Either<String, BaseResponse>> getNewsFeed(int page, int limit);
  Future<Either<String, BaseResponse>> readAllPosts(int page, int limit);
  Future<Either<String, BaseResponse>> readPost(int id);
  Future<Either<String, BaseResponse>> updatePost(
      int id, Map<String, dynamic> post);
  Future<Either<String, BaseResponse>> deletePost(int id);

  Future<Either<String, BaseResponse>> readAllShares();
  Future<Either<String, BaseResponse>> createShare(Map<String, dynamic> share);
  Future<Either<String, BaseResponse>> readAllSharesByPost(
      int postId, int page, int limit);
  Future<Either<String, BaseResponse>> getSharedPost(int postId);
  Future<Either<String, BaseResponse>> readShare(int id);
  Future<Either<String, BaseResponse>> updateShare(
      int id, Map<String, dynamic> share);
  Future<Either<String, BaseResponse>> deleteShare(int id);

  Future<Either<String, BaseResponse>> readAllComments();
  Future<Either<String, BaseResponse>> createComment(
      Map<String, dynamic> comment);
  Future<Either<String, BaseResponse>> readAllCommentsByPost(
      int postId, int page, int limit);
  Future<Either<String, BaseResponse>> getCommentedPost(int postId);
  Future<Either<String, BaseResponse>> readComment(int id);
  Future<Either<String, BaseResponse>> updateComment(
      int id, Map<String, dynamic> comment);
  Future<Either<String, BaseResponse>> deleteComment(int id);

  Future<Either<String, BaseResponse>> readAllLikes(
      int postId, int page, int limit);
  Future<Either<String, BaseResponse>> createLike(Map<String, dynamic> like);
  Future<Either<String, BaseResponse>> readAllLikesByPost(
      int postId, int page, int limit);
  Future<Either<String, BaseResponse>> getLikedPost(int postId);
  Future<Either<String, BaseResponse>> readLike(int id);
  Future<Either<String, BaseResponse>> deleteLike(int id);
}
