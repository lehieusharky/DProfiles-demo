// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_language_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetaLanguageModelImpl _$$MetaLanguageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MetaLanguageModelImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      language: json['language'] as int?,
      order: json['order'] as int?,
    );

Map<String, dynamic> _$$MetaLanguageModelImplToJson(
        _$MetaLanguageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'language': instance.language,
      'order': instance.order,
    };
