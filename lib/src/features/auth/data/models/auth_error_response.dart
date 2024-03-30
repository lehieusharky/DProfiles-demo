import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_error_response.freezed.dart';
part 'auth_error_response.g.dart';

@freezed
class AuthErrorResponse with _$AuthErrorResponse implements AppResponse {
  const factory AuthErrorResponse({
    @Default("") String? message,
    String? error,
    @Default(400) int? statusCode,
  }) = _AuthErrorResponse;

  factory AuthErrorResponse.fromJson(Map<String, Object?> json) =>
      _$AuthErrorResponseFromJson(json);
}
