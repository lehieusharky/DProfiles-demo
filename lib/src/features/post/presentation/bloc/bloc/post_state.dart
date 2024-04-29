part of 'post_bloc.dart';

@freezed
class PostState with _$PostState {
  const factory PostState.initial() = _Initial;

  const factory PostState.loading() = PostLoading;

  const factory PostState.error({
    required String title,
    required String mesg,
  }) = PostError;
}
