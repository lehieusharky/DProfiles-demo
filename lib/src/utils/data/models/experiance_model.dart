import 'package:freezed_annotation/freezed_annotation.dart';

part 'experiance_model.freezed.dart';

part 'experiance_model.g.dart';

@freezed
class ExperienceModel with _$ExperienceModel {
  const factory ExperienceModel({
    int? userId,
    @JsonKey(name: 'job_title') String? jobTitle,
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
    String? description,
    int? order,
    @JsonKey(name: 'is_current') int? isCurrent,
  }) = _ExperienceModel;

  factory ExperienceModel.fromJson(Map<String, Object?> json) =>
      _$ExperienceModelFromJson(json);
}
