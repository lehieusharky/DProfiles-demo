import 'package:demo_dprofiles/src/utils/data/models/add_user_education_model.dart';
import 'package:demo_dprofiles/src/utils/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/utils/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/utils/data/models/user_info_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'digital_profile_model.freezed.dart';

part 'digital_profile_model.g.dart';

@freezed
class DigitalProfileModel with _$DigitalProfileModel {
  const factory DigitalProfileModel({
    UserInfoModel? userInfo,
    @Default([]) List<EducationModel> educations,
    @Default([]) List<ExperienceModel> experiences,
    @Default([]) List<CertificateModel> certificates,
  }) = _DigitalProfileModel;

  factory DigitalProfileModel.fromJson(Map<String, Object?> json) =>
      _$DigitalProfileModelFromJson(json);
}