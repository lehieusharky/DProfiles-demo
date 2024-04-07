import 'package:freezed_annotation/freezed_annotation.dart';

part 'write_skill_knowledge_model.freezed.dart';

part 'write_skill_knowledge_model.g.dart';

@freezed
class WriteSkillKnowledgeModel with _$WriteSkillKnowledgeModel {
  const factory WriteSkillKnowledgeModel({
    @JsonKey(name: 'job_title') String? jobTitle,
    @JsonKey(name: 'gpt_model') @Default(3) int? gptModel,
    @Default('en') String? language,
  }) = _WriteSkillKnowledgeModel;

  factory WriteSkillKnowledgeModel.fromJson(Map<String, Object?> json) =>
      _$WriteSkillKnowledgeModelFromJson(json);
}
