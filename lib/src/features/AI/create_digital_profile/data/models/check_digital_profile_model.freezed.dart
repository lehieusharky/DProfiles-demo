// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_digital_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckDigitalProfileModel _$CheckDigitalProfileModelFromJson(
    Map<String, dynamic> json) {
  return _CheckDigitalProfileModel.fromJson(json);
}

/// @nodoc
mixin _$CheckDigitalProfileModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_on')
  String? get updatedOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_ts')
  String? get updatedTs => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_ts')
  String? get createdTs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckDigitalProfileModelCopyWith<CheckDigitalProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckDigitalProfileModelCopyWith<$Res> {
  factory $CheckDigitalProfileModelCopyWith(CheckDigitalProfileModel value,
          $Res Function(CheckDigitalProfileModel) then) =
      _$CheckDigitalProfileModelCopyWithImpl<$Res, CheckDigitalProfileModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      Data? data,
      @JsonKey(name: 'updated_on') String? updatedOn,
      @JsonKey(name: 'updated_ts') String? updatedTs,
      @JsonKey(name: 'created_ts') String? createdTs});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CheckDigitalProfileModelCopyWithImpl<$Res,
        $Val extends CheckDigitalProfileModel>
    implements $CheckDigitalProfileModelCopyWith<$Res> {
  _$CheckDigitalProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
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
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckDigitalProfileModelImplCopyWith<$Res>
    implements $CheckDigitalProfileModelCopyWith<$Res> {
  factory _$$CheckDigitalProfileModelImplCopyWith(
          _$CheckDigitalProfileModelImpl value,
          $Res Function(_$CheckDigitalProfileModelImpl) then) =
      __$$CheckDigitalProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      Data? data,
      @JsonKey(name: 'updated_on') String? updatedOn,
      @JsonKey(name: 'updated_ts') String? updatedTs,
      @JsonKey(name: 'created_ts') String? createdTs});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CheckDigitalProfileModelImplCopyWithImpl<$Res>
    extends _$CheckDigitalProfileModelCopyWithImpl<$Res,
        _$CheckDigitalProfileModelImpl>
    implements _$$CheckDigitalProfileModelImplCopyWith<$Res> {
  __$$CheckDigitalProfileModelImplCopyWithImpl(
      _$CheckDigitalProfileModelImpl _value,
      $Res Function(_$CheckDigitalProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? data = freezed,
    Object? updatedOn = freezed,
    Object? updatedTs = freezed,
    Object? createdTs = freezed,
  }) {
    return _then(_$CheckDigitalProfileModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
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
class _$CheckDigitalProfileModelImpl implements _CheckDigitalProfileModel {
  const _$CheckDigitalProfileModelImpl(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      this.data,
      @JsonKey(name: 'updated_on') this.updatedOn,
      @JsonKey(name: 'updated_ts') this.updatedTs,
      @JsonKey(name: 'created_ts') this.createdTs});

  factory _$CheckDigitalProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckDigitalProfileModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  final Data? data;
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
    return 'CheckDigitalProfileModel(id: $id, userId: $userId, data: $data, updatedOn: $updatedOn, updatedTs: $updatedTs, createdTs: $createdTs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckDigitalProfileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.data, data) || other.data == data) &&
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
      runtimeType, id, userId, data, updatedOn, updatedTs, createdTs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckDigitalProfileModelImplCopyWith<_$CheckDigitalProfileModelImpl>
      get copyWith => __$$CheckDigitalProfileModelImplCopyWithImpl<
          _$CheckDigitalProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckDigitalProfileModelImplToJson(
      this,
    );
  }
}

abstract class _CheckDigitalProfileModel implements CheckDigitalProfileModel {
  const factory _CheckDigitalProfileModel(
          {final int? id,
          @JsonKey(name: 'user_id') final int? userId,
          final Data? data,
          @JsonKey(name: 'updated_on') final String? updatedOn,
          @JsonKey(name: 'updated_ts') final String? updatedTs,
          @JsonKey(name: 'created_ts') final String? createdTs}) =
      _$CheckDigitalProfileModelImpl;

  factory _CheckDigitalProfileModel.fromJson(Map<String, dynamic> json) =
      _$CheckDigitalProfileModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  Data? get data;
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
  _$$CheckDigitalProfileModelImplCopyWith<_$CheckDigitalProfileModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: '_to')
  String? get sTo => throw _privateConstructorUsedError;
  @JsonKey(name: '_name')
  String? get sName => throw _privateConstructorUsedError;
  @JsonKey(name: '_bod')
  String? get sBod => throw _privateConstructorUsedError;
  @JsonKey(name: '_nationality')
  String? get sNationality => throw _privateConstructorUsedError;
  @JsonKey(name: '_idCardNumber')
  String? get sIdCardNumber => throw _privateConstructorUsedError;
  @JsonKey(name: '_school')
  String? get sSchool => throw _privateConstructorUsedError;
  @JsonKey(name: '_degree')
  String? get sDegree => throw _privateConstructorUsedError;
  @JsonKey(name: '_field')
  String? get sField => throw _privateConstructorUsedError;
  @JsonKey(name: '_extra')
  String? get sExtra => throw _privateConstructorUsedError;
  @JsonKey(name: '_hidden')
  bool? get bHidden => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: '_to') String? sTo,
      @JsonKey(name: '_name') String? sName,
      @JsonKey(name: '_bod') String? sBod,
      @JsonKey(name: '_nationality') String? sNationality,
      @JsonKey(name: '_idCardNumber') String? sIdCardNumber,
      @JsonKey(name: '_school') String? sSchool,
      @JsonKey(name: '_degree') String? sDegree,
      @JsonKey(name: '_field') String? sField,
      @JsonKey(name: '_extra') String? sExtra,
      @JsonKey(name: '_hidden') bool? bHidden});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sTo = freezed,
    Object? sName = freezed,
    Object? sBod = freezed,
    Object? sNationality = freezed,
    Object? sIdCardNumber = freezed,
    Object? sSchool = freezed,
    Object? sDegree = freezed,
    Object? sField = freezed,
    Object? sExtra = freezed,
    Object? bHidden = freezed,
  }) {
    return _then(_value.copyWith(
      sTo: freezed == sTo
          ? _value.sTo
          : sTo // ignore: cast_nullable_to_non_nullable
              as String?,
      sName: freezed == sName
          ? _value.sName
          : sName // ignore: cast_nullable_to_non_nullable
              as String?,
      sBod: freezed == sBod
          ? _value.sBod
          : sBod // ignore: cast_nullable_to_non_nullable
              as String?,
      sNationality: freezed == sNationality
          ? _value.sNationality
          : sNationality // ignore: cast_nullable_to_non_nullable
              as String?,
      sIdCardNumber: freezed == sIdCardNumber
          ? _value.sIdCardNumber
          : sIdCardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      sSchool: freezed == sSchool
          ? _value.sSchool
          : sSchool // ignore: cast_nullable_to_non_nullable
              as String?,
      sDegree: freezed == sDegree
          ? _value.sDegree
          : sDegree // ignore: cast_nullable_to_non_nullable
              as String?,
      sField: freezed == sField
          ? _value.sField
          : sField // ignore: cast_nullable_to_non_nullable
              as String?,
      sExtra: freezed == sExtra
          ? _value.sExtra
          : sExtra // ignore: cast_nullable_to_non_nullable
              as String?,
      bHidden: freezed == bHidden
          ? _value.bHidden
          : bHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_to') String? sTo,
      @JsonKey(name: '_name') String? sName,
      @JsonKey(name: '_bod') String? sBod,
      @JsonKey(name: '_nationality') String? sNationality,
      @JsonKey(name: '_idCardNumber') String? sIdCardNumber,
      @JsonKey(name: '_school') String? sSchool,
      @JsonKey(name: '_degree') String? sDegree,
      @JsonKey(name: '_field') String? sField,
      @JsonKey(name: '_extra') String? sExtra,
      @JsonKey(name: '_hidden') bool? bHidden});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sTo = freezed,
    Object? sName = freezed,
    Object? sBod = freezed,
    Object? sNationality = freezed,
    Object? sIdCardNumber = freezed,
    Object? sSchool = freezed,
    Object? sDegree = freezed,
    Object? sField = freezed,
    Object? sExtra = freezed,
    Object? bHidden = freezed,
  }) {
    return _then(_$DataImpl(
      sTo: freezed == sTo
          ? _value.sTo
          : sTo // ignore: cast_nullable_to_non_nullable
              as String?,
      sName: freezed == sName
          ? _value.sName
          : sName // ignore: cast_nullable_to_non_nullable
              as String?,
      sBod: freezed == sBod
          ? _value.sBod
          : sBod // ignore: cast_nullable_to_non_nullable
              as String?,
      sNationality: freezed == sNationality
          ? _value.sNationality
          : sNationality // ignore: cast_nullable_to_non_nullable
              as String?,
      sIdCardNumber: freezed == sIdCardNumber
          ? _value.sIdCardNumber
          : sIdCardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      sSchool: freezed == sSchool
          ? _value.sSchool
          : sSchool // ignore: cast_nullable_to_non_nullable
              as String?,
      sDegree: freezed == sDegree
          ? _value.sDegree
          : sDegree // ignore: cast_nullable_to_non_nullable
              as String?,
      sField: freezed == sField
          ? _value.sField
          : sField // ignore: cast_nullable_to_non_nullable
              as String?,
      sExtra: freezed == sExtra
          ? _value.sExtra
          : sExtra // ignore: cast_nullable_to_non_nullable
              as String?,
      bHidden: freezed == bHidden
          ? _value.bHidden
          : bHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: '_to') this.sTo,
      @JsonKey(name: '_name') this.sName,
      @JsonKey(name: '_bod') this.sBod,
      @JsonKey(name: '_nationality') this.sNationality,
      @JsonKey(name: '_idCardNumber') this.sIdCardNumber,
      @JsonKey(name: '_school') this.sSchool,
      @JsonKey(name: '_degree') this.sDegree,
      @JsonKey(name: '_field') this.sField,
      @JsonKey(name: '_extra') this.sExtra,
      @JsonKey(name: '_hidden') this.bHidden});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: '_to')
  final String? sTo;
  @override
  @JsonKey(name: '_name')
  final String? sName;
  @override
  @JsonKey(name: '_bod')
  final String? sBod;
  @override
  @JsonKey(name: '_nationality')
  final String? sNationality;
  @override
  @JsonKey(name: '_idCardNumber')
  final String? sIdCardNumber;
  @override
  @JsonKey(name: '_school')
  final String? sSchool;
  @override
  @JsonKey(name: '_degree')
  final String? sDegree;
  @override
  @JsonKey(name: '_field')
  final String? sField;
  @override
  @JsonKey(name: '_extra')
  final String? sExtra;
  @override
  @JsonKey(name: '_hidden')
  final bool? bHidden;

  @override
  String toString() {
    return 'Data(sTo: $sTo, sName: $sName, sBod: $sBod, sNationality: $sNationality, sIdCardNumber: $sIdCardNumber, sSchool: $sSchool, sDegree: $sDegree, sField: $sField, sExtra: $sExtra, bHidden: $bHidden)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.sTo, sTo) || other.sTo == sTo) &&
            (identical(other.sName, sName) || other.sName == sName) &&
            (identical(other.sBod, sBod) || other.sBod == sBod) &&
            (identical(other.sNationality, sNationality) ||
                other.sNationality == sNationality) &&
            (identical(other.sIdCardNumber, sIdCardNumber) ||
                other.sIdCardNumber == sIdCardNumber) &&
            (identical(other.sSchool, sSchool) || other.sSchool == sSchool) &&
            (identical(other.sDegree, sDegree) || other.sDegree == sDegree) &&
            (identical(other.sField, sField) || other.sField == sField) &&
            (identical(other.sExtra, sExtra) || other.sExtra == sExtra) &&
            (identical(other.bHidden, bHidden) || other.bHidden == bHidden));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sTo, sName, sBod, sNationality,
      sIdCardNumber, sSchool, sDegree, sField, sExtra, bHidden);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: '_to') final String? sTo,
      @JsonKey(name: '_name') final String? sName,
      @JsonKey(name: '_bod') final String? sBod,
      @JsonKey(name: '_nationality') final String? sNationality,
      @JsonKey(name: '_idCardNumber') final String? sIdCardNumber,
      @JsonKey(name: '_school') final String? sSchool,
      @JsonKey(name: '_degree') final String? sDegree,
      @JsonKey(name: '_field') final String? sField,
      @JsonKey(name: '_extra') final String? sExtra,
      @JsonKey(name: '_hidden') final bool? bHidden}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: '_to')
  String? get sTo;
  @override
  @JsonKey(name: '_name')
  String? get sName;
  @override
  @JsonKey(name: '_bod')
  String? get sBod;
  @override
  @JsonKey(name: '_nationality')
  String? get sNationality;
  @override
  @JsonKey(name: '_idCardNumber')
  String? get sIdCardNumber;
  @override
  @JsonKey(name: '_school')
  String? get sSchool;
  @override
  @JsonKey(name: '_degree')
  String? get sDegree;
  @override
  @JsonKey(name: '_field')
  String? get sField;
  @override
  @JsonKey(name: '_extra')
  String? get sExtra;
  @override
  @JsonKey(name: '_hidden')
  bool? get bHidden;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
