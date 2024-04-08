// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auto_generate_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AutoGenerateHistoryModel _$AutoGenerateHistoryModelFromJson(
    Map<String, dynamic> json) {
  return _AutoGenerateHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$AutoGenerateHistoryModel {
  int? get id => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  Prompt? get prompt => throw _privateConstructorUsedError;
  String? get historyType => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  int? get gptType => throw _privateConstructorUsedError;
  String? get historyDate => throw _privateConstructorUsedError;
  String? get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_on')
  String? get updatedOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_ts')
  String? get updatedTs => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_ts')
  String? get createdTs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AutoGenerateHistoryModelCopyWith<AutoGenerateHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoGenerateHistoryModelCopyWith<$Res> {
  factory $AutoGenerateHistoryModelCopyWith(AutoGenerateHistoryModel value,
          $Res Function(AutoGenerateHistoryModel) then) =
      _$AutoGenerateHistoryModelCopyWithImpl<$Res, AutoGenerateHistoryModel>;
  @useResult
  $Res call(
      {int? id,
      int? userId,
      Prompt? prompt,
      String? historyType,
      String? language,
      int? gptType,
      String? historyDate,
      String? result,
      @JsonKey(name: 'updated_on') String? updatedOn,
      @JsonKey(name: 'updated_ts') String? updatedTs,
      @JsonKey(name: 'created_ts') String? createdTs});

  $PromptCopyWith<$Res>? get prompt;
}

/// @nodoc
class _$AutoGenerateHistoryModelCopyWithImpl<$Res,
        $Val extends AutoGenerateHistoryModel>
    implements $AutoGenerateHistoryModelCopyWith<$Res> {
  _$AutoGenerateHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? prompt = freezed,
    Object? historyType = freezed,
    Object? language = freezed,
    Object? gptType = freezed,
    Object? historyDate = freezed,
    Object? result = freezed,
    Object? updatedOn = freezed,
    Object? updatedTs = freezed,
    Object? createdTs = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as Prompt?,
      historyType: freezed == historyType
          ? _value.historyType
          : historyType // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      gptType: freezed == gptType
          ? _value.gptType
          : gptType // ignore: cast_nullable_to_non_nullable
              as int?,
      historyDate: freezed == historyDate
          ? _value.historyDate
          : historyDate // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedTs: freezed == updatedTs
          ? _value.updatedTs
          : updatedTs // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTs: freezed == createdTs
          ? _value.createdTs
          : createdTs // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PromptCopyWith<$Res>? get prompt {
    if (_value.prompt == null) {
      return null;
    }

    return $PromptCopyWith<$Res>(_value.prompt!, (value) {
      return _then(_value.copyWith(prompt: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AutoGenerateHistoryModelImplCopyWith<$Res>
    implements $AutoGenerateHistoryModelCopyWith<$Res> {
  factory _$$AutoGenerateHistoryModelImplCopyWith(
          _$AutoGenerateHistoryModelImpl value,
          $Res Function(_$AutoGenerateHistoryModelImpl) then) =
      __$$AutoGenerateHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? userId,
      Prompt? prompt,
      String? historyType,
      String? language,
      int? gptType,
      String? historyDate,
      String? result,
      @JsonKey(name: 'updated_on') String? updatedOn,
      @JsonKey(name: 'updated_ts') String? updatedTs,
      @JsonKey(name: 'created_ts') String? createdTs});

  @override
  $PromptCopyWith<$Res>? get prompt;
}

/// @nodoc
class __$$AutoGenerateHistoryModelImplCopyWithImpl<$Res>
    extends _$AutoGenerateHistoryModelCopyWithImpl<$Res,
        _$AutoGenerateHistoryModelImpl>
    implements _$$AutoGenerateHistoryModelImplCopyWith<$Res> {
  __$$AutoGenerateHistoryModelImplCopyWithImpl(
      _$AutoGenerateHistoryModelImpl _value,
      $Res Function(_$AutoGenerateHistoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? prompt = freezed,
    Object? historyType = freezed,
    Object? language = freezed,
    Object? gptType = freezed,
    Object? historyDate = freezed,
    Object? result = freezed,
    Object? updatedOn = freezed,
    Object? updatedTs = freezed,
    Object? createdTs = freezed,
  }) {
    return _then(_$AutoGenerateHistoryModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as Prompt?,
      historyType: freezed == historyType
          ? _value.historyType
          : historyType // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      gptType: freezed == gptType
          ? _value.gptType
          : gptType // ignore: cast_nullable_to_non_nullable
              as int?,
      historyDate: freezed == historyDate
          ? _value.historyDate
          : historyDate // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedTs: freezed == updatedTs
          ? _value.updatedTs
          : updatedTs // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTs: freezed == createdTs
          ? _value.createdTs
          : createdTs // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AutoGenerateHistoryModelImpl implements _AutoGenerateHistoryModel {
  const _$AutoGenerateHistoryModelImpl(
      {this.id,
      this.userId,
      this.prompt,
      this.historyType,
      this.language = 'en',
      this.gptType = 3,
      this.historyDate,
      this.result,
      @JsonKey(name: 'updated_on') this.updatedOn,
      @JsonKey(name: 'updated_ts') this.updatedTs,
      @JsonKey(name: 'created_ts') this.createdTs});

  factory _$AutoGenerateHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoGenerateHistoryModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? userId;
  @override
  final Prompt? prompt;
  @override
  final String? historyType;
  @override
  @JsonKey()
  final String? language;
  @override
  @JsonKey()
  final int? gptType;
  @override
  final String? historyDate;
  @override
  final String? result;
  @override
  @JsonKey(name: 'updated_on')
  final String? updatedOn;
  @override
  @JsonKey(name: 'updated_ts')
  final String? updatedTs;
  @override
  @JsonKey(name: 'created_ts')
  final String? createdTs;

  @override
  String toString() {
    return 'AutoGenerateHistoryModel(id: $id, userId: $userId, prompt: $prompt, historyType: $historyType, language: $language, gptType: $gptType, historyDate: $historyDate, result: $result, updatedOn: $updatedOn, updatedTs: $updatedTs, createdTs: $createdTs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoGenerateHistoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.historyType, historyType) ||
                other.historyType == historyType) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.gptType, gptType) || other.gptType == gptType) &&
            (identical(other.historyDate, historyDate) ||
                other.historyDate == historyDate) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.updatedOn, updatedOn) ||
                other.updatedOn == updatedOn) &&
            (identical(other.updatedTs, updatedTs) ||
                other.updatedTs == updatedTs) &&
            (identical(other.createdTs, createdTs) ||
                other.createdTs == createdTs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, prompt, historyType,
      language, gptType, historyDate, result, updatedOn, updatedTs, createdTs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoGenerateHistoryModelImplCopyWith<_$AutoGenerateHistoryModelImpl>
      get copyWith => __$$AutoGenerateHistoryModelImplCopyWithImpl<
          _$AutoGenerateHistoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoGenerateHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _AutoGenerateHistoryModel implements AutoGenerateHistoryModel {
  const factory _AutoGenerateHistoryModel(
          {final int? id,
          final int? userId,
          final Prompt? prompt,
          final String? historyType,
          final String? language,
          final int? gptType,
          final String? historyDate,
          final String? result,
          @JsonKey(name: 'updated_on') final String? updatedOn,
          @JsonKey(name: 'updated_ts') final String? updatedTs,
          @JsonKey(name: 'created_ts') final String? createdTs}) =
      _$AutoGenerateHistoryModelImpl;

  factory _AutoGenerateHistoryModel.fromJson(Map<String, dynamic> json) =
      _$AutoGenerateHistoryModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get userId;
  @override
  Prompt? get prompt;
  @override
  String? get historyType;
  @override
  String? get language;
  @override
  int? get gptType;
  @override
  String? get historyDate;
  @override
  String? get result;
  @override
  @JsonKey(name: 'updated_on')
  String? get updatedOn;
  @override
  @JsonKey(name: 'updated_ts')
  String? get updatedTs;
  @override
  @JsonKey(name: 'created_ts')
  String? get createdTs;
  @override
  @JsonKey(ignore: true)
  _$$AutoGenerateHistoryModelImplCopyWith<_$AutoGenerateHistoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Prompt _$PromptFromJson(Map<String, dynamic> json) {
  return _Prompt.fromJson(json);
}

/// @nodoc
mixin _$Prompt {
  String? get summary => throw _privateConstructorUsedError;
  String? get style => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_token')
  int? get maxToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromptCopyWith<Prompt> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromptCopyWith<$Res> {
  factory $PromptCopyWith(Prompt value, $Res Function(Prompt) then) =
      _$PromptCopyWithImpl<$Res, Prompt>;
  @useResult
  $Res call(
      {String? summary,
      String? style,
      @JsonKey(name: 'max_token') int? maxToken});
}

/// @nodoc
class _$PromptCopyWithImpl<$Res, $Val extends Prompt>
    implements $PromptCopyWith<$Res> {
  _$PromptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summary = freezed,
    Object? style = freezed,
    Object? maxToken = freezed,
  }) {
    return _then(_value.copyWith(
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String?,
      maxToken: freezed == maxToken
          ? _value.maxToken
          : maxToken // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromptImplCopyWith<$Res> implements $PromptCopyWith<$Res> {
  factory _$$PromptImplCopyWith(
          _$PromptImpl value, $Res Function(_$PromptImpl) then) =
      __$$PromptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? summary,
      String? style,
      @JsonKey(name: 'max_token') int? maxToken});
}

/// @nodoc
class __$$PromptImplCopyWithImpl<$Res>
    extends _$PromptCopyWithImpl<$Res, _$PromptImpl>
    implements _$$PromptImplCopyWith<$Res> {
  __$$PromptImplCopyWithImpl(
      _$PromptImpl _value, $Res Function(_$PromptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summary = freezed,
    Object? style = freezed,
    Object? maxToken = freezed,
  }) {
    return _then(_$PromptImpl(
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String?,
      maxToken: freezed == maxToken
          ? _value.maxToken
          : maxToken // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromptImpl implements _Prompt {
  const _$PromptImpl(
      {this.summary, this.style, @JsonKey(name: 'max_token') this.maxToken});

  factory _$PromptImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromptImplFromJson(json);

  @override
  final String? summary;
  @override
  final String? style;
  @override
  @JsonKey(name: 'max_token')
  final int? maxToken;

  @override
  String toString() {
    return 'Prompt(summary: $summary, style: $style, maxToken: $maxToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromptImpl &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.maxToken, maxToken) ||
                other.maxToken == maxToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, summary, style, maxToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromptImplCopyWith<_$PromptImpl> get copyWith =>
      __$$PromptImplCopyWithImpl<_$PromptImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromptImplToJson(
      this,
    );
  }
}

abstract class _Prompt implements Prompt {
  const factory _Prompt(
      {final String? summary,
      final String? style,
      @JsonKey(name: 'max_token') final int? maxToken}) = _$PromptImpl;

  factory _Prompt.fromJson(Map<String, dynamic> json) = _$PromptImpl.fromJson;

  @override
  String? get summary;
  @override
  String? get style;
  @override
  @JsonKey(name: 'max_token')
  int? get maxToken;
  @override
  @JsonKey(ignore: true)
  _$$PromptImplCopyWith<_$PromptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
