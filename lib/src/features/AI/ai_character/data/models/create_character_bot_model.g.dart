// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_character_bot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateCharacterBotModelImpl _$$CreateCharacterBotModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateCharacterBotModelImpl(
      name: json['name'] as String?,
      shortDescription: json['short_description'] as String?,
      longDescription: json['long_description'] as String?,
      greeting: json['greeting'] as String?,
    );

Map<String, dynamic> _$$CreateCharacterBotModelImplToJson(
        _$CreateCharacterBotModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'short_description': instance.shortDescription,
      'long_description': instance.longDescription,
      'greeting': instance.greeting,
    };
