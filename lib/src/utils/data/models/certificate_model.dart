import 'package:freezed_annotation/freezed_annotation.dart';

part 'certificate_model.freezed.dart';

part 'certificate_model.g.dart';

@freezed
class CertificateModel with _$CertificateModel {
  const factory CertificateModel({
    @Default(0) int? id,
    @JsonKey(name: 'user_id') @Default(0) int? userId,
    String? name,
    String? organization,
    String? date,
    @Default("https://www.example.com") String? link,
    @JsonKey(name: 'credential_id') String? credentialId,
    int? order,
    @JsonKey(name: 'updated_on') String? updatedOn,
    @JsonKey(name: 'updated_ts') String? updatedTs,
    @JsonKey(name: 'created_ts') String? createdTs,
  }) = _CertificateModel;

  factory CertificateModel.fromJson(Map<String, Object?> json) =>
      _$CertificateModelFromJson(json);
}
