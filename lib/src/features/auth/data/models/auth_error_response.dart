import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_error_response.freezed.dart';
part 'auth_error_response.g.dart';

@freezed
class RegularErrorResponse with _$RegularErrorResponse implements AppResponse {
  const factory RegularErrorResponse({
    @Default("") String? message,
    String? error,
    @Default(400) int? statusCode,
  }) = _RegularErrorResponse;

  factory RegularErrorResponse.fromJson(Map<String, Object?> json) =>
      _$RegularErrorResponseFromJson(json);
}
