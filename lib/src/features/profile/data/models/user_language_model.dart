import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_language_model.freezed.dart';

part 'user_language_model.g.dart';

@freezed
class UserLanguageModel with _$UserLanguageModel {
  const factory UserLanguageModel({
    @JsonKey(name: 'language_id') int? languageId,
    @JsonKey(name: 'user_id') int? userId,
    int? id,
    @JsonKey(name: 'updated_on') String? updatedOn,
    @JsonKey(name: 'updated_ts') String? updatedTs,
    @JsonKey(name: 'created_ts') String? createdTs,
    String? name,
  }) = _UserLanguageModel;

  factory UserLanguageModel.fromJson(Map<String, Object?> json) =>
      _$UserLanguageModelFromJson(json);
}
