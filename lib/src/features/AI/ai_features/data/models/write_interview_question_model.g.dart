// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write_interview_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WriteInterviewQuestionModelImpl _$$WriteInterviewQuestionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteInterviewQuestionModelImpl(
      jobTitle: json['job_title'] as String?,
      about: json['about'] as String?,
      gptModel: (json['gpt_model'] as num?)?.toInt() ?? 3,
      language: json['language'] as String? ?? 'en',
    );

Map<String, dynamic> _$$WriteInterviewQuestionModelImplToJson(
        _$WriteInterviewQuestionModelImpl instance) =>
    <String, dynamic>{
      'job_title': instance.jobTitle,
      'about': instance.about,
      'gpt_model': instance.gptModel,
      'language': instance.language,
    };
