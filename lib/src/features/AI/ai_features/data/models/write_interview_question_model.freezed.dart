// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'write_interview_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WriteInterviewQuestionModel _$WriteInterviewQuestionModelFromJson(
    Map<String, dynamic> json) {
  return _WriteInterviewQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$WriteInterviewQuestionModel {
  @JsonKey(name: 'job_title')
  String? get jobTitle => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  @JsonKey(name: 'gpt_model')
  int? get gptModel => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WriteInterviewQuestionModelCopyWith<WriteInterviewQuestionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WriteInterviewQuestionModelCopyWith<$Res> {
  factory $WriteInterviewQuestionModelCopyWith(
          WriteInterviewQuestionModel value,
          $Res Function(WriteInterviewQuestionModel) then) =
      _$WriteInterviewQuestionModelCopyWithImpl<$Res,
          WriteInterviewQuestionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'job_title') String? jobTitle,
      String? about,
      @JsonKey(name: 'gpt_model') int? gptModel,
      String? language});
}

/// @nodoc
class _$WriteInterviewQuestionModelCopyWithImpl<$Res,
        $Val extends WriteInterviewQuestionModel>
    implements $WriteInterviewQuestionModelCopyWith<$Res> {
  _$WriteInterviewQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobTitle = freezed,
    Object? about = freezed,
    Object? gptModel = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
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
abstract class _$$WriteInterviewQuestionModelImplCopyWith<$Res>
    implements $WriteInterviewQuestionModelCopyWith<$Res> {
  factory _$$WriteInterviewQuestionModelImplCopyWith(
          _$WriteInterviewQuestionModelImpl value,
          $Res Function(_$WriteInterviewQuestionModelImpl) then) =
      __$$WriteInterviewQuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'job_title') String? jobTitle,
      String? about,
      @JsonKey(name: 'gpt_model') int? gptModel,
      String? language});
}

/// @nodoc
class __$$WriteInterviewQuestionModelImplCopyWithImpl<$Res>
    extends _$WriteInterviewQuestionModelCopyWithImpl<$Res,
        _$WriteInterviewQuestionModelImpl>
    implements _$$WriteInterviewQuestionModelImplCopyWith<$Res> {
  __$$WriteInterviewQuestionModelImplCopyWithImpl(
      _$WriteInterviewQuestionModelImpl _value,
      $Res Function(_$WriteInterviewQuestionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobTitle = freezed,
    Object? about = freezed,
    Object? gptModel = freezed,
    Object? language = freezed,
  }) {
    return _then(_$WriteInterviewQuestionModelImpl(
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
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
class _$WriteInterviewQuestionModelImpl
    implements _WriteInterviewQuestionModel {
  const _$WriteInterviewQuestionModelImpl(
      {@JsonKey(name: 'job_title') this.jobTitle,
      this.about,
      @JsonKey(name: 'gpt_model') this.gptModel = 3,
      this.language = 'en'});

  factory _$WriteInterviewQuestionModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WriteInterviewQuestionModelImplFromJson(json);

  @override
  @JsonKey(name: 'job_title')
  final String? jobTitle;
  @override
  final String? about;
  @override
  @JsonKey(name: 'gpt_model')
  final int? gptModel;
  @override
  @JsonKey()
  final String? language;

  @override
  String toString() {
    return 'WriteInterviewQuestionModel(jobTitle: $jobTitle, about: $about, gptModel: $gptModel, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WriteInterviewQuestionModelImpl &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.gptModel, gptModel) ||
                other.gptModel == gptModel) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, jobTitle, about, gptModel, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WriteInterviewQuestionModelImplCopyWith<_$WriteInterviewQuestionModelImpl>
      get copyWith => __$$WriteInterviewQuestionModelImplCopyWithImpl<
          _$WriteInterviewQuestionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WriteInterviewQuestionModelImplToJson(
      this,
    );
  }
}

abstract class _WriteInterviewQuestionModel
    implements WriteInterviewQuestionModel {
  const factory _WriteInterviewQuestionModel(
      {@JsonKey(name: 'job_title') final String? jobTitle,
      final String? about,
      @JsonKey(name: 'gpt_model') final int? gptModel,
      final String? language}) = _$WriteInterviewQuestionModelImpl;

  factory _WriteInterviewQuestionModel.fromJson(Map<String, dynamic> json) =
      _$WriteInterviewQuestionModelImpl.fromJson;

  @override
  @JsonKey(name: 'job_title')
  String? get jobTitle;
  @override
  String? get about;
  @override
  @JsonKey(name: 'gpt_model')
  int? get gptModel;
  @override
  String? get language;
  @override
  @JsonKey(ignore: true)
  _$$WriteInterviewQuestionModelImplCopyWith<_$WriteInterviewQuestionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
