// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_language_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PublicLanguageModelImpl _$$PublicLanguageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PublicLanguageModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      languageId: (json['language_id'] as num?)?.toInt(),
      order: (json['order'] as num?)?.toInt(),
      updatedOn: json['updated_on'] as String?,
      updatedTs: json['updated_ts'] as String?,
      createdTs: json['created_ts'] as String?,
      language: json['language'] == null
          ? null
          : Language.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PublicLanguageModelImplToJson(
        _$PublicLanguageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'language_id': instance.languageId,
      'order': instance.order,
      'updated_on': instance.updatedOn,
      'updated_ts': instance.updatedTs,
      'created_ts': instance.createdTs,
      'language': instance.language,
    };

_$LanguageImpl _$$LanguageImplFromJson(Map<String, dynamic> json) =>
    _$LanguageImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      language: (json['language'] as num?)?.toInt(),
      order: (json['order'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LanguageImplToJson(_$LanguageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'language': instance.language,
      'order': instance.order,
    };
