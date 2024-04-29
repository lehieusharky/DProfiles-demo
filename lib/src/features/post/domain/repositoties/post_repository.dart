import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/utils/domain/failures/app_failure.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';

abstract class PostRepository {
  Future<Either<PostFailure, BaseResponse>> getUserPosts();

  Future<Either<PostFailure, BaseResponse>> post({
    required int userID,
    int? adminID,
    required String content,
    List<String>? imageUrl,
    List<String>? videoUrl,
  });
}

class PostFailure extends AppFailure {
  const PostFailure({super.msgCode, super.response});
}
