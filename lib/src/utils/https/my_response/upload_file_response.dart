import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_file_response.freezed.dart';
part 'upload_file_response.g.dart';

@freezed
class UploadFileResponse with _$UploadFileResponse {
  const factory UploadFileResponse({
    @JsonKey(name: 'presigned_url') String? presignedUrl,
    @JsonKey(name: 'preview_url') String? previewUrl,
    @JsonKey(name: 'object_key') String? objectKey,
  }) = _UploadFileResponse;

  factory UploadFileResponse.fromJson(Map<String, Object?> json) =>
      _$UploadFileResponseFromJson(json);
}
