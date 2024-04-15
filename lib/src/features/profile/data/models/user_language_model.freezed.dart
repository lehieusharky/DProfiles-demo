// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_language_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserLanguageModel _$UserLanguageModelFromJson(Map<String, dynamic> json) {
  return _UserLanguageModel.fromJson(json);
}

/// @nodoc
mixin _$UserLanguageModel {
  @JsonKey(name: 'language_id')
  int? get languageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_on')
  String? get updatedOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_ts')
  String? get updatedTs => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_ts')
  String? get createdTs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLanguageModelCopyWith<UserLanguageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLanguageModelCopyWith<$Res> {
  factory $UserLanguageModelCopyWith(
          UserLanguageModel value, $Res Function(UserLanguageModel) then) =
      _$UserLanguageModelCopyWithImpl<$Res, UserLanguageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'language_id') int? languageId,
      @JsonKey(name: 'user_id') int? userId,
      int? id,
      @JsonKey(name: 'updated_on') String? updatedOn,
      @JsonKey(name: 'updated_ts') String? updatedTs,
      @JsonKey(name: 'created_ts') String? createdTs});
}

/// @nodoc
class _$UserLanguageModelCopyWithImpl<$Res, $Val extends UserLanguageModel>
    implements $UserLanguageModelCopyWith<$Res> {
  _$UserLanguageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageId = freezed,
    Object? userId = freezed,
    Object? id = freezed,
    Object? updatedOn = freezed,
    Object? updatedTs = freezed,
    Object? createdTs = freezed,
  }) {
    return _then(_value.copyWith(
      languageId: freezed == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
}

/// @nodoc
abstract class _$$UserLanguageModelImplCopyWith<$Res>
    implements $UserLanguageModelCopyWith<$Res> {
  factory _$$UserLanguageModelImplCopyWith(_$UserLanguageModelImpl value,
          $Res Function(_$UserLanguageModelImpl) then) =
      __$$UserLanguageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'language_id') int? languageId,
      @JsonKey(name: 'user_id') int? userId,
      int? id,
      @JsonKey(name: 'updated_on') String? updatedOn,
      @JsonKey(name: 'updated_ts') String? updatedTs,
      @JsonKey(name: 'created_ts') String? createdTs});
}

/// @nodoc
class __$$UserLanguageModelImplCopyWithImpl<$Res>
    extends _$UserLanguageModelCopyWithImpl<$Res, _$UserLanguageModelImpl>
    implements _$$UserLanguageModelImplCopyWith<$Res> {
  __$$UserLanguageModelImplCopyWithImpl(_$UserLanguageModelImpl _value,
      $Res Function(_$UserLanguageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageId = freezed,
    Object? userId = freezed,
    Object? id = freezed,
    Object? updatedOn = freezed,
    Object? updatedTs = freezed,
    Object? createdTs = freezed,
  }) {
    return _then(_$UserLanguageModelImpl(
      languageId: freezed == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$UserLanguageModelImpl implements _UserLanguageModel {
  const _$UserLanguageModelImpl(
      {@JsonKey(name: 'language_id') this.languageId,
      @JsonKey(name: 'user_id') this.userId,
      this.id,
      @JsonKey(name: 'updated_on') this.updatedOn,
      @JsonKey(name: 'updated_ts') this.updatedTs,
      @JsonKey(name: 'created_ts') this.createdTs});

  factory _$UserLanguageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLanguageModelImplFromJson(json);

  @override
  @JsonKey(name: 'language_id')
  final int? languageId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  final int? id;
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
    return 'UserLanguageModel(languageId: $languageId, userId: $userId, id: $id, updatedOn: $updatedOn, updatedTs: $updatedTs, createdTs: $createdTs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLanguageModelImpl &&
            (identical(other.languageId, languageId) ||
                other.languageId == languageId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedOn, updatedOn) ||
                other.updatedOn == updatedOn) &&
            (identical(other.updatedTs, updatedTs) ||
                other.updatedTs == updatedTs) &&
            (identical(other.createdTs, createdTs) ||
                other.createdTs == createdTs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, languageId, userId, id, updatedOn, updatedTs, createdTs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLanguageModelImplCopyWith<_$UserLanguageModelImpl> get copyWith =>
      __$$UserLanguageModelImplCopyWithImpl<_$UserLanguageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLanguageModelImplToJson(
      this,
    );
  }
}

abstract class _UserLanguageModel implements UserLanguageModel {
  const factory _UserLanguageModel(
          {@JsonKey(name: 'language_id') final int? languageId,
          @JsonKey(name: 'user_id') final int? userId,
          final int? id,
          @JsonKey(name: 'updated_on') final String? updatedOn,
          @JsonKey(name: 'updated_ts') final String? updatedTs,
          @JsonKey(name: 'created_ts') final String? createdTs}) =
      _$UserLanguageModelImpl;

  factory _UserLanguageModel.fromJson(Map<String, dynamic> json) =
      _$UserLanguageModelImpl.fromJson;

  @override
  @JsonKey(name: 'language_id')
  int? get languageId;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  int? get id;
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
  _$$UserLanguageModelImplCopyWith<_$UserLanguageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
