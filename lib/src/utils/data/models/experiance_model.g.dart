// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experiance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExperienceModelImpl _$$ExperienceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ExperienceModelImpl(
      id: json['id'] as int?,
      userId: json['userId'] as int?,
      jobTitle: json['job_title'] as String?,
      companyName: json['company_name'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      updatedOn: json['updated_on'] as String?,
      updatedTs: json['updated_ts'] as String?,
      createdTs: json['created_ts'] as String?,
      description: json['description'] as String?,
      order: json['order'] as int?,
      isCurrent: json['is_current'] as int?,
    );

Map<String, dynamic> _$$ExperienceModelImplToJson(
        _$ExperienceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'job_title': instance.jobTitle,
      'company_name': instance.companyName,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'updated_on': instance.updatedOn,
      'updated_ts': instance.updatedTs,
      'created_ts': instance.createdTs,
      'description': instance.description,
      'order': instance.order,
      'is_current': instance.isCurrent,
    };
