// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_language_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserLanguageModelImpl _$$UserLanguageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserLanguageModelImpl(
      languageId: (json['language_id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      updatedOn: json['updated_on'] as String?,
      updatedTs: json['updated_ts'] as String?,
      createdTs: json['created_ts'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$UserLanguageModelImplToJson(
        _$UserLanguageModelImpl instance) =>
    <String, dynamic>{
      'language_id': instance.languageId,
      'user_id': instance.userId,
      'id': instance.id,
      'updated_on': instance.updatedOn,
      'updated_ts': instance.updatedTs,
      'created_ts': instance.createdTs,
      'name': instance.name,
    };
