// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_skill_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PublicSkillModel _$PublicSkillModelFromJson(Map<String, dynamic> json) {
  return _PublicSkillModel.fromJson(json);
}

/// @nodoc
mixin _$PublicSkillModel {
  int? get id => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  int? get skillId => throw _privateConstructorUsedError;
  int? get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_on')
  String? get updatedOn => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_ts')
  String? get updatedTs => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_ts')
  String? get createdTs => throw _privateConstructorUsedError;
  Skill? get skill => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublicSkillModelCopyWith<PublicSkillModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicSkillModelCopyWith<$Res> {
  factory $PublicSkillModelCopyWith(
          PublicSkillModel value, $Res Function(PublicSkillModel) then) =
      _$PublicSkillModelCopyWithImpl<$Res, PublicSkillModel>;
  @useResult
  $Res call(
      {int? id,
      int? userId,
      int? skillId,
      int? level,
      @JsonKey(name: 'updated_on') String? updatedOn,
      int? order,
      @JsonKey(name: 'updated_ts') String? updatedTs,
      @JsonKey(name: 'created_ts') String? createdTs,
      Skill? skill});

  $SkillCopyWith<$Res>? get skill;
}

/// @nodoc
class _$PublicSkillModelCopyWithImpl<$Res, $Val extends PublicSkillModel>
    implements $PublicSkillModelCopyWith<$Res> {
  _$PublicSkillModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? skillId = freezed,
    Object? level = freezed,
    Object? updatedOn = freezed,
    Object? order = freezed,
    Object? updatedTs = freezed,
    Object? createdTs = freezed,
    Object? skill = freezed,
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
      skillId: freezed == skillId
          ? _value.skillId
          : skillId // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedTs: freezed == updatedTs
          ? _value.updatedTs
          : updatedTs // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTs: freezed == createdTs
          ? _value.createdTs
          : createdTs // ignore: cast_nullable_to_non_nullable
              as String?,
      skill: freezed == skill
          ? _value.skill
          : skill // ignore: cast_nullable_to_non_nullable
              as Skill?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SkillCopyWith<$Res>? get skill {
    if (_value.skill == null) {
      return null;
    }

    return $SkillCopyWith<$Res>(_value.skill!, (value) {
      return _then(_value.copyWith(skill: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PublicSkillModelImplCopyWith<$Res>
    implements $PublicSkillModelCopyWith<$Res> {
  factory _$$PublicSkillModelImplCopyWith(_$PublicSkillModelImpl value,
          $Res Function(_$PublicSkillModelImpl) then) =
      __$$PublicSkillModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? userId,
      int? skillId,
      int? level,
      @JsonKey(name: 'updated_on') String? updatedOn,
      int? order,
      @JsonKey(name: 'updated_ts') String? updatedTs,
      @JsonKey(name: 'created_ts') String? createdTs,
      Skill? skill});

  @override
  $SkillCopyWith<$Res>? get skill;
}

/// @nodoc
class __$$PublicSkillModelImplCopyWithImpl<$Res>
    extends _$PublicSkillModelCopyWithImpl<$Res, _$PublicSkillModelImpl>
    implements _$$PublicSkillModelImplCopyWith<$Res> {
  __$$PublicSkillModelImplCopyWithImpl(_$PublicSkillModelImpl _value,
      $Res Function(_$PublicSkillModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? skillId = freezed,
    Object? level = freezed,
    Object? updatedOn = freezed,
    Object? order = freezed,
    Object? updatedTs = freezed,
    Object? createdTs = freezed,
    Object? skill = freezed,
  }) {
    return _then(_$PublicSkillModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      skillId: freezed == skillId
          ? _value.skillId
          : skillId // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedTs: freezed == updatedTs
          ? _value.updatedTs
          : updatedTs // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTs: freezed == createdTs
          ? _value.createdTs
          : createdTs // ignore: cast_nullable_to_non_nullable
              as String?,
      skill: freezed == skill
          ? _value.skill
          : skill // ignore: cast_nullable_to_non_nullable
              as Skill?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PublicSkillModelImpl implements _PublicSkillModel {
  const _$PublicSkillModelImpl(
      {this.id,
      this.userId,
      this.skillId,
      this.level,
      @JsonKey(name: 'updated_on') this.updatedOn,
      this.order,
      @JsonKey(name: 'updated_ts') this.updatedTs,
      @JsonKey(name: 'created_ts') this.createdTs,
      this.skill});

  factory _$PublicSkillModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PublicSkillModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? userId;
  @override
  final int? skillId;
  @override
  final int? level;
  @override
  @JsonKey(name: 'updated_on')
  final String? updatedOn;
  @override
  final int? order;
  @override
  @JsonKey(name: 'updated_ts')
  final String? updatedTs;
  @override
  @JsonKey(name: 'created_ts')
  final String? createdTs;
  @override
  final Skill? skill;

  @override
  String toString() {
    return 'PublicSkillModel(id: $id, userId: $userId, skillId: $skillId, level: $level, updatedOn: $updatedOn, order: $order, updatedTs: $updatedTs, createdTs: $createdTs, skill: $skill)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicSkillModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.skillId, skillId) || other.skillId == skillId) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.updatedOn, updatedOn) ||
                other.updatedOn == updatedOn) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.updatedTs, updatedTs) ||
                other.updatedTs == updatedTs) &&
            (identical(other.createdTs, createdTs) ||
                other.createdTs == createdTs) &&
            (identical(other.skill, skill) || other.skill == skill));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, skillId, level,
      updatedOn, order, updatedTs, createdTs, skill);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicSkillModelImplCopyWith<_$PublicSkillModelImpl> get copyWith =>
      __$$PublicSkillModelImplCopyWithImpl<_$PublicSkillModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PublicSkillModelImplToJson(
      this,
    );
  }
}

abstract class _PublicSkillModel implements PublicSkillModel {
  const factory _PublicSkillModel(
      {final int? id,
      final int? userId,
      final int? skillId,
      final int? level,
      @JsonKey(name: 'updated_on') final String? updatedOn,
      final int? order,
      @JsonKey(name: 'updated_ts') final String? updatedTs,
      @JsonKey(name: 'created_ts') final String? createdTs,
      final Skill? skill}) = _$PublicSkillModelImpl;

  factory _PublicSkillModel.fromJson(Map<String, dynamic> json) =
      _$PublicSkillModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get userId;
  @override
  int? get skillId;
  @override
  int? get level;
  @override
  @JsonKey(name: 'updated_on')
  String? get updatedOn;
  @override
  int? get order;
  @override
  @JsonKey(name: 'updated_ts')
  String? get updatedTs;
  @override
  @JsonKey(name: 'created_ts')
  String? get createdTs;
  @override
  Skill? get skill;
  @override
  @JsonKey(ignore: true)
  _$$PublicSkillModelImplCopyWith<_$PublicSkillModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Skill _$SkillFromJson(Map<String, dynamic> json) {
  return _Skill.fromJson(json);
}

/// @nodoc
mixin _$Skill {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get language => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillCopyWith<Skill> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillCopyWith<$Res> {
  factory $SkillCopyWith(Skill value, $Res Function(Skill) then) =
      _$SkillCopyWithImpl<$Res, Skill>;
  @useResult
  $Res call({int? id, String? name, int? language, int? order});
}

/// @nodoc
class _$SkillCopyWithImpl<$Res, $Val extends Skill>
    implements $SkillCopyWith<$Res> {
  _$SkillCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? language = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as int?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SkillImplCopyWith<$Res> implements $SkillCopyWith<$Res> {
  factory _$$SkillImplCopyWith(
          _$SkillImpl value, $Res Function(_$SkillImpl) then) =
      __$$SkillImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, int? language, int? order});
}

/// @nodoc
class __$$SkillImplCopyWithImpl<$Res>
    extends _$SkillCopyWithImpl<$Res, _$SkillImpl>
    implements _$$SkillImplCopyWith<$Res> {
  __$$SkillImplCopyWithImpl(
      _$SkillImpl _value, $Res Function(_$SkillImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? language = freezed,
    Object? order = freezed,
  }) {
    return _then(_$SkillImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as int?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SkillImpl implements _Skill {
  const _$SkillImpl({this.id, this.name, this.language, this.order});

  factory _$SkillImpl.fromJson(Map<String, dynamic> json) =>
      _$$SkillImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? language;
  @override
  final int? order;

  @override
  String toString() {
    return 'Skill(id: $id, name: $name, language: $language, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkillImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, language, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SkillImplCopyWith<_$SkillImpl> get copyWith =>
      __$$SkillImplCopyWithImpl<_$SkillImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SkillImplToJson(
      this,
    );
  }
}

abstract class _Skill implements Skill {
  const factory _Skill(
      {final int? id,
      final String? name,
      final int? language,
      final int? order}) = _$SkillImpl;

  factory _Skill.fromJson(Map<String, dynamic> json) = _$SkillImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get language;
  @override
  int? get order;
  @override
  @JsonKey(ignore: true)
  _$$SkillImplCopyWith<_$SkillImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
