import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/auth/data/models/auth_error_response.dart';
import 'package:demo_dprofiles/src/features/post/domain/repositoties/post_repository.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/error_response.dart';
import 'package:injectable/injectable.dart';

abstract class PostUseCase {
  Future<Either<String, BaseResponse>> getUserPosts();

  Future<Either<List<String>, BaseResponse>> post({
    required int userID,
    int? adminID,
    required String content,
    List<String>? imageUrl,
    List<String>? videoUrl,
  });
}

@Injectable(as: PostUseCase)
class PostUseCaseImpl implements PostUseCase {
  final PostRepository _postRepository;

  PostUseCaseImpl(this._postRepository);

  @override
  Future<Either<String, BaseResponse>> getUserPosts() async {
    final result = await _postRepository.getUserPosts();

    return result.fold(
      (l) => Left((l.response as RegularErrorResponse).message!),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<List<String>, BaseResponse>> post(
      {required int userID,
      int? adminID,
      required String content,
      List<String>? imageUrl,
      List<String>? videoUrl}) async {
    final result = await _postRepository.post(
      userID: userID,
      content: content,
      adminID: adminID,
      imageUrl: imageUrl,
      videoUrl: videoUrl,
    );

    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }
}
