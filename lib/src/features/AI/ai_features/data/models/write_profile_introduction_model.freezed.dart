// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'write_profile_introduction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WriteProfileIntroductionModel _$WriteProfileIntroductionModelFromJson(
    Map<String, dynamic> json) {
  return _WriteProfileIntroductionModel.fromJson(json);
}

/// @nodoc
mixin _$WriteProfileIntroductionModel {
  @JsonKey(name: 'max_token')
  int? get maxToken => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  String? get style => throw _privateConstructorUsedError;
  @JsonKey(name: 'gpt_model')
  int? get gptModel => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WriteProfileIntroductionModelCopyWith<WriteProfileIntroductionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WriteProfileIntroductionModelCopyWith<$Res> {
  factory $WriteProfileIntroductionModelCopyWith(
          WriteProfileIntroductionModel value,
          $Res Function(WriteProfileIntroductionModel) then) =
      _$WriteProfileIntroductionModelCopyWithImpl<$Res,
          WriteProfileIntroductionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'max_token') int? maxToken,
      String? summary,
      String? style,
      @JsonKey(name: 'gpt_model') int? gptModel,
      String? language});
}

/// @nodoc
class _$WriteProfileIntroductionModelCopyWithImpl<$Res,
        $Val extends WriteProfileIntroductionModel>
    implements $WriteProfileIntroductionModelCopyWith<$Res> {
  _$WriteProfileIntroductionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxToken = freezed,
    Object? summary = freezed,
    Object? style = freezed,
    Object? gptModel = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      maxToken: freezed == maxToken
          ? _value.maxToken
          : maxToken // ignore: cast_nullable_to_non_nullable
              as int?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String?,
      gptModel: freezed == gptModel
          ? _value.gptModel
          : gptModel // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WriteProfileIntroductionModelImplCopyWith<$Res>
    implements $WriteProfileIntroductionModelCopyWith<$Res> {
  factory _$$WriteProfileIntroductionModelImplCopyWith(
          _$WriteProfileIntroductionModelImpl value,
          $Res Function(_$WriteProfileIntroductionModelImpl) then) =
      __$$WriteProfileIntroductionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'max_token') int? maxToken,
      String? summary,
      String? style,
      @JsonKey(name: 'gpt_model') int? gptModel,
      String? language});
}

/// @nodoc
class __$$WriteProfileIntroductionModelImplCopyWithImpl<$Res>
    extends _$WriteProfileIntroductionModelCopyWithImpl<$Res,
        _$WriteProfileIntroductionModelImpl>
    implements _$$WriteProfileIntroductionModelImplCopyWith<$Res> {
  __$$WriteProfileIntroductionModelImplCopyWithImpl(
      _$WriteProfileIntroductionModelImpl _value,
      $Res Function(_$WriteProfileIntroductionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxToken = freezed,
    Object? summary = freezed,
    Object? style = freezed,
    Object? gptModel = freezed,
    Object? language = freezed,
  }) {
    return _then(_$WriteProfileIntroductionModelImpl(
      maxToken: freezed == maxToken
          ? _value.maxToken
          : maxToken // ignore: cast_nullable_to_non_nullable
              as int?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String?,
      gptModel: freezed == gptModel
          ? _value.gptModel
          : gptModel // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WriteProfileIntroductionModelImpl
    implements _WriteProfileIntroductionModel {
  const _$WriteProfileIntroductionModelImpl(
      {@JsonKey(name: 'max_token') this.maxToken = 0,
      this.summary,
      this.style,
      @JsonKey(name: 'gpt_model') this.gptModel = 3,
      this.language = 'en'});

  factory _$WriteProfileIntroductionModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WriteProfileIntroductionModelImplFromJson(json);

  @override
  @JsonKey(name: 'max_token')
  final int? maxToken;
  @override
  final String? summary;
  @override
  final String? style;
  @override
  @JsonKey(name: 'gpt_model')
  final int? gptModel;
  @override
  @JsonKey()
  final String? language;

  @override
  String toString() {
    return 'WriteProfileIntroductionModel(maxToken: $maxToken, summary: $summary, style: $style, gptModel: $gptModel, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WriteProfileIntroductionModelImpl &&
            (identical(other.maxToken, maxToken) ||
                other.maxToken == maxToken) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.gptModel, gptModel) ||
                other.gptModel == gptModel) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, maxToken, summary, style, gptModel, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WriteProfileIntroductionModelImplCopyWith<
          _$WriteProfileIntroductionModelImpl>
      get copyWith => __$$WriteProfileIntroductionModelImplCopyWithImpl<
          _$WriteProfileIntroductionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WriteProfileIntroductionModelImplToJson(
      this,
    );
  }
}

abstract class _WriteProfileIntroductionModel
    implements WriteProfileIntroductionModel {
  const factory _WriteProfileIntroductionModel(
      {@JsonKey(name: 'max_token') final int? maxToken,
      final String? summary,
      final String? style,
      @JsonKey(name: 'gpt_model') final int? gptModel,
      final String? language}) = _$WriteProfileIntroductionModelImpl;

  factory _WriteProfileIntroductionModel.fromJson(Map<String, dynamic> json) =
      _$WriteProfileIntroductionModelImpl.fromJson;

  @override
  @JsonKey(name: 'max_token')
  int? get maxToken;
  @override
  String? get summary;
  @override
  String? get style;
  @override
  @JsonKey(name: 'gpt_model')
  int? get gptModel;
  @override
  String? get language;
  @override
  @JsonKey(ignore: true)
  _$$WriteProfileIntroductionModelImplCopyWith<
          _$WriteProfileIntroductionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
