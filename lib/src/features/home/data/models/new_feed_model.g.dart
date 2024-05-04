// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewFeedModelImpl _$$NewFeedModelImplFromJson(Map<String, dynamic> json) =>
    _$NewFeedModelImpl(
      id: json['id'] as int?,
      userId: json['userId'] as int?,
      adminId: json['adminId'] as int?,
      content: json['content'] as String?,
      imageUrl: (json['imageUrl'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      videoUrl: (json['videoUrl'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      updatedOn: json['updatedOn'] as String?,
      updatedTs: json['updatedTs'] as String?,
      createdTs: json['createdTs'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      noOfLike: json['noOfLike'] as int?,
      noOfShare: json['noOfShare'] as int?,
      noOfComment: json['noOfComment'] as int?,
    );

Map<String, dynamic> _$$NewFeedModelImplToJson(_$NewFeedModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'adminId': instance.adminId,
      'content': instance.content,
      'imageUrl': instance.imageUrl,
      'videoUrl': instance.videoUrl,
      'updatedOn': instance.updatedOn,
      'updatedTs': instance.updatedTs,
      'createdTs': instance.createdTs,
      'user': instance.user,
      'noOfLike': instance.noOfLike,
      'noOfShare': instance.noOfShare,
      'noOfComment': instance.noOfComment,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as int?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      jobTitle: json['jobTitle'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      birthDay: json['birthDay'] as String?,
      address: json['address'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'jobTitle': instance.jobTitle,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'birthDay': instance.birthDay,
      'address': instance.address,
      'avatar': instance.avatar,
    };
