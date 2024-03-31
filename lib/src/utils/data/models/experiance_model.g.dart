// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experiance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExperienceModelImpl _$$ExperienceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ExperienceModelImpl(
      userId: json['userId'] as int?,
      jobTitle: json['job_title'] as String?,
      companyName: json['company_name'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      description: json['description'] as String?,
      order: json['order'] as int?,
      isCurrent: json['is_current'] as int?,
    );

Map<String, dynamic> _$$ExperienceModelImplToJson(
        _$ExperienceModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'job_title': instance.jobTitle,
      'company_name': instance.companyName,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'description': instance.description,
      'order': instance.order,
      'is_current': instance.isCurrent,
    };
