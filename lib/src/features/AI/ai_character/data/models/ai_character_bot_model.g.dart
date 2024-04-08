// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_character_bot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AICharacterBotModelImpl _$$AICharacterBotModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AICharacterBotModelImpl(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      name: json['name'] as String?,
      summary: json['summary'] as String?,
      type: json['type'] as int?,
      definition: json['definition'] == null
          ? null
          : Definition.fromJson(json['definition'] as Map<String, dynamic>),
      url: json['url'] as String?,
      avatar: json['avatar'] as String?,
      inspiring: json['inspiring'] as int?,
      smart: json['smart'] as int?,
      friendly: json['friendly'] as int?,
      supportive: json['supportive'] as int?,
      helpful: json['helpful'] as int?,
      humorous: json['humorous'] as int?,
      passive: json['passive'] as int?,
      aggressive: json['aggressive'] as int?,
      violent: json['violent'] as int?,
      formal: json['formal'] as int?,
      spiritual: json['spiritual'] as int?,
      chatty: json['chatty'] as int?,
      energetic: json['energetic'] as int?,
      sexy: json['sexy'] as int?,
      flirty: json['flirty'] as int?,
      updatedOn: json['updated_on'] as String?,
      updatedTs: json['updated_ts'] as String?,
      createdTs: json['created_ts'] as String?,
    );

Map<String, dynamic> _$$AICharacterBotModelImplToJson(
        _$AICharacterBotModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'summary': instance.summary,
      'type': instance.type,
      'definition': instance.definition,
      'url': instance.url,
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
      'updated_on': instance.updatedOn,
      'updated_ts': instance.updatedTs,
      'created_ts': instance.createdTs,
    };

_$DefinitionImpl _$$DefinitionImplFromJson(Map<String, dynamic> json) =>
    _$DefinitionImpl(
      name: json['name'] as String?,
      shortDescription: json['short_description'] as String?,
      longDescription: json['long_description'] as String?,
      greeting: json['greeting'] as String?,
    );

Map<String, dynamic> _$$DefinitionImplToJson(_$DefinitionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'short_description': instance.shortDescription,
      'long_description': instance.longDescription,
      'greeting': instance.greeting,
    };
