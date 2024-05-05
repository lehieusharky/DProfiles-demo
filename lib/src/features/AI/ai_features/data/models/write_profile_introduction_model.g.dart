// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write_profile_introduction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WriteProfileIntroductionModelImpl
    _$$WriteProfileIntroductionModelImplFromJson(Map<String, dynamic> json) =>
        _$WriteProfileIntroductionModelImpl(
          maxToken: (json['max_token'] as num?)?.toInt() ?? 10,
          summary: json['summary'] as String?,
          style: json['style'] as String?,
          gptModel: (json['gpt_model'] as num?)?.toInt() ?? 3,
          language: json['language'] as String? ?? 'en',
        );

Map<String, dynamic> _$$WriteProfileIntroductionModelImplToJson(
        _$WriteProfileIntroductionModelImpl instance) =>
    <String, dynamic>{
      'max_token': instance.maxToken,
      'summary': instance.summary,
      'style': instance.style,
      'gpt_model': instance.gptModel,
      'language': instance.language,
    };
