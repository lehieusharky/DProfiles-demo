// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_character_bot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateCharacterBotModelImpl _$$CreateCharacterBotModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateCharacterBotModelImpl(
      characterDefinition: json['character_definition'] == null
          ? null
          : CharacterDefinition.fromJson(
              json['character_definition'] as Map<String, dynamic>),
      chatBotId: json['chat_bot_id'] as int? ?? 0,
    );

Map<String, dynamic> _$$CreateCharacterBotModelImplToJson(
        _$CreateCharacterBotModelImpl instance) =>
    <String, dynamic>{
      'character_definition': instance.characterDefinition,
      'chat_bot_id': instance.chatBotId,
    };

_$CharacterDefinitionImpl _$$CharacterDefinitionImplFromJson(
        Map<String, dynamic> json) =>
    _$CharacterDefinitionImpl(
      name: json['name'] as String?,
      shortDescription: json['short_description'] as String? ?? "",
      longDescription: json['long_description'] as String? ?? "",
      greeting: json['greeting'] as String? ?? "",
    );

Map<String, dynamic> _$$CharacterDefinitionImplToJson(
        _$CharacterDefinitionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'short_description': instance.shortDescription,
      'long_description': instance.longDescription,
      'greeting': instance.greeting,
    };
