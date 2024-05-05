// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EducationModelImpl _$$EducationModelImplFromJson(Map<String, dynamic> json) =>
    _$EducationModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      userID: (json['user_id'] as num?)?.toInt() ?? 0,
      degreeID: (json['degree_id'] as num?)?.toInt(),
      schoolName: json['school_name'] as String?,
      major: json['major'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      updatedOn: json['updated_on'] as String?,
      updatedTs: json['updated_ts'] as String?,
      createdTs: json['created_ts'] as String?,
      order: (json['order'] as num?)?.toInt(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$EducationModelImplToJson(
        _$EducationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userID,
      'degree_id': instance.degreeID,
      'school_name': instance.schoolName,
      'major': instance.major,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'updated_on': instance.updatedOn,
      'updated_ts': instance.updatedTs,
      'created_ts': instance.createdTs,
      'order': instance.order,
      'description': instance.description,
    };
