// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthErrorResponse _$AuthErrorResponseFromJson(Map<String, dynamic> json) {
  return _AuthErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthErrorResponse {
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthErrorResponseCopyWith<AuthErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthErrorResponseCopyWith<$Res> {
  factory $AuthErrorResponseCopyWith(
          AuthErrorResponse value, $Res Function(AuthErrorResponse) then) =
      _$AuthErrorResponseCopyWithImpl<$Res, AuthErrorResponse>;
  @useResult
  $Res call({String? message, String? error, int? statusCode});
}

/// @nodoc
class _$AuthErrorResponseCopyWithImpl<$Res, $Val extends AuthErrorResponse>
    implements $AuthErrorResponseCopyWith<$Res> {
  _$AuthErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthErrorResponseImplCopyWith<$Res>
    implements $AuthErrorResponseCopyWith<$Res> {
  factory _$$AuthErrorResponseImplCopyWith(_$AuthErrorResponseImpl value,
          $Res Function(_$AuthErrorResponseImpl) then) =
      __$$AuthErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String? error, int? statusCode});
}

/// @nodoc
class __$$AuthErrorResponseImplCopyWithImpl<$Res>
    extends _$AuthErrorResponseCopyWithImpl<$Res, _$AuthErrorResponseImpl>
    implements _$$AuthErrorResponseImplCopyWith<$Res> {
  __$$AuthErrorResponseImplCopyWithImpl(_$AuthErrorResponseImpl _value,
      $Res Function(_$AuthErrorResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$AuthErrorResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthErrorResponseImpl implements _AuthErrorResponse {
  const _$AuthErrorResponseImpl(
      {this.message, this.error, this.statusCode = 400});

  factory _$AuthErrorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthErrorResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final String? error;
  @override
  @JsonKey()
  final int? statusCode;

  @override
  String toString() {
    return 'AuthErrorResponse(message: $message, error: $error, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthErrorResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, error, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthErrorResponseImplCopyWith<_$AuthErrorResponseImpl> get copyWith =>
      __$$AuthErrorResponseImplCopyWithImpl<_$AuthErrorResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthErrorResponseImplToJson(
      this,
    );
  }
}

abstract class _AuthErrorResponse implements AuthErrorResponse {
  const factory _AuthErrorResponse(
      {final String? message,
      final String? error,
      final int? statusCode}) = _$AuthErrorResponseImpl;

  factory _AuthErrorResponse.fromJson(Map<String, dynamic> json) =
      _$AuthErrorResponseImpl.fromJson;

  @override
  String? get message;
  @override
  String? get error;
  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$AuthErrorResponseImplCopyWith<_$AuthErrorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
