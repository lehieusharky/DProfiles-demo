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

RegularErrorResponse _$RegularErrorResponseFromJson(Map<String, dynamic> json) {
  return _RegularErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$RegularErrorResponse {
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  int? get serviceCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegularErrorResponseCopyWith<RegularErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegularErrorResponseCopyWith<$Res> {
  factory $RegularErrorResponseCopyWith(RegularErrorResponse value,
          $Res Function(RegularErrorResponse) then) =
      _$RegularErrorResponseCopyWithImpl<$Res, RegularErrorResponse>;
  @useResult
  $Res call(
      {String? message, String? error, int? statusCode, int? serviceCode});
}

/// @nodoc
class _$RegularErrorResponseCopyWithImpl<$Res,
        $Val extends RegularErrorResponse>
    implements $RegularErrorResponseCopyWith<$Res> {
  _$RegularErrorResponseCopyWithImpl(this._value, this._then);

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
    Object? serviceCode = freezed,
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
      serviceCode: freezed == serviceCode
          ? _value.serviceCode
          : serviceCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegularErrorResponseImplCopyWith<$Res>
    implements $RegularErrorResponseCopyWith<$Res> {
  factory _$$RegularErrorResponseImplCopyWith(_$RegularErrorResponseImpl value,
          $Res Function(_$RegularErrorResponseImpl) then) =
      __$$RegularErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message, String? error, int? statusCode, int? serviceCode});
}

/// @nodoc
class __$$RegularErrorResponseImplCopyWithImpl<$Res>
    extends _$RegularErrorResponseCopyWithImpl<$Res, _$RegularErrorResponseImpl>
    implements _$$RegularErrorResponseImplCopyWith<$Res> {
  __$$RegularErrorResponseImplCopyWithImpl(_$RegularErrorResponseImpl _value,
      $Res Function(_$RegularErrorResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? statusCode = freezed,
    Object? serviceCode = freezed,
  }) {
    return _then(_$RegularErrorResponseImpl(
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
      serviceCode: freezed == serviceCode
          ? _value.serviceCode
          : serviceCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegularErrorResponseImpl implements _RegularErrorResponse {
  const _$RegularErrorResponseImpl(
      {this.message = "", this.error, this.statusCode = 400, this.serviceCode});

  factory _$RegularErrorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegularErrorResponseImplFromJson(json);

  @override
  @JsonKey()
  final String? message;
  @override
  final String? error;
  @override
  @JsonKey()
  final int? statusCode;
  @override
  final int? serviceCode;

  @override
  String toString() {
    return 'RegularErrorResponse(message: $message, error: $error, statusCode: $statusCode, serviceCode: $serviceCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegularErrorResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.serviceCode, serviceCode) ||
                other.serviceCode == serviceCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, message, error, statusCode, serviceCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegularErrorResponseImplCopyWith<_$RegularErrorResponseImpl>
      get copyWith =>
          __$$RegularErrorResponseImplCopyWithImpl<_$RegularErrorResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegularErrorResponseImplToJson(
      this,
    );
  }
}

abstract class _RegularErrorResponse implements RegularErrorResponse {
  const factory _RegularErrorResponse(
      {final String? message,
      final String? error,
      final int? statusCode,
      final int? serviceCode}) = _$RegularErrorResponseImpl;

  factory _RegularErrorResponse.fromJson(Map<String, dynamic> json) =
      _$RegularErrorResponseImpl.fromJson;

  @override
  String? get message;
  @override
  String? get error;
  @override
  int? get statusCode;
  @override
  int? get serviceCode;
  @override
  @JsonKey(ignore: true)
  _$$RegularErrorResponseImplCopyWith<_$RegularErrorResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
