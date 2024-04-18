import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_comment_model.freezed.dart';
part 'feed_comment_model.g.dart';

@freezed
class FeedCommentModel with _$FeedCommentModel {
  factory FeedCommentModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'post_id') required int postId,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'comment_id') required int commentId,
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'video_url') String? videoUrl,
    @JsonKey(name: 'updated_on') required DateTime updatedOn,
    @JsonKey(name: 'updated_ts') required DateTime updatedTs,
    @JsonKey(name: 'created_ts') required DateTime createdTs,
  }) = _FeedCommentModel;

  factory FeedCommentModel.fromJson(Map<String, dynamic> json) =>
      _$FeedCommentModelFromJson(json);
}
