import 'package:freezed_annotation/freezed_annotation.dart';

import 'details_user.dart';

part 'experiance_model.freezed.dart';

part 'experiance_model.g.dart';

@freezed
class ExperienceModel with _$ExperienceModel implements DetailOfUser {
  const factory ExperienceModel({
    int? id,
    int? userId,
    @JsonKey(name: 'job_title') String? jobTitle,
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
    @JsonKey(name: 'updated_on') String? updatedOn,
    @JsonKey(name: 'updated_ts') String? updatedTs,
    @JsonKey(name: 'created_ts') String? createdTs,
    String? description,
    int? order,
    @JsonKey(name: 'is_current') int? isCurrent,
  }) = _ExperienceModel;

  factory ExperienceModel.fromJson(Map<String, Object?> json) =>
      _$ExperienceModelFromJson(json);
}
