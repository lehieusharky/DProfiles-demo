import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_skill_model.freezed.dart';

part 'public_skill_model.g.dart';

@freezed
class PublicSkillModel with _$PublicSkillModel {
  const factory PublicSkillModel({
    int? id,
    int? userId,
    int? skillId,
    int? level,
    @JsonKey(name: 'updated_on') String? updatedOn,
    int? order,
    @JsonKey(name: 'updated_ts') String? updatedTs,
    @JsonKey(name: 'created_ts') String? createdTs,
    Skill? skill,
  }) = _PublicSkillModel;

  factory PublicSkillModel.fromJson(Map<String, Object?> json) =>
      _$PublicSkillModelFromJson(json);
}

@freezed
class Skill with _$Skill {
  const factory Skill({
    int? id,
    String? name,
    int? language,
    int? order,
  }) = _Skill;

  factory Skill.fromJson(Map<String, Object?> json) => _$SkillFromJson(json);
}
