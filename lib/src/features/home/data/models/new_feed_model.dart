import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_feed_model.freezed.dart';
part 'new_feed_model.g.dart';

@freezed
class NewFeedModel with _$NewFeedModel {
  const factory NewFeedModel({
    @JsonKey(name: 'id') @Default(0) int? postId,
    @JsonKey(name: 'user_id') @Default(0) int? postUserId,
    @JsonKey(name: 'admin_id') @Default(0) int? postAdminId,
    @JsonKey(name: 'content') String? postContent,
    @JsonKey(name: 'image_url') String? postImageUrl,
    @JsonKey(name: 'video_url') String? postVideoUrl,
    @JsonKey(name: 'updated_on') String? postUpdatedOn,
    @JsonKey(name: 'updated_ts') String? postUpdatedTs,
    @JsonKey(name: 'created_ts') String? postCreatedTs,
    @Default(0) int? noOfLike,
    @Default(0) int? noOfShare,
    @Default(0) int? noOfComment,
    @JsonKey(name: 'liked') @Default(false) bool liked,
    @JsonKey(name: 'user') UserInfoModel? user,
  }) = _NewFeedModel;

  factory NewFeedModel.fromJson(Map<String, Object?> json) =>
      _$NewFeedModelFromJson(json);
}
