import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_digital_profile_model.freezed.dart';

part 'check_digital_profile_model.g.dart';

@freezed
class CheckDigitalProfileModel with _$CheckDigitalProfileModel {
  const factory CheckDigitalProfileModel({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    Data? data,
    @JsonKey(name: 'updated_on') String? updatedOn,
    @JsonKey(name: 'updated_ts') String? updatedTs,
    @JsonKey(name: 'created_ts') String? createdTs,
  }) = _CheckDigitalProfileModel;

  factory CheckDigitalProfileModel.fromJson(Map<String, Object?> json) =>
      _$CheckDigitalProfileModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: '_to') String? sTo,
    @JsonKey(name: '_name') String? sName,
    @JsonKey(name: '_bod') String? sBod,
    @JsonKey(name: '_nationality') String? sNationality,
    @JsonKey(name: '_idCardNumber') String? sIdCardNumber,
    @JsonKey(name: '_school') String? sSchool,
    @JsonKey(name: '_degree') String? sDegree,
    @JsonKey(name: '_field') String? sField,
    @JsonKey(name: '_extra') String? sExtra,
    @JsonKey(name: '_hidden') bool? bHidden,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}
