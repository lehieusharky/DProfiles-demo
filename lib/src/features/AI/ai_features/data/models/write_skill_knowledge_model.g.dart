// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write_skill_knowledge_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WriteSkillKnowledgeModelImpl _$$WriteSkillKnowledgeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteSkillKnowledgeModelImpl(
      jobTitle: json['job_title'] as String?,
      gptModel: json['gpt_model'] as int? ?? 3,
      language: json['language'] as String? ?? 'en',
    );

Map<String, dynamic> _$$WriteSkillKnowledgeModelImplToJson(
        _$WriteSkillKnowledgeModelImpl instance) =>
    <String, dynamic>{
      'job_title': instance.jobTitle,
      'gpt_model': instance.gptModel,
      'language': instance.language,
    };
