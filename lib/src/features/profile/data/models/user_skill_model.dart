import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_skill_model.freezed.dart';

part 'user_skill_model.g.dart';

@freezed
class UserSkillModel with _$UserSkillModel {
  const factory UserSkillModel({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'skill_id') int? skillId,
    int? level,
    @JsonKey(name: 'updated_on')  String? updatedOn,
    int? order,
    @JsonKey(name: 'updated_ts')  String? updatedTs,
    @JsonKey(name: 'created_ts')   String? createdTs,
    Skill? skill,
  }) = _UserSkillModel;

  factory UserSkillModel.fromJson(Map<String, Object?> json) =>
      _$UserSkillModelFromJson(json);
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
