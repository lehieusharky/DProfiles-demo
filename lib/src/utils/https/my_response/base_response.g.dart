// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseImpl _$$BaseResponseImplFromJson(Map<String, dynamic> json) =>
    _$BaseResponseImpl(
      message: json['message'] as String,
      success: json['success'] as bool? ?? false,
      error: json['error'] as String? ?? null,
      statusCode: json['statusCode'] as int? ?? 200,
    );

Map<String, dynamic> _$$BaseResponseImplToJson(_$BaseResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'success': instance.success,
      'error': instance.error,
      'statusCode': instance.statusCode,
    };