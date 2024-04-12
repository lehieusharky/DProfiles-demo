import 'package:freezed_annotation/freezed_annotation.dart';

part 'write_profile_introduction_model.freezed.dart';

part 'write_profile_introduction_model.g.dart';

@freezed
class WriteProfileIntroductionModel with _$WriteProfileIntroductionModel {
  const factory WriteProfileIntroductionModel({
    @JsonKey(name: 'max_token') @Default(10) int? maxToken,
    String? summary,
    String? style,
    @JsonKey(name: 'gpt_model') @Default(3) int? gptModel,
    @Default('en') String? language,
  }) = _WriteProfileIntroductionModel;

  factory WriteProfileIntroductionModel.fromJson(Map<String, Object?> json) =>
      _$WriteProfileIntroductionModelFromJson(json);
}
