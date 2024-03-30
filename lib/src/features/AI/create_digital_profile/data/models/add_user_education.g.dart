// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_user_education.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddUserEducationModelImpl _$$AddUserEducationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddUserEducationModelImpl(
      userID: json['user_id'] as int? ?? 0,
      degreeID: json['degree_id'] as int?,
      schoolName: json['school_name'] as String?,
      major: json['major'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      order: json['order'] as int?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$AddUserEducationModelImplToJson(
        _$AddUserEducationModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userID,
      'degree_id': instance.degreeID,
      'school_name': instance.schoolName,
      'major': instance.major,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'order': instance.order,
      'description': instance.description,
    };
