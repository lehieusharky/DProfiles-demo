// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_introduction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileIntroductionModelImpl _$$ProfileIntroductionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileIntroductionModelImpl(
      maxToken: json['max_token'] as int? ?? 0,
      summary: json['summary'] as String?,
      style: json['style'] as String?,
      gptModel: json['gpt_model'] as int? ?? 3,
      language: json['language'] as String? ?? 'en',
    );

Map<String, dynamic> _$$ProfileIntroductionModelImplToJson(
        _$ProfileIntroductionModelImpl instance) =>
    <String, dynamic>{
      'max_token': instance.maxToken,
      'summary': instance.summary,
      'style': instance.style,
      'gpt_model': instance.gptModel,
      'language': instance.language,
    };
