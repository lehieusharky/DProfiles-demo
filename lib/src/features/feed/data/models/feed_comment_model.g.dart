// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedCommentModelImpl _$$FeedCommentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FeedCommentModelImpl(
      id: json['id'] as int,
      postId: json['post_id'] as int,
      userId: json['user_id'] as int,
      commentId: json['comment_id'] as int,
      content: json['content'] as String,
      imageUrl: json['image_url'] as String?,
      videoUrl: json['video_url'] as String?,
      updatedOn: DateTime.parse(json['updated_on'] as String),
      updatedTs: DateTime.parse(json['updated_ts'] as String),
      createdTs: DateTime.parse(json['created_ts'] as String),
      user: json['user'] == null
          ? null
          : UserInfoModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FeedCommentModelImplToJson(
        _$FeedCommentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'post_id': instance.postId,
      'user_id': instance.userId,
      'comment_id': instance.commentId,
      'content': instance.content,
      'image_url': instance.imageUrl,
      'video_url': instance.videoUrl,
      'updated_on': instance.updatedOn.toIso8601String(),
      'updated_ts': instance.updatedTs.toIso8601String(),
      'created_ts': instance.createdTs.toIso8601String(),
      'user': instance.user,
    };
