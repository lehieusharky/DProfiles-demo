// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_file_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadFileResponseImpl _$$UploadFileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadFileResponseImpl(
      presignedUrl: json['presigned_url'] as String?,
      previewUrl: json['preview_url'] as String?,
      objectKey: json['object_key'] as String?,
    );

Map<String, dynamic> _$$UploadFileResponseImplToJson(
        _$UploadFileResponseImpl instance) =>
    <String, dynamic>{
      'presigned_url': instance.presignedUrl,
      'preview_url': instance.previewUrl,
      'object_key': instance.objectKey,
    };
