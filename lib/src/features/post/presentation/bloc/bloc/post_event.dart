part of 'post_bloc.dart';

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.started() = _Started;

  const factory PostEvent.createPost({
    required int userID,
    int? adminID,
    required String content,
    List<String>? imageUrl,
    List<String>? videoUrl,
  }) = PostCreatePost;

  const factory PostEvent.uploadImages() =
      PostUploadImages;
}
