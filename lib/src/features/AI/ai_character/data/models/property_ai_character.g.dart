// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_ai_character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyAICharacterModelImpl _$$PropertyAICharacterModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyAICharacterModelImpl(
      sessionId: json['session_id'] as int? ?? 0,
      summary: json['summary'] as String?,
      name: json['name'] as String?,
      avatar: json['avatar'] as String? ?? "",
      inspiring: json['inspiring'] as int? ?? 2,
      smart: json['smart'] as int? ?? 0,
      friendly: json['friendly'] as int? ?? 0,
      supportive: json['supportive'] as int? ?? 0,
      helpful: json['helpful'] as int? ?? 4,
      humorous: json['humorous'] as int? ?? 0,
      passive: json['passive'] as int? ?? 1,
      aggressive: json['aggressive'] as int? ?? 0,
      violent: json['violent'] as int? ?? 1,
      formal: json['formal'] as int? ?? 0,
      spiritual: json['spiritual'] as int? ?? 0,
      chatty: json['chatty'] as int? ?? 0,
      energetic: json['energetic'] as int? ?? 0,
      sexy: json['sexy'] as int? ?? 3,
      flirty: json['flirty'] as int? ?? 0,
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
