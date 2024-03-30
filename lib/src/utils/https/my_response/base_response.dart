import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.freezed.dart';
part 'base_response.g.dart';

@freezed
class BaseResponse with _$BaseResponse implements AppResponse {
  const factory BaseResponse({
    required String message,
    @Default(false) bool? success,
    @Default(null) String? error,
    @Default(200) int? statusCode,
    dynamic data,
  }) = _BaseResponse;

  factory BaseResponse.fromJson(Map<String, Object?> json) =>
      _$BaseResponseFromJson(json);
}

abstract class AppResponse {}
