// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CertificateModelImpl _$$CertificateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CertificateModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      userId: (json['user_id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String?,
      organization: json['organization'] as String?,
      date: json['date'] as String?,
      link: json['link'] as String? ?? "https://www.example.com",
      credentialId: json['credential_id'] as String?,
      order: (json['order'] as num?)?.toInt(),
      updatedOn: json['updated_on'] as String?,
      updatedTs: json['updated_ts'] as String?,
      createdTs: json['created_ts'] as String?,
    );

Map<String, dynamic> _$$CertificateModelImplToJson(
        _$CertificateModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'organization': instance.organization,
      'date': instance.date,
      'link': instance.link,
      'credential_id': instance.credentialId,
      'order': instance.order,
      'updated_on': instance.updatedOn,
      'updated_ts': instance.updatedTs,
      'created_ts': instance.createdTs,
    };
