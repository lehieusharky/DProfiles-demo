import 'package:freezed_annotation/freezed_annotation.dart';

part 'write_cover_letter_model.freezed.dart';

part 'write_cover_letter_model.g.dart';

@freezed
class WriteCoverLetterModel with _$WriteCoverLetterModel {
  const factory WriteCoverLetterModel({
    @JsonKey(name: 'max_token') @Default(10) int? maxToken,
    @JsonKey(name: 'job_title') String? jobTitle,
    String? summary,
    @JsonKey(name: 'gpt_model') @Default(3) int? gptModel,
    @Default('en') String? language,
  }) = _WriteCoverLetterModel;

  factory WriteCoverLetterModel.fromJson(Map<String, Object?> json) =>
      _$WriteCoverLetterModelFromJson(json);
}
