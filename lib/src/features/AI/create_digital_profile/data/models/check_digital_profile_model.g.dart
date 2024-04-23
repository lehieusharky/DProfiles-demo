// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_digital_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckDigitalProfileModelImpl _$$CheckDigitalProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckDigitalProfileModelImpl(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      updatedOn: json['updated_on'] as String?,
      updatedTs: json['updated_ts'] as String?,
      createdTs: json['created_ts'] as String?,
    );

Map<String, dynamic> _$$CheckDigitalProfileModelImplToJson(
        _$CheckDigitalProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'data': instance.data,
      'updated_on': instance.updatedOn,
      'updated_ts': instance.updatedTs,
      'created_ts': instance.createdTs,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      sTo: json['_to'] as String?,
      sName: json['_name'] as String?,
      sBod: json['_bod'] as String?,
      sNationality: json['_nationality'] as String?,
      sIdCardNumber: json['_idCardNumber'] as String?,
      sSchool: json['_school'] as String?,
      sDegree: json['_degree'] as String?,
      sField: json['_field'] as String?,
      sExtra: json['_extra'] as String?,
      bHidden: json['_hidden'] as bool?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      '_to': instance.sTo,
      '_name': instance.sName,
      '_bod': instance.sBod,
      '_nationality': instance.sNationality,
      '_idCardNumber': instance.sIdCardNumber,
      '_school': instance.sSchool,
      '_degree': instance.sDegree,
      '_field': instance.sField,
      '_extra': instance.sExtra,
      '_hidden': instance.bHidden,
    };
