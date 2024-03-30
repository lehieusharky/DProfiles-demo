// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthErrorResponseImpl _$$AuthErrorResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthErrorResponseImpl(
      message: json['message'] as String?,
      error: json['error'] as String?,
      statusCode: json['statusCode'] as int? ?? 400,
    );

Map<String, dynamic> _$$AuthErrorResponseImplToJson(
        _$AuthErrorResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'statusCode': instance.statusCode,
    };
