// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'digital_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DigitalProfileModel _$DigitalProfileModelFromJson(Map<String, dynamic> json) {
  return _DigitalProfileModel.fromJson(json);
}

/// @nodoc
mixin _$DigitalProfileModel {
  UserInfoModel? get userInfo => throw _privateConstructorUsedError;
  List<EducationModel> get educations => throw _privateConstructorUsedError;
  List<ExperienceModel> get experiences => throw _privateConstructorUsedError;
  List<CertificateModel> get certificates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DigitalProfileModelCopyWith<DigitalProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DigitalProfileModelCopyWith<$Res> {
  factory $DigitalProfileModelCopyWith(
          DigitalProfileModel value, $Res Function(DigitalProfileModel) then) =
      _$DigitalProfileModelCopyWithImpl<$Res, DigitalProfileModel>;
  @useResult
  $Res call(
      {UserInfoModel? userInfo,
      List<EducationModel> educations,
      List<ExperienceModel> experiences,
      List<CertificateModel> certificates});

  $UserInfoModelCopyWith<$Res>? get userInfo;
}

/// @nodoc
class _$DigitalProfileModelCopyWithImpl<$Res, $Val extends DigitalProfileModel>
    implements $DigitalProfileModelCopyWith<$Res> {
  _$DigitalProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = freezed,
    Object? educations = null,
    Object? experiences = null,
    Object? certificates = null,
  }) {
    return _then(_value.copyWith(
      userInfo: freezed == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfoModel?,
      educations: null == educations
          ? _value.educations
          : educations // ignore: cast_nullable_to_non_nullable
              as List<EducationModel>,
      experiences: null == experiences
          ? _value.experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as List<ExperienceModel>,
      certificates: null == certificates
          ? _value.certificates
          : certificates // ignore: cast_nullable_to_non_nullable
              as List<CertificateModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoModelCopyWith<$Res>? get userInfo {
    if (_value.userInfo == null) {
      return null;
    }

    return $UserInfoModelCopyWith<$Res>(_value.userInfo!, (value) {
      return _then(_value.copyWith(userInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DigitalProfileModelImplCopyWith<$Res>
    implements $DigitalProfileModelCopyWith<$Res> {
  factory _$$DigitalProfileModelImplCopyWith(_$DigitalProfileModelImpl value,
          $Res Function(_$DigitalProfileModelImpl) then) =
      __$$DigitalProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserInfoModel? userInfo,
      List<EducationModel> educations,
      List<ExperienceModel> experiences,
      List<CertificateModel> certificates});

  @override
  $UserInfoModelCopyWith<$Res>? get userInfo;
}

/// @nodoc
class __$$DigitalProfileModelImplCopyWithImpl<$Res>
    extends _$DigitalProfileModelCopyWithImpl<$Res, _$DigitalProfileModelImpl>
    implements _$$DigitalProfileModelImplCopyWith<$Res> {
  __$$DigitalProfileModelImplCopyWithImpl(_$DigitalProfileModelImpl _value,
      $Res Function(_$DigitalProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = freezed,
    Object? educations = null,
    Object? experiences = null,
    Object? certificates = null,
  }) {
    return _then(_$DigitalProfileModelImpl(
      userInfo: freezed == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfoModel?,
      educations: null == educations
          ? _value._educations
          : educations // ignore: cast_nullable_to_non_nullable
              as List<EducationModel>,
      experiences: null == experiences
          ? _value._experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as List<ExperienceModel>,
      certificates: null == certificates
          ? _value._certificates
          : certificates // ignore: cast_nullable_to_non_nullable
              as List<CertificateModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DigitalProfileModelImpl implements _DigitalProfileModel {
  const _$DigitalProfileModelImpl(
      {this.userInfo,
      final List<EducationModel> educations = const [],
      final List<ExperienceModel> experiences = const [],
      final List<CertificateModel> certificates = const []})
      : _educations = educations,
        _experiences = experiences,
        _certificates = certificates;

  factory _$DigitalProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DigitalProfileModelImplFromJson(json);

  @override
  final UserInfoModel? userInfo;
  final List<EducationModel> _educations;
  @override
  @JsonKey()
  List<EducationModel> get educations {
    if (_educations is EqualUnmodifiableListView) return _educations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_educations);
  }

  final List<ExperienceModel> _experiences;
  @override
  @JsonKey()
  List<ExperienceModel> get experiences {
    if (_experiences is EqualUnmodifiableListView) return _experiences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_experiences);
  }

  final List<CertificateModel> _certificates;
  @override
  @JsonKey()
  List<CertificateModel> get certificates {
    if (_certificates is EqualUnmodifiableListView) return _certificates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_certificates);
  }

  @override
  String toString() {
    return 'DigitalProfileModel(userInfo: $userInfo, educations: $educations, experiences: $experiences, certificates: $certificates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DigitalProfileModelImpl &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo) &&
            const DeepCollectionEquality()
                .equals(other._educations, _educations) &&
            const DeepCollectionEquality()
                .equals(other._experiences, _experiences) &&
            const DeepCollectionEquality()
                .equals(other._certificates, _certificates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userInfo,
      const DeepCollectionEquality().hash(_educations),
      const DeepCollectionEquality().hash(_experiences),
      const DeepCollectionEquality().hash(_certificates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DigitalProfileModelImplCopyWith<_$DigitalProfileModelImpl> get copyWith =>
      __$$DigitalProfileModelImplCopyWithImpl<_$DigitalProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DigitalProfileModelImplToJson(
      this,
    );
  }
}

abstract class _DigitalProfileModel implements DigitalProfileModel {
  const factory _DigitalProfileModel(
      {final UserInfoModel? userInfo,
      final List<EducationModel> educations,
      final List<ExperienceModel> experiences,
      final List<CertificateModel> certificates}) = _$DigitalProfileModelImpl;

  factory _DigitalProfileModel.fromJson(Map<String, dynamic> json) =
      _$DigitalProfileModelImpl.fromJson;

  @override
  UserInfoModel? get userInfo;
  @override
  List<EducationModel> get educations;
  @override
  List<ExperienceModel> get experiences;
  @override
  List<CertificateModel> get certificates;
  @override
  @JsonKey(ignore: true)
  _$$DigitalProfileModelImplCopyWith<_$DigitalProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
