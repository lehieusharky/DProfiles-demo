// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_skill_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PublicSkillModelImpl _$$PublicSkillModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PublicSkillModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      skillId: (json['skillId'] as num?)?.toInt(),
      level: (json['level'] as num?)?.toInt(),
      updatedOn: json['updated_on'] as String?,
      order: (json['order'] as num?)?.toInt(),
      updatedTs: json['updated_ts'] as String?,
      createdTs: json['created_ts'] as String?,
      skill: json['skill'] == null
          ? null
          : Skill.fromJson(json['skill'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PublicSkillModelImplToJson(
        _$PublicSkillModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'skillId': instance.skillId,
      'level': instance.level,
      'updated_on': instance.updatedOn,
      'order': instance.order,
      'updated_ts': instance.updatedTs,
      'created_ts': instance.createdTs,
      'skill': instance.skill,
    };

_$SkillImpl _$$SkillImplFromJson(Map<String, dynamic> json) => _$SkillImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      language: (json['language'] as num?)?.toInt(),
      order: (json['order'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SkillImplToJson(_$SkillImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'language': instance.language,
      'order': instance.order,
    };
