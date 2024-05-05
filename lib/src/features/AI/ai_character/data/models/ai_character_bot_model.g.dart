// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_character_bot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AICharacterBotModelImpl _$$AICharacterBotModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AICharacterBotModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      summary: json['summary'] as String?,
      type: (json['type'] as num?)?.toInt(),
      definition: json['definition'] == null
          ? null
          : Definition.fromJson(json['definition'] as Map<String, dynamic>),
      url: json['url'] as String?,
      avatar: json['avatar'] as String?,
      inspiring: (json['inspiring'] as num?)?.toInt(),
      smart: (json['smart'] as num?)?.toInt(),
      friendly: (json['friendly'] as num?)?.toInt(),
      supportive: (json['supportive'] as num?)?.toInt(),
      helpful: (json['helpful'] as num?)?.toInt(),
      humorous: (json['humorous'] as num?)?.toInt(),
      passive: (json['passive'] as num?)?.toInt(),
      aggressive: (json['aggressive'] as num?)?.toInt(),
      violent: (json['violent'] as num?)?.toInt(),
      formal: (json['formal'] as num?)?.toInt(),
      spiritual: (json['spiritual'] as num?)?.toInt(),
      chatty: (json['chatty'] as num?)?.toInt(),
      energetic: (json['energetic'] as num?)?.toInt(),
      sexy: (json['sexy'] as num?)?.toInt(),
      flirty: (json['flirty'] as num?)?.toInt(),
      updatedOn: json['updated_on'] as String?,
      updatedTs: json['updated_ts'] as String?,
      createdTs: json['created_ts'] as String?,
      noOfConversation: (json['noOfConversation'] as num?)?.toInt() ?? 0,
      noOfMessage: (json['noOfMessage'] as num?)?.toInt() ?? 0,
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
      'noOfConversation': instance.noOfConversation,
      'noOfMessage': instance.noOfMessage,
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
