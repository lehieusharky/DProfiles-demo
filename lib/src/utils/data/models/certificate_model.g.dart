// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CertificateModelImpl _$$CertificateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CertificateModelImpl(
      userId: json['user_id'] as int? ?? 0,
      name: json['name'] as String?,
      organization: json['organization'] as String?,
      date: json['date'] as String?,
      link: json['link'] as String? ?? "https://www.example.com",
      credentialId: json['credential_id'] as String?,
      order: json['order'] as int?,
    );

Map<String, dynamic> _$$CertificateModelImplToJson(
        _$CertificateModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'name': instance.name,
      'organization': instance.organization,
      'date': instance.date,
      'link': instance.link,
      'credential_id': instance.credentialId,
      'order': instance.order,
    };
