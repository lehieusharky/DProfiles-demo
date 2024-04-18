part of 'feed_comment_bloc.dart';

@freezed
class FeedCommentState with _$FeedCommentState {
  const factory FeedCommentState.initial() = FeedCommentInitial;
  const factory FeedCommentState.loading() = FeedCommentLoading;
  const factory FeedCommentState.loaded(List<FeedCommentModel> comments) =
      FeedCommentLoaded;
  const factory FeedCommentState.failed(String err) = FeedCommentFailed;
}
