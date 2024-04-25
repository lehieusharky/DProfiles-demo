// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_bar_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchBarResultModelImpl _$$SearchBarResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchBarResultModelImpl(
      userId: json['userId'] as int?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      username: json['username'] as String?,
      avatar: json['avatar'] as String?,
      jobTitle: json['job_title'] as String?,
    );

Map<String, dynamic> _$$SearchBarResultModelImplToJson(
        _$SearchBarResultModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'username': instance.username,
      'avatar': instance.avatar,
      'job_title': instance.jobTitle,
    };
