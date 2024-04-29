import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_language_model.freezed.dart';

part 'public_language_model.g.dart';

@freezed
class PublicLanguageModel with _$PublicLanguageModel {
  const factory PublicLanguageModel({
    int? id,
    int? userId,
    @JsonKey(name: 'language_id') int? languageId,
    int? order,
    @JsonKey(name: 'updated_on') String? updatedOn,
    @JsonKey(name: 'updated_ts') String? updatedTs,
    @JsonKey(name: 'created_ts') String? createdTs,
    Language? language,
  }) = _PublicLanguageModel;

  factory PublicLanguageModel.fromJson(Map<String, Object?> json) =>
      _$PublicLanguageModelFromJson(json);
}

@freezed
class Language with _$Language {
  const factory Language({
    int? id,
    String? name,
    int? language,
    int? order,
  }) = _Language;

  factory Language.fromJson(Map<String, Object?> json) =>
      _$LanguageFromJson(json);
}
