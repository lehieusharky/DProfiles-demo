import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_user_education.freezed.dart';

part 'add_user_education.g.dart';

@freezed
class AddUserEducationModel with _$AddUserEducationModel {
  const factory AddUserEducationModel({
    @JsonKey(name: 'user_id') @Default(0) int? userID,
    @JsonKey(name: 'degree_id') int? degreeID,
    @JsonKey(name: 'school_name') String? schoolName,
    String? major,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
    int? order,
    String? description,
  }) = _AddUserEducationModel;

  factory AddUserEducationModel.fromJson(Map<String, Object?> json) =>
      _$AddUserEducationModelFromJson(json);
}
