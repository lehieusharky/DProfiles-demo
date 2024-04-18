import 'package:demo_dprofiles/src/features/feed/data/datasources/feed_datasource.dart';
import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FeedDataSource)
class FeedDataSourceIml implements FeedDataSource {
  @override
  Future<BaseResponse> getNewsFeed(int page, int limit) async {
    try {
      final baseResponse = await MyHttp.rl().getNewsFeed(page, limit);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> readAllPosts(int page, int limit) async {
    try {
      final baseResponse = await MyHttp.rl().readAllPosts(page, limit);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> readPost(int id) async {
    try {
      final baseResponse = await MyHttp.rl().readPost(id);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> updatePost(int id, Map<String, dynamic> post) async {
    try {
      final baseResponse = await MyHttp.rl().updatePost(id, post);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> deletePost(int id) async {
    try {
      final baseResponse = await MyHttp.rl().deletePost(id);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> readAllShares() async {
    try {
      final baseResponse = await MyHttp.rl().readAllShares();
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> createShare(Map<String, dynamic> share) async {
    try {
      final baseResponse = await MyHttp.rl().createShare(share);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> readAllSharesByPost(
      int postId, int page, int limit) async {
    try {
      final baseResponse =
          await MyHttp.rl().readAllSharesByPost(postId, page, limit);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getSharedPost(int postId) async {
    try {
      final baseResponse = await MyHttp.rl().getSharedPost(postId);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> readShare(int id) async {
    try {
      final baseResponse = await MyHttp.rl().readShare(id);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> updateShare(int id, Map<String, dynamic> share) async {
    try {
      final baseResponse = await MyHttp.rl().updateShare(id, share);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> deleteShare(int id) async {
    try {
      final baseResponse = await MyHttp.rl().deleteShare(id);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> readAllComments() async {
    try {
      final baseResponse = await MyHttp.rl().readAllComments();
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> createComment(Map<String, dynamic> comment) async {
    try {
      final baseResponse = await MyHttp.rl().createComment(comment);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> readAllCommentsByPost(
      int postId, int page, int limit) async {
    try {
      final baseResponse =
          await MyHttp.rl().readAllCommentsByPost(postId, page, limit);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getCommentedPost(int postId) async {
    try {
      final baseResponse = await MyHttp.rl().getCommentedPost(postId);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> readComment(int id) async {
    try {
      final baseResponse = await MyHttp.rl().readComment(id);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> updateComment(
      int id, Map<String, dynamic> comment) async {
    try {
      final baseResponse = await MyHttp.rl().updateComment(id, comment);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> deleteComment(int id) async {
    try {
      final baseResponse = await MyHttp.rl().deleteComment(id);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> readAllLikes(int postId, int page, int limit) async {
    try {
      final baseResponse = await MyHttp.rl().readAllLikes(postId, page, limit);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> createLike(Map<String, dynamic> like) async {
    try {
      final baseResponse = await MyHttp.rl().createLike(like);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> readAllLikesByPost(
      int postId, int page, int limit) async {
    try {
      final baseResponse =
          await MyHttp.rl().readAllLikesByPost(postId, page, limit);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> getLikedPost(int postId) async {
    try {
      final baseResponse = await MyHttp.rl().getLikedPost(postId);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> readLike(int id) async {
    try {
      final baseResponse = await MyHttp.rl().readLike(id);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> deleteLike(int id) async {
    try {
      final baseResponse = await MyHttp.rl().deleteLike(id);
      return baseResponse;
    } on DioException {
      rethrow;
    }
  }
}
