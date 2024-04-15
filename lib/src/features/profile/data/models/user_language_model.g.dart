// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_language_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserLanguageModelImpl _$$UserLanguageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserLanguageModelImpl(
      languageId: json['language_id'] as int?,
      userId: json['user_id'] as int?,
      id: json['id'] as int?,
      updatedOn: json['updated_on'] as String?,
      updatedTs: json['updated_ts'] as String?,
      createdTs: json['created_ts'] as String?,
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
    };
