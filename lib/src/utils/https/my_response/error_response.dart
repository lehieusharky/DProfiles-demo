import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_response.freezed.dart';
part 'error_response.g.dart';

@freezed
class ErrorResponse with _$ErrorResponse implements AppResponse {
  const factory ErrorResponse({
    @Default([]) List<String> message,
    String? error,
    @Default(400) int? statusCode,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, Object?> json) =>
      _$ErrorResponseFromJson(json);
}
