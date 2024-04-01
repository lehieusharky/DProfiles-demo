// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'certificate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CertificateModel _$CertificateModelFromJson(Map<String, dynamic> json) {
  return _CertificateModel.fromJson(json);
}

/// @nodoc
mixin _$CertificateModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get organization => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: 'credential_id')
  String? get credentialId => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_on')
  String? get updatedOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_ts')
  String? get updatedTs => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_ts')
  String? get createdTs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CertificateModelCopyWith<CertificateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificateModelCopyWith<$Res> {
  factory $CertificateModelCopyWith(
          CertificateModel value, $Res Function(CertificateModel) then) =
      _$CertificateModelCopyWithImpl<$Res, CertificateModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      String? name,
      String? organization,
      String? date,
      String? link,
      @JsonKey(name: 'credential_id') String? credentialId,
      int? order,
      @JsonKey(name: 'updated_on') String? updatedOn,
      @JsonKey(name: 'updated_ts') String? updatedTs,
      @JsonKey(name: 'created_ts') String? createdTs});
}

/// @nodoc
class _$CertificateModelCopyWithImpl<$Res, $Val extends CertificateModel>
    implements $CertificateModelCopyWith<$Res> {
  _$CertificateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? name = freezed,
    Object? organization = freezed,
    Object? date = freezed,
    Object? link = freezed,
    Object? credentialId = freezed,
    Object? order = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      credentialId: freezed == credentialId
          ? _value.credentialId
          : credentialId // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
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
abstract class _$$CertificateModelImplCopyWith<$Res>
    implements $CertificateModelCopyWith<$Res> {
  factory _$$CertificateModelImplCopyWith(_$CertificateModelImpl value,
          $Res Function(_$CertificateModelImpl) then) =
      __$$CertificateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      String? name,
      String? organization,
      String? date,
      String? link,
      @JsonKey(name: 'credential_id') String? credentialId,
      int? order,
      @JsonKey(name: 'updated_on') String? updatedOn,
      @JsonKey(name: 'updated_ts') String? updatedTs,
      @JsonKey(name: 'created_ts') String? createdTs});
}

/// @nodoc
class __$$CertificateModelImplCopyWithImpl<$Res>
    extends _$CertificateModelCopyWithImpl<$Res, _$CertificateModelImpl>
    implements _$$CertificateModelImplCopyWith<$Res> {
  __$$CertificateModelImplCopyWithImpl(_$CertificateModelImpl _value,
      $Res Function(_$CertificateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? name = freezed,
    Object? organization = freezed,
    Object? date = freezed,
    Object? link = freezed,
    Object? credentialId = freezed,
    Object? order = freezed,
    Object? updatedOn = freezed,
    Object? updatedTs = freezed,
    Object? createdTs = freezed,
  }) {
    return _then(_$CertificateModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      credentialId: freezed == credentialId
          ? _value.credentialId
          : credentialId // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
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
class _$CertificateModelImpl implements _CertificateModel {
  const _$CertificateModelImpl(
      {this.id = 0,
      @JsonKey(name: 'user_id') this.userId = 0,
      this.name,
      this.organization,
      this.date,
      this.link = "https://www.example.com",
      @JsonKey(name: 'credential_id') this.credentialId,
      this.order,
      @JsonKey(name: 'updated_on') this.updatedOn,
      @JsonKey(name: 'updated_ts') this.updatedTs,
      @JsonKey(name: 'created_ts') this.createdTs});

  factory _$CertificateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CertificateModelImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  final String? name;
  @override
  final String? organization;
  @override
  final String? date;
  @override
  @JsonKey()
  final String? link;
  @override
  @JsonKey(name: 'credential_id')
  final String? credentialId;
  @override
  final int? order;
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
    return 'CertificateModel(id: $id, userId: $userId, name: $name, organization: $organization, date: $date, link: $link, credentialId: $credentialId, order: $order, updatedOn: $updatedOn, updatedTs: $updatedTs, createdTs: $createdTs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CertificateModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.credentialId, credentialId) ||
                other.credentialId == credentialId) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.updatedOn, updatedOn) ||
                other.updatedOn == updatedOn) &&
            (identical(other.updatedTs, updatedTs) ||
                other.updatedTs == updatedTs) &&
            (identical(other.createdTs, createdTs) ||
                other.createdTs == createdTs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, name, organization,
      date, link, credentialId, order, updatedOn, updatedTs, createdTs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CertificateModelImplCopyWith<_$CertificateModelImpl> get copyWith =>
      __$$CertificateModelImplCopyWithImpl<_$CertificateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CertificateModelImplToJson(
      this,
    );
  }
}

abstract class _CertificateModel implements CertificateModel {
  const factory _CertificateModel(
          {final int? id,
          @JsonKey(name: 'user_id') final int? userId,
          final String? name,
          final String? organization,
          final String? date,
          final String? link,
          @JsonKey(name: 'credential_id') final String? credentialId,
          final int? order,
          @JsonKey(name: 'updated_on') final String? updatedOn,
          @JsonKey(name: 'updated_ts') final String? updatedTs,
          @JsonKey(name: 'created_ts') final String? createdTs}) =
      _$CertificateModelImpl;

  factory _CertificateModel.fromJson(Map<String, dynamic> json) =
      _$CertificateModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  String? get name;
  @override
  String? get organization;
  @override
  String? get date;
  @override
  String? get link;
  @override
  @JsonKey(name: 'credential_id')
  String? get credentialId;
  @override
  int? get order;
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
  _$$CertificateModelImplCopyWith<_$CertificateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
