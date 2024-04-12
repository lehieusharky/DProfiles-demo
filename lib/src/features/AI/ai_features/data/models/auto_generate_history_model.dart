import 'package:freezed_annotation/freezed_annotation.dart';

part 'auto_generate_history_model.freezed.dart';

part 'auto_generate_history_model.g.dart';

@freezed
class AutoGenerateHistoryModel with _$AutoGenerateHistoryModel {
  const factory AutoGenerateHistoryModel({
    int? id,
    int? userId,
    Prompt? prompt,
    String? historyType,
    @Default('en') String? language,
    @Default(3) int? gptType,
    String? historyDate,
    String? result,
    @JsonKey(name: 'updated_on') String? updatedOn,
    @JsonKey(name: 'updated_ts') String? updatedTs,
    @JsonKey(name: 'created_ts') String? createdTs,
  }) = _AutoGenerateHistoryModel;

  factory AutoGenerateHistoryModel.fromJson(Map<String, Object?> json) =>
      _$AutoGenerateHistoryModelFromJson(json);
}

@freezed
class Prompt with _$Prompt {
  const factory Prompt({
    String? summary,
    String? style,
    @JsonKey(name: 'job_title') String? jobTitle,
    String? about,
    @JsonKey(name: 'max_token') int? maxToken,
  }) = _Prompt;

  factory Prompt.fromJson(Map<String, Object?> json) => _$PromptFromJson(json);
}
