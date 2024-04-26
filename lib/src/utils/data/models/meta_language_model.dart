import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_language_model.freezed.dart';
part 'meta_language_model.g.dart';

@freezed
class MetaLanguageModel with _$MetaLanguageModel {
  const factory MetaLanguageModel({
    int? id,
    String? name,
    int? language,
    int? order,
  }) = _MetaLanguageModel;

  factory MetaLanguageModel.fromJson(Map<String, Object?> json) =>
      _$MetaLanguageModelFromJson(json);
}
