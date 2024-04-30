part of 'post_bloc.dart';

@freezed
class PostState with _$PostState {
  const factory PostState.initial() = _Initial;

  const factory PostState.loading() = PostLoading;

  const factory PostState.error({
    required String title,
    required String mesg,
  }) = PostError;

  const factory PostState.createPostSuccess(PostModel createdPost) =
      PostCreatePostSuccess;

  const factory PostState.uploadImagesSuccess(List<String> images) =
      PostUploadImagesSuccess;
}
