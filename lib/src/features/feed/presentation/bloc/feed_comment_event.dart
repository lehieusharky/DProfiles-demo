part of 'feed_comment_bloc.dart';

@freezed
class FeedCommentEvent with _$FeedCommentEvent {
  const factory FeedCommentEvent.fetch() = FeedCommentFetchEvent;
  const factory FeedCommentEvent.comment({int? parentComment}) =
      FeedCommentCommentEvent;
}
