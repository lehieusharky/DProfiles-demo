// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_generate_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AutoGenerateHistoryModelImpl _$$AutoGenerateHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AutoGenerateHistoryModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      prompt: json['prompt'] == null
          ? null
          : Prompt.fromJson(json['prompt'] as Map<String, dynamic>),
      historyType: json['historyType'] as String?,
      language: json['language'] as String? ?? 'en',
      gptType: (json['gptType'] as num?)?.toInt() ?? 3,
      historyDate: json['historyDate'] as String?,
      result: json['result'] as String?,
      updatedOn: json['updated_on'] as String?,
      updatedTs: json['updated_ts'] as String?,
      createdTs: json['created_ts'] as String?,
    );

Map<String, dynamic> _$$AutoGenerateHistoryModelImplToJson(
        _$AutoGenerateHistoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'prompt': instance.prompt,
      'historyType': instance.historyType,
      'language': instance.language,
      'gptType': instance.gptType,
      'historyDate': instance.historyDate,
      'result': instance.result,
      'updated_on': instance.updatedOn,
      'updated_ts': instance.updatedTs,
      'created_ts': instance.createdTs,
    };

_$PromptImpl _$$PromptImplFromJson(Map<String, dynamic> json) => _$PromptImpl(
      summary: json['summary'] as String?,
      style: json['style'] as String?,
      jobTitle: json['job_title'] as String?,
      about: json['about'] as String?,
      maxToken: (json['max_token'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PromptImplToJson(_$PromptImpl instance) =>
    <String, dynamic>{
      'summary': instance.summary,
      'style': instance.style,
      'job_title': instance.jobTitle,
      'about': instance.about,
      'max_token': instance.maxToken,
    };
