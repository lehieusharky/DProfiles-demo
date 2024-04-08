// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'write_cover_letter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WriteCoverLetterModel _$WriteCoverLetterModelFromJson(
    Map<String, dynamic> json) {
  return _WriteCoverLetterModel.fromJson(json);
}

/// @nodoc
mixin _$WriteCoverLetterModel {
  int? get maxToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_title')
  String? get jobTitle => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  @JsonKey(name: 'gpt_model')
  int? get gptModel => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WriteCoverLetterModelCopyWith<WriteCoverLetterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WriteCoverLetterModelCopyWith<$Res> {
  factory $WriteCoverLetterModelCopyWith(WriteCoverLetterModel value,
          $Res Function(WriteCoverLetterModel) then) =
      _$WriteCoverLetterModelCopyWithImpl<$Res, WriteCoverLetterModel>;
  @useResult
  $Res call(
      {int? maxToken,
      @JsonKey(name: 'job_title') String? jobTitle,
      String? summary,
      @JsonKey(name: 'gpt_model') int? gptModel,
      String? language});
}

/// @nodoc
class _$WriteCoverLetterModelCopyWithImpl<$Res,
        $Val extends WriteCoverLetterModel>
    implements $WriteCoverLetterModelCopyWith<$Res> {
  _$WriteCoverLetterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxToken = freezed,
    Object? jobTitle = freezed,
    Object? summary = freezed,
    Object? gptModel = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      maxToken: freezed == maxToken
          ? _value.maxToken
          : maxToken // ignore: cast_nullable_to_non_nullable
              as int?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
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
abstract class _$$WriteCoverLetterModelImplCopyWith<$Res>
    implements $WriteCoverLetterModelCopyWith<$Res> {
  factory _$$WriteCoverLetterModelImplCopyWith(
          _$WriteCoverLetterModelImpl value,
          $Res Function(_$WriteCoverLetterModelImpl) then) =
      __$$WriteCoverLetterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? maxToken,
      @JsonKey(name: 'job_title') String? jobTitle,
      String? summary,
      @JsonKey(name: 'gpt_model') int? gptModel,
      String? language});
}

/// @nodoc
class __$$WriteCoverLetterModelImplCopyWithImpl<$Res>
    extends _$WriteCoverLetterModelCopyWithImpl<$Res,
        _$WriteCoverLetterModelImpl>
    implements _$$WriteCoverLetterModelImplCopyWith<$Res> {
  __$$WriteCoverLetterModelImplCopyWithImpl(_$WriteCoverLetterModelImpl _value,
      $Res Function(_$WriteCoverLetterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxToken = freezed,
    Object? jobTitle = freezed,
    Object? summary = freezed,
    Object? gptModel = freezed,
    Object? language = freezed,
  }) {
    return _then(_$WriteCoverLetterModelImpl(
      maxToken: freezed == maxToken
          ? _value.maxToken
          : maxToken // ignore: cast_nullable_to_non_nullable
              as int?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
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
class _$WriteCoverLetterModelImpl implements _WriteCoverLetterModel {
  const _$WriteCoverLetterModelImpl(
      {this.maxToken,
      @JsonKey(name: 'job_title') this.jobTitle,
      this.summary,
      @JsonKey(name: 'gpt_model') this.gptModel = 3,
      this.language = 'en'});

  factory _$WriteCoverLetterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WriteCoverLetterModelImplFromJson(json);

  @override
  final int? maxToken;
  @override
  @JsonKey(name: 'job_title')
  final String? jobTitle;
  @override
  final String? summary;
  @override
  @JsonKey(name: 'gpt_model')
  final int? gptModel;
  @override
  @JsonKey()
  final String? language;

  @override
  String toString() {
    return 'WriteCoverLetterModel(maxToken: $maxToken, jobTitle: $jobTitle, summary: $summary, gptModel: $gptModel, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WriteCoverLetterModelImpl &&
            (identical(other.maxToken, maxToken) ||
                other.maxToken == maxToken) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.gptModel, gptModel) ||
                other.gptModel == gptModel) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, maxToken, jobTitle, summary, gptModel, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WriteCoverLetterModelImplCopyWith<_$WriteCoverLetterModelImpl>
      get copyWith => __$$WriteCoverLetterModelImplCopyWithImpl<
          _$WriteCoverLetterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WriteCoverLetterModelImplToJson(
      this,
    );
  }
}

abstract class _WriteCoverLetterModel implements WriteCoverLetterModel {
  const factory _WriteCoverLetterModel(
      {final int? maxToken,
      @JsonKey(name: 'job_title') final String? jobTitle,
      final String? summary,
      @JsonKey(name: 'gpt_model') final int? gptModel,
      final String? language}) = _$WriteCoverLetterModelImpl;

  factory _WriteCoverLetterModel.fromJson(Map<String, dynamic> json) =
      _$WriteCoverLetterModelImpl.fromJson;

  @override
  int? get maxToken;
  @override
  @JsonKey(name: 'job_title')
  String? get jobTitle;
  @override
  String? get summary;
  @override
  @JsonKey(name: 'gpt_model')
  int? get gptModel;
  @override
  String? get language;
  @override
  @JsonKey(ignore: true)
  _$$WriteCoverLetterModelImplCopyWith<_$WriteCoverLetterModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
