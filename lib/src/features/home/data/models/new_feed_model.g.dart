// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewFeedModelImpl _$$NewFeedModelImplFromJson(Map<String, dynamic> json) =>
    _$NewFeedModelImpl(
      postId: json['post_id'] as int? ?? 0,
      postUserId: json['post_user_id'] as int? ?? 0,
      postAdminId: json['post_admin_id'] as int? ?? 0,
      postContent: json['post_content'] as String?,
      postImageUrl: json['post_image_url'] as String?,
      postVideoUrl: json['post_video_url'] as String?,
      postUpdatedOn: json['post_updated_on'] as String?,
      postUpdatedTs: json['post_updated_ts'] as String?,
      postCreatedTs: json['post_created_ts'] as String?,
      noOfLike: json['noOfLike'] as int? ?? 0,
      noOfShare: json['noOfShare'] as int? ?? 0,
      noOfComment: json['noOfComment'] as int? ?? 0,
    );

Map<String, dynamic> _$$NewFeedModelImplToJson(_$NewFeedModelImpl instance) =>
    <String, dynamic>{
      'post_id': instance.postId,
      'post_user_id': instance.postUserId,
      'post_admin_id': instance.postAdminId,
      'post_content': instance.postContent,
      'post_image_url': instance.postImageUrl,
      'post_video_url': instance.postVideoUrl,
      'post_updated_on': instance.postUpdatedOn,
      'post_updated_ts': instance.postUpdatedTs,
      'post_created_ts': instance.postCreatedTs,
      'noOfLike': instance.noOfLike,
      'noOfShare': instance.noOfShare,
      'noOfComment': instance.noOfComment,
    };
