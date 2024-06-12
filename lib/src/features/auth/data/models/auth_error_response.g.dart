// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegularErrorResponseImpl _$$RegularErrorResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RegularErrorResponseImpl(
      message: json['message'] as String? ?? "",
      error: json['error'] as String?,
      statusCode: (json['statusCode'] as num?)?.toInt() ?? 400,
      serviceCode: (json['serviceCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RegularErrorResponseImplToJson(
        _$RegularErrorResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'statusCode': instance.statusCode,
      'serviceCode': instance.serviceCode,
    };
