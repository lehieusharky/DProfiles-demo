// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_ai_character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyAICharacterModelImpl _$$PropertyAICharacterModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyAICharacterModelImpl(
      sessionId: (json['session_id'] as num?)?.toInt() ?? 0,
      summary: json['summary'] as String?,
      name: json['name'] as String?,
      avatar: json['avatar'] as String? ?? "",
      inspiring: (json['inspiring'] as num?)?.toInt() ?? 2,
      smart: (json['smart'] as num?)?.toInt() ?? 0,
      friendly: (json['friendly'] as num?)?.toInt() ?? 0,
      supportive: (json['supportive'] as num?)?.toInt() ?? 0,
      helpful: (json['helpful'] as num?)?.toInt() ?? 4,
      humorous: (json['humorous'] as num?)?.toInt() ?? 0,
      passive: (json['passive'] as num?)?.toInt() ?? 1,
      aggressive: (json['aggressive'] as num?)?.toInt() ?? 0,
      violent: (json['violent'] as num?)?.toInt() ?? 1,
      formal: (json['formal'] as num?)?.toInt() ?? 0,
      spiritual: (json['spiritual'] as num?)?.toInt() ?? 0,
      chatty: (json['chatty'] as num?)?.toInt() ?? 0,
      energetic: (json['energetic'] as num?)?.toInt() ?? 0,
      sexy: (json['sexy'] as num?)?.toInt() ?? 3,
      flirty: (json['flirty'] as num?)?.toInt() ?? 0,
      educations: (json['educations'] as List<dynamic>?)
              ?.map((e) => EducationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      experiences: (json['experiences'] as List<dynamic>?)
              ?.map((e) => ExperienceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PropertyAICharacterModelImplToJson(
        _$PropertyAICharacterModelImpl instance) =>
    <String, dynamic>{
      'session_id': instance.sessionId,
      'summary': instance.summary,
      'name': instance.name,
      'avatar': instance.avatar,
      'inspiring': instance.inspiring,
      'smart': instance.smart,
      'friendly': instance.friendly,
      'supportive': instance.supportive,
      'helpful': instance.helpful,
      'humorous': instance.humorous,
      'passive': instance.passive,
      'aggressive': instance.aggressive,
      'violent': instance.violent,
      'formal': instance.formal,
      'spiritual': instance.spiritual,
      'chatty': instance.chatty,
      'energetic': instance.energetic,
      'sexy': instance.sexy,
      'flirty': instance.flirty,
      'educations': instance.educations,
      'experiences': instance.experiences,
    };
