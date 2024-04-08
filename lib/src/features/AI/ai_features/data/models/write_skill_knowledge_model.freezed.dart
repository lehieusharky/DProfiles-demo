// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'write_skill_knowledge_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WriteSkillKnowledgeModel _$WriteSkillKnowledgeModelFromJson(
    Map<String, dynamic> json) {
  return _WriteSkillKnowledgeModel.fromJson(json);
}

/// @nodoc
mixin _$WriteSkillKnowledgeModel {
  @JsonKey(name: 'job_title')
  String? get jobTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'gpt_model')
  int? get gptModel => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WriteSkillKnowledgeModelCopyWith<WriteSkillKnowledgeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WriteSkillKnowledgeModelCopyWith<$Res> {
  factory $WriteSkillKnowledgeModelCopyWith(WriteSkillKnowledgeModel value,
          $Res Function(WriteSkillKnowledgeModel) then) =
      _$WriteSkillKnowledgeModelCopyWithImpl<$Res, WriteSkillKnowledgeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'job_title') String? jobTitle,
      @JsonKey(name: 'gpt_model') int? gptModel,
      String? language});
}

/// @nodoc
class _$WriteSkillKnowledgeModelCopyWithImpl<$Res,
        $Val extends WriteSkillKnowledgeModel>
    implements $WriteSkillKnowledgeModelCopyWith<$Res> {
  _$WriteSkillKnowledgeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobTitle = freezed,
    Object? gptModel = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
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
abstract class _$$WriteSkillKnowledgeModelImplCopyWith<$Res>
    implements $WriteSkillKnowledgeModelCopyWith<$Res> {
  factory _$$WriteSkillKnowledgeModelImplCopyWith(
          _$WriteSkillKnowledgeModelImpl value,
          $Res Function(_$WriteSkillKnowledgeModelImpl) then) =
      __$$WriteSkillKnowledgeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'job_title') String? jobTitle,
      @JsonKey(name: 'gpt_model') int? gptModel,
      String? language});
}

/// @nodoc
class __$$WriteSkillKnowledgeModelImplCopyWithImpl<$Res>
    extends _$WriteSkillKnowledgeModelCopyWithImpl<$Res,
        _$WriteSkillKnowledgeModelImpl>
    implements _$$WriteSkillKnowledgeModelImplCopyWith<$Res> {
  __$$WriteSkillKnowledgeModelImplCopyWithImpl(
      _$WriteSkillKnowledgeModelImpl _value,
      $Res Function(_$WriteSkillKnowledgeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobTitle = freezed,
    Object? gptModel = freezed,
    Object? language = freezed,
  }) {
    return _then(_$WriteSkillKnowledgeModelImpl(
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
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
class _$WriteSkillKnowledgeModelImpl implements _WriteSkillKnowledgeModel {
  const _$WriteSkillKnowledgeModelImpl(
      {@JsonKey(name: 'job_title') this.jobTitle,
      @JsonKey(name: 'gpt_model') this.gptModel = 3,
      this.language = 'en'});

  factory _$WriteSkillKnowledgeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WriteSkillKnowledgeModelImplFromJson(json);

  @override
  @JsonKey(name: 'job_title')
  final String? jobTitle;
  @override
  @JsonKey(name: 'gpt_model')
  final int? gptModel;
  @override
  @JsonKey()
  final String? language;

  @override
  String toString() {
    return 'WriteSkillKnowledgeModel(jobTitle: $jobTitle, gptModel: $gptModel, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WriteSkillKnowledgeModelImpl &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.gptModel, gptModel) ||
                other.gptModel == gptModel) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jobTitle, gptModel, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WriteSkillKnowledgeModelImplCopyWith<_$WriteSkillKnowledgeModelImpl>
      get copyWith => __$$WriteSkillKnowledgeModelImplCopyWithImpl<
          _$WriteSkillKnowledgeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WriteSkillKnowledgeModelImplToJson(
      this,
    );
  }
}

abstract class _WriteSkillKnowledgeModel implements WriteSkillKnowledgeModel {
  const factory _WriteSkillKnowledgeModel(
      {@JsonKey(name: 'job_title') final String? jobTitle,
      @JsonKey(name: 'gpt_model') final int? gptModel,
      final String? language}) = _$WriteSkillKnowledgeModelImpl;

  factory _WriteSkillKnowledgeModel.fromJson(Map<String, dynamic> json) =
      _$WriteSkillKnowledgeModelImpl.fromJson;

  @override
  @JsonKey(name: 'job_title')
  String? get jobTitle;
  @override
  @JsonKey(name: 'gpt_model')
  int? get gptModel;
  @override
  String? get language;
  @override
  @JsonKey(ignore: true)
  _$$WriteSkillKnowledgeModelImplCopyWith<_$WriteSkillKnowledgeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
