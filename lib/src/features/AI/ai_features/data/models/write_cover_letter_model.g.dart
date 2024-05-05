// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write_cover_letter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WriteCoverLetterModelImpl _$$WriteCoverLetterModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteCoverLetterModelImpl(
      maxToken: (json['max_token'] as num?)?.toInt() ?? 10,
      jobTitle: json['job_title'] as String?,
      summary: json['summary'] as String?,
      gptModel: (json['gpt_model'] as num?)?.toInt() ?? 3,
      language: json['language'] as String? ?? 'en',
    );

Map<String, dynamic> _$$WriteCoverLetterModelImplToJson(
        _$WriteCoverLetterModelImpl instance) =>
    <String, dynamic>{
      'max_token': instance.maxToken,
      'job_title': instance.jobTitle,
      'summary': instance.summary,
      'gpt_model': instance.gptModel,
      'language': instance.language,
    };
