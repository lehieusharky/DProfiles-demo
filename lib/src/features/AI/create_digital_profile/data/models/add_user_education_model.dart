import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_user_education_model.freezed.dart';

part 'add_user_education_model.g.dart';

@freezed
class EducationModel with _$EducationModel {
  const factory EducationModel({
    @JsonKey(name: 'user_id') @Default(0) int? userID,
    @JsonKey(name: 'degree_id') int? degreeID,
    @JsonKey(name: 'school_name') String? schoolName,
    String? major,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
    int? order,
    String? description,
  }) = _EducationModel;

  factory EducationModel.fromJson(Map<String, Object?> json) =>
      _$EducationModelFromJson(json);
}
