import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class FeedDataSource {
  Future<BaseResponse> getNewsFeed(int page, int limit);
  Future<BaseResponse> readAllPosts(int page, int limit);
  Future<BaseResponse> readPost(int id);
  Future<BaseResponse> updatePost(int id, Map<String, dynamic> post);
  Future<BaseResponse> deletePost(int id);

  Future<BaseResponse> readAllShares();
  Future<BaseResponse> createShare(Map<String, dynamic> share);
  Future<BaseResponse> readAllSharesByPost(int postId, int page, int limit);
  Future<BaseResponse> getSharedPost(int postId);
  Future<BaseResponse> readShare(int id);
  Future<BaseResponse> updateShare(int id, Map<String, dynamic> share);
  Future<BaseResponse> deleteShare(int id);

  Future<BaseResponse> readAllComments();
  Future<BaseResponse> createComment(Map<String, dynamic> comment);
  Future<BaseResponse> readAllCommentsByPost(int postId, int page, int limit);
  Future<BaseResponse> getCommentedPost(int postId);
  Future<BaseResponse> readComment(int id);
  Future<BaseResponse> updateComment(int id, Map<String, dynamic> comment);
  Future<BaseResponse> deleteComment(int id);

  Future<BaseResponse> readAllLikes(int postId, int page, int limit);
  Future<BaseResponse> createLike(Map<String, dynamic> like);
  Future<BaseResponse> readAllLikesByPost(int postId, int page, int limit);
  Future<BaseResponse> getLikedPost(int postId);
  Future<BaseResponse> readLike(int id);
  Future<BaseResponse> deleteLike(int id);
}
