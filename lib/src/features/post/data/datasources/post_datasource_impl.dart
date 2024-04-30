import 'package:demo_dprofiles/src/features/post/data/datasources/post_datasource.dart';
import 'package:demo_dprofiles/src/utils/https/dio/http_util.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PostDataSource)
class PostDataSourceImpl implements PostDataSource {
  @override
  Future<BaseResponse> getUserPosts() async {
    try {
      final response = await MyHttp.rl().getUserPosts();

      return response;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> post({
    required int userID,
    int? adminID,
    required String content,
    List<String>? imageUrl,
    List<String>? videoUrl,
  }) async {
    try {
      final body = {
        "user_id": userID,
        "admin_id": adminID ?? 0,
        "content": content,
        "image_url": imageUrl ?? [],
        "video_url": videoUrl ??
            [
              'https://www.youtube.com/watch?v=1YyAzVmP9xQ&pp=ygUMY3J5cHRvIGludHJv'
            ],
      };
      final response = await MyHttp.rl().postUserPosts(body);

      return response;
    } on DioException catch (e) {
      rethrow;
    }
  }
}
