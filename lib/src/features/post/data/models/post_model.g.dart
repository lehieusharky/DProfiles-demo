// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostModelImpl _$$PostModelImplFromJson(Map<String, dynamic> json) =>
    _$PostModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      adminId: (json['admin_id'] as num?)?.toInt(),
      content: json['content'] as String?,
      imageUrl: (json['image_url'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      videoUrl: (json['video_url'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      updatedOn: json['updated_on'] as String?,
      updatedTs: json['updated_ts'] as String?,
      createdTs: json['created_ts'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      noOfLike: (json['noOfLike'] as num?)?.toInt() ?? 0,
      noOfShare: (json['noOfShare'] as num?)?.toInt() ?? 0,
      noOfComment: (json['noOfComment'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PostModelImplToJson(_$PostModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'admin_id': instance.adminId,
      'content': instance.content,
      'image_url': instance.imageUrl,
      'video_url': instance.videoUrl,
      'updated_on': instance.updatedOn,
      'updated_ts': instance.updatedTs,
      'created_ts': instance.createdTs,
      'user': instance.user,
      'noOfLike': instance.noOfLike,
      'noOfShare': instance.noOfShare,
      'noOfComment': instance.noOfComment,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      email: json['email'] as String?,
      jobTitle: json['jobTitle'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      birthDay: json['birth_day'] as String?,
      address: json['address'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'jobTitle': instance.jobTitle,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'birth_day': instance.birthDay,
      'address': instance.address,
      'avatar': instance.avatar,
    };
