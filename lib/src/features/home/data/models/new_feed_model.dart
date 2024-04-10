import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_feed_model.freezed.dart';

part 'new_feed_model.g.dart';

@freezed
class NewFeedModel with _$NewFeedModel {
  const factory NewFeedModel({
    @JsonKey(name: 'post_id') @Default(0) int? postId,
    @JsonKey(name: 'post_user_id') @Default(0) int? postUserId,
    @JsonKey(name: 'post_admin_id') @Default(0) int? postAdminId,
    @JsonKey(name: 'post_content') String? postContent,
    @JsonKey(name: 'post_image_url') String? postImageUrl,
    @JsonKey(name: 'post_video_url') String? postVideoUrl,
    @JsonKey(name: 'post_updated_on') String? postUpdatedOn,
    @JsonKey(name: 'post_updated_ts') String? postUpdatedTs,
    @JsonKey(name: 'post_created_ts') String? postCreatedTs,
    @Default(0) int? noOfLike,
    @Default(0) int? noOfShare,
    @Default(0) int? noOfComment,
  }) = _NewFeedModel;

  factory NewFeedModel.fromJson(Map<String, Object?> json) =>
      _$NewFeedModelFromJson(json);
}
