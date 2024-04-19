// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewFeedModelImpl _$$NewFeedModelImplFromJson(Map<String, dynamic> json) =>
    _$NewFeedModelImpl(
      postId: json['id'] as int? ?? 0,
      postUserId: json['user_id'] as int? ?? 0,
      postAdminId: json['admin_id'] as int? ?? 0,
      postContent: json['content'] as String?,
      postImageUrl: json['image_url'] as String?,
      postVideoUrl: json['video_url'] as String?,
      postUpdatedOn: json['updated_on'] as String?,
      postUpdatedTs: json['updated_ts'] as String?,
      postCreatedTs: json['created_ts'] as String?,
      noOfLike: json['noOfLike'] as int? ?? 0,
      noOfShare: json['noOfShare'] as int? ?? 0,
      noOfComment: json['noOfComment'] as int? ?? 0,
      liked: json['liked'] as bool? ?? false,
      user: json['user'] == null
          ? null
          : UserInfoModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewFeedModelImplToJson(_$NewFeedModelImpl instance) =>
    <String, dynamic>{
      'id': instance.postId,
      'user_id': instance.postUserId,
      'admin_id': instance.postAdminId,
      'content': instance.postContent,
      'image_url': instance.postImageUrl,
      'video_url': instance.postVideoUrl,
      'updated_on': instance.postUpdatedOn,
      'updated_ts': instance.postUpdatedTs,
      'created_ts': instance.postCreatedTs,
      'noOfLike': instance.noOfLike,
      'noOfShare': instance.noOfShare,
      'noOfComment': instance.noOfComment,
      'liked': instance.liked,
      'user': instance.user,
    };
