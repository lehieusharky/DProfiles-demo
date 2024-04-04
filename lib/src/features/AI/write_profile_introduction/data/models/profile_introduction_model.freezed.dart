// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_introduction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileIntroductionModel _$ProfileIntroductionModelFromJson(
    Map<String, dynamic> json) {
  return _ProfileIntroductionModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileIntroductionModel {
  @JsonKey(name: 'max_token')
  int? get maxToken => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  String? get style => throw _privateConstructorUsedError;
  @JsonKey(name: 'gpt_model')
  int? get gptModel => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileIntroductionModelCopyWith<ProfileIntroductionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileIntroductionModelCopyWith<$Res> {
  factory $ProfileIntroductionModelCopyWith(ProfileIntroductionModel value,
          $Res Function(ProfileIntroductionModel) then) =
      _$ProfileIntroductionModelCopyWithImpl<$Res, ProfileIntroductionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'max_token') int? maxToken,
      String? summary,
      String? style,
      @JsonKey(name: 'gpt_model') int? gptModel,
      String? language});
}

/// @nodoc
class _$ProfileIntroductionModelCopyWithImpl<$Res,
        $Val extends ProfileIntroductionModel>
    implements $ProfileIntroductionModelCopyWith<$Res> {
  _$ProfileIntroductionModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ProfileIntroductionModelImplCopyWith<$Res>
    implements $ProfileIntroductionModelCopyWith<$Res> {
  factory _$$ProfileIntroductionModelImplCopyWith(
          _$ProfileIntroductionModelImpl value,
          $Res Function(_$ProfileIntroductionModelImpl) then) =
      __$$ProfileIntroductionModelImplCopyWithImpl<$Res>;
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
class __$$ProfileIntroductionModelImplCopyWithImpl<$Res>
    extends _$ProfileIntroductionModelCopyWithImpl<$Res,
        _$ProfileIntroductionModelImpl>
    implements _$$ProfileIntroductionModelImplCopyWith<$Res> {
  __$$ProfileIntroductionModelImplCopyWithImpl(
      _$ProfileIntroductionModelImpl _value,
      $Res Function(_$ProfileIntroductionModelImpl) _then)
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
    return _then(_$ProfileIntroductionModelImpl(
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
class _$ProfileIntroductionModelImpl implements _ProfileIntroductionModel {
  const _$ProfileIntroductionModelImpl(
      {@JsonKey(name: 'max_token') this.maxToken = 0,
      this.summary,
      this.style,
      @JsonKey(name: 'gpt_model') this.gptModel = 3,
      this.language = 'en'});

  factory _$ProfileIntroductionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileIntroductionModelImplFromJson(json);

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
    return 'ProfileIntroductionModel(maxToken: $maxToken, summary: $summary, style: $style, gptModel: $gptModel, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileIntroductionModelImpl &&
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
  _$$ProfileIntroductionModelImplCopyWith<_$ProfileIntroductionModelImpl>
      get copyWith => __$$ProfileIntroductionModelImplCopyWithImpl<
          _$ProfileIntroductionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileIntroductionModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileIntroductionModel implements ProfileIntroductionModel {
  const factory _ProfileIntroductionModel(
      {@JsonKey(name: 'max_token') final int? maxToken,
      final String? summary,
      final String? style,
      @JsonKey(name: 'gpt_model') final int? gptModel,
      final String? language}) = _$ProfileIntroductionModelImpl;

  factory _ProfileIntroductionModel.fromJson(Map<String, dynamic> json) =
      _$ProfileIntroductionModelImpl.fromJson;

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
  _$$ProfileIntroductionModelImplCopyWith<_$ProfileIntroductionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
