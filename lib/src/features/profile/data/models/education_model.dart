import 'package:freezed_annotation/freezed_annotation.dart';

import 'details_user.dart';

part 'education_model.freezed.dart';

part 'education_model.g.dart';

@freezed
class EducationModel with _$EducationModel implements DetailOfUser {
  const factory EducationModel({
    @Default(0) int? id,
    @JsonKey(name: 'user_id') @Default(0) int? userID,
    @JsonKey(name: 'degree_id') int? degreeID,
    @JsonKey(name: 'school_name') String? schoolName,
    String? major,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
    @JsonKey(name: 'updated_on') String? updatedOn,
    @JsonKey(name: 'updated_ts') String? updatedTs,
    @JsonKey(name: 'created_ts') String? createdTs,
    int? order,
    String? description,
  }) = _EducationModel;

  factory EducationModel.fromJson(Map<String, Object?> json) =>
      _$EducationModelFromJson(json);
}
