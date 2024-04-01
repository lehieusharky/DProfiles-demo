// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digital_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DigitalProfileModelImpl _$$DigitalProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DigitalProfileModelImpl(
      userInfo: json['userInfo'] == null
          ? null
          : UserInfoModel.fromJson(json['userInfo'] as Map<String, dynamic>),
      educations: (json['educations'] as List<dynamic>?)
              ?.map((e) => EducationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      experiences: (json['experiences'] as List<dynamic>?)
              ?.map((e) => ExperienceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      certificates: (json['certificates'] as List<dynamic>?)
              ?.map((e) => CertificateModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DigitalProfileModelImplToJson(
        _$DigitalProfileModelImpl instance) =>
    <String, dynamic>{
      'userInfo': instance.userInfo,
      'educations': instance.educations,
      'experiences': instance.experiences,
      'certificates': instance.certificates,
    };
