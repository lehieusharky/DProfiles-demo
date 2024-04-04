import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_introduction_model.freezed.dart';

part 'profile_introduction_model.g.dart';

@freezed
class ProfileIntroductionModel with _$ProfileIntroductionModel {
  const factory ProfileIntroductionModel({
   @JsonKey(name: 'max_token') @Default(0) int? maxToken,
    String? summary,
    String? style,
    @JsonKey(name: 'gpt_model') @Default(3) int? gptModel,
    @Default('en') String? language,
  }) = _ProfileIntroductionModel;

  factory ProfileIntroductionModel.fromJson(Map<String, Object?> json) =>
      _$ProfileIntroductionModelFromJson(json);
}
