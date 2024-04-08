// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EducationModel _$EducationModelFromJson(Map<String, dynamic> json) {
  return _EducationModel.fromJson(json);
}

/// @nodoc
mixin _$EducationModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userID => throw _privateConstructorUsedError;
  @JsonKey(name: 'degree_id')
  int? get degreeID => throw _privateConstructorUsedError;
  @JsonKey(name: 'school_name')
  String? get schoolName => throw _privateConstructorUsedError;
  String? get major => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_on')
  String? get updatedOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_ts')
  String? get updatedTs => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_ts')
  String? get createdTs => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EducationModelCopyWith<EducationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationModelCopyWith<$Res> {
  factory $EducationModelCopyWith(
          EducationModel value, $Res Function(EducationModel) then) =
      _$EducationModelCopyWithImpl<$Res, EducationModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userID,
      @JsonKey(name: 'degree_id') int? degreeID,
      @JsonKey(name: 'school_name') String? schoolName,
      String? major,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate,
      @JsonKey(name: 'updated_on') String? updatedOn,
      @JsonKey(name: 'updated_ts') String? updatedTs,
      @JsonKey(name: 'created_ts') String? createdTs,
      int? order,
      String? description});
}

/// @nodoc
class _$EducationModelCopyWithImpl<$Res, $Val extends EducationModel>
    implements $EducationModelCopyWith<$Res> {
  _$EducationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userID = freezed,
    Object? degreeID = freezed,
    Object? schoolName = freezed,
    Object? major = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? updatedOn = freezed,
    Object? updatedTs = freezed,
    Object? createdTs = freezed,
    Object? order = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int?,
      degreeID: freezed == degreeID
          ? _value.degreeID
          : degreeID // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolName: freezed == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String?,
      major: freezed == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
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
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EducationModelImplCopyWith<$Res>
    implements $EducationModelCopyWith<$Res> {
  factory _$$EducationModelImplCopyWith(_$EducationModelImpl value,
          $Res Function(_$EducationModelImpl) then) =
      __$$EducationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userID,
      @JsonKey(name: 'degree_id') int? degreeID,
      @JsonKey(name: 'school_name') String? schoolName,
      String? major,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate,
      @JsonKey(name: 'updated_on') String? updatedOn,
      @JsonKey(name: 'updated_ts') String? updatedTs,
      @JsonKey(name: 'created_ts') String? createdTs,
      int? order,
      String? description});
}

/// @nodoc
class __$$EducationModelImplCopyWithImpl<$Res>
    extends _$EducationModelCopyWithImpl<$Res, _$EducationModelImpl>
    implements _$$EducationModelImplCopyWith<$Res> {
  __$$EducationModelImplCopyWithImpl(
      _$EducationModelImpl _value, $Res Function(_$EducationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userID = freezed,
    Object? degreeID = freezed,
    Object? schoolName = freezed,
    Object? major = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? updatedOn = freezed,
    Object? updatedTs = freezed,
    Object? createdTs = freezed,
    Object? order = freezed,
    Object? description = freezed,
  }) {
    return _then(_$EducationModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int?,
      degreeID: freezed == degreeID
          ? _value.degreeID
          : degreeID // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolName: freezed == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String?,
      major: freezed == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
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
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EducationModelImpl implements _EducationModel {
  const _$EducationModelImpl(
      {this.id = 0,
      @JsonKey(name: 'user_id') this.userID = 0,
      @JsonKey(name: 'degree_id') this.degreeID,
      @JsonKey(name: 'school_name') this.schoolName,
      this.major,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'end_date') this.endDate,
      @JsonKey(name: 'updated_on') this.updatedOn,
      @JsonKey(name: 'updated_ts') this.updatedTs,
      @JsonKey(name: 'created_ts') this.createdTs,
      this.order,
      this.description});

  factory _$EducationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EducationModelImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userID;
  @override
  @JsonKey(name: 'degree_id')
  final int? degreeID;
  @override
  @JsonKey(name: 'school_name')
  final String? schoolName;
  @override
  final String? major;
  @override
  @JsonKey(name: 'start_date')
  final String? startDate;
  @override
  @JsonKey(name: 'end_date')
  final String? endDate;
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
  final int? order;
  @override
  final String? description;

  @override
  String toString() {
    return 'EducationModel(id: $id, userID: $userID, degreeID: $degreeID, schoolName: $schoolName, major: $major, startDate: $startDate, endDate: $endDate, updatedOn: $updatedOn, updatedTs: $updatedTs, createdTs: $createdTs, order: $order, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EducationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.degreeID, degreeID) ||
                other.degreeID == degreeID) &&
            (identical(other.schoolName, schoolName) ||
                other.schoolName == schoolName) &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.updatedOn, updatedOn) ||
                other.updatedOn == updatedOn) &&
            (identical(other.updatedTs, updatedTs) ||
                other.updatedTs == updatedTs) &&
            (identical(other.createdTs, createdTs) ||
                other.createdTs == createdTs) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userID,
      degreeID,
      schoolName,
      major,
      startDate,
      endDate,
      updatedOn,
      updatedTs,
      createdTs,
      order,
      description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EducationModelImplCopyWith<_$EducationModelImpl> get copyWith =>
      __$$EducationModelImplCopyWithImpl<_$EducationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EducationModelImplToJson(
      this,
    );
  }
}

abstract class _EducationModel implements EducationModel {
  const factory _EducationModel(
      {final int? id,
      @JsonKey(name: 'user_id') final int? userID,
      @JsonKey(name: 'degree_id') final int? degreeID,
      @JsonKey(name: 'school_name') final String? schoolName,
      final String? major,
      @JsonKey(name: 'start_date') final String? startDate,
      @JsonKey(name: 'end_date') final String? endDate,
      @JsonKey(name: 'updated_on') final String? updatedOn,
      @JsonKey(name: 'updated_ts') final String? updatedTs,
      @JsonKey(name: 'created_ts') final String? createdTs,
      final int? order,
      final String? description}) = _$EducationModelImpl;

  factory _EducationModel.fromJson(Map<String, dynamic> json) =
      _$EducationModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userID;
  @override
  @JsonKey(name: 'degree_id')
  int? get degreeID;
  @override
  @JsonKey(name: 'school_name')
  String? get schoolName;
  @override
  String? get major;
  @override
  @JsonKey(name: 'start_date')
  String? get startDate;
  @override
  @JsonKey(name: 'end_date')
  String? get endDate;
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
  int? get order;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$EducationModelImplCopyWith<_$EducationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
