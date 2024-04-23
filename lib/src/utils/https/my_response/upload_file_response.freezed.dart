// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_file_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadFileResponse _$UploadFileResponseFromJson(Map<String, dynamic> json) {
  return _UploadFileResponse.fromJson(json);
}

/// @nodoc
mixin _$UploadFileResponse {
  @JsonKey(name: 'presigned_url')
  String? get presignedUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'preview_url')
  String? get previewUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'object_key')
  String? get objectKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadFileResponseCopyWith<UploadFileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileResponseCopyWith<$Res> {
  factory $UploadFileResponseCopyWith(
          UploadFileResponse value, $Res Function(UploadFileResponse) then) =
      _$UploadFileResponseCopyWithImpl<$Res, UploadFileResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'presigned_url') String? presignedUrl,
      @JsonKey(name: 'preview_url') String? previewUrl,
      @JsonKey(name: 'object_key') String? objectKey});
}

/// @nodoc
class _$UploadFileResponseCopyWithImpl<$Res, $Val extends UploadFileResponse>
    implements $UploadFileResponseCopyWith<$Res> {
  _$UploadFileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? presignedUrl = freezed,
    Object? previewUrl = freezed,
    Object? objectKey = freezed,
  }) {
    return _then(_value.copyWith(
      presignedUrl: freezed == presignedUrl
          ? _value.presignedUrl
          : presignedUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      objectKey: freezed == objectKey
          ? _value.objectKey
          : objectKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadFileResponseImplCopyWith<$Res>
    implements $UploadFileResponseCopyWith<$Res> {
  factory _$$UploadFileResponseImplCopyWith(_$UploadFileResponseImpl value,
          $Res Function(_$UploadFileResponseImpl) then) =
      __$$UploadFileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'presigned_url') String? presignedUrl,
      @JsonKey(name: 'preview_url') String? previewUrl,
      @JsonKey(name: 'object_key') String? objectKey});
}

/// @nodoc
class __$$UploadFileResponseImplCopyWithImpl<$Res>
    extends _$UploadFileResponseCopyWithImpl<$Res, _$UploadFileResponseImpl>
    implements _$$UploadFileResponseImplCopyWith<$Res> {
  __$$UploadFileResponseImplCopyWithImpl(_$UploadFileResponseImpl _value,
      $Res Function(_$UploadFileResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? presignedUrl = freezed,
    Object? previewUrl = freezed,
    Object? objectKey = freezed,
  }) {
    return _then(_$UploadFileResponseImpl(
      presignedUrl: freezed == presignedUrl
          ? _value.presignedUrl
          : presignedUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      objectKey: freezed == objectKey
          ? _value.objectKey
          : objectKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadFileResponseImpl implements _UploadFileResponse {
  const _$UploadFileResponseImpl(
      {@JsonKey(name: 'presigned_url') this.presignedUrl,
      @JsonKey(name: 'preview_url') this.previewUrl,
      @JsonKey(name: 'object_key') this.objectKey});

  factory _$UploadFileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadFileResponseImplFromJson(json);

  @override
  @JsonKey(name: 'presigned_url')
  final String? presignedUrl;
  @override
  @JsonKey(name: 'preview_url')
  final String? previewUrl;
  @override
  @JsonKey(name: 'object_key')
  final String? objectKey;

  @override
  String toString() {
    return 'UploadFileResponse(presignedUrl: $presignedUrl, previewUrl: $previewUrl, objectKey: $objectKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFileResponseImpl &&
            (identical(other.presignedUrl, presignedUrl) ||
                other.presignedUrl == presignedUrl) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl) &&
            (identical(other.objectKey, objectKey) ||
                other.objectKey == objectKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, presignedUrl, previewUrl, objectKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadFileResponseImplCopyWith<_$UploadFileResponseImpl> get copyWith =>
      __$$UploadFileResponseImplCopyWithImpl<_$UploadFileResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadFileResponseImplToJson(
      this,
    );
  }
}

abstract class _UploadFileResponse implements UploadFileResponse {
  const factory _UploadFileResponse(
          {@JsonKey(name: 'presigned_url') final String? presignedUrl,
          @JsonKey(name: 'preview_url') final String? previewUrl,
          @JsonKey(name: 'object_key') final String? objectKey}) =
      _$UploadFileResponseImpl;

  factory _UploadFileResponse.fromJson(Map<String, dynamic> json) =
      _$UploadFileResponseImpl.fromJson;

  @override
  @JsonKey(name: 'presigned_url')
  String? get presignedUrl;
  @override
  @JsonKey(name: 'preview_url')
  String? get previewUrl;
  @override
  @JsonKey(name: 'object_key')
  String? get objectKey;
  @override
  @JsonKey(ignore: true)
  _$$UploadFileResponseImplCopyWith<_$UploadFileResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
