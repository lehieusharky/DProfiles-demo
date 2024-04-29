import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class PostDataSource {
  Future<BaseResponse> getUserPosts();

  Future<BaseResponse> post({
    required int userID,
    int? adminID,
    required String content,
    List<String>? imageUrl,
    List<String>? videoUrl,
  });
}
