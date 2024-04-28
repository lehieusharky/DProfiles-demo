// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PublicProfileEvent {
  String get userName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName) getBasicInfo,
    required TResult Function(String userName) getEducations,
    required TResult Function(String userName) getCertificates,
    required TResult Function(String userName) getExperiences,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? getBasicInfo,
    TResult? Function(String userName)? getEducations,
    TResult? Function(String userName)? getCertificates,
    TResult? Function(String userName)? getExperiences,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? getBasicInfo,
    TResult Function(String userName)? getEducations,
    TResult Function(String userName)? getCertificates,
    TResult Function(String userName)? getExperiences,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PublicProfileGetBasicInfo value) getBasicInfo,
    required TResult Function(PublicProfileGetEducation value) getEducations,
    required TResult Function(PublicProfileGetCertificates value)
        getCertificates,
    required TResult Function(PublicProfileGetExperiences value) getExperiences,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PublicProfileGetBasicInfo value)? getBasicInfo,
    TResult? Function(PublicProfileGetEducation value)? getEducations,
    TResult? Function(PublicProfileGetCertificates value)? getCertificates,
    TResult? Function(PublicProfileGetExperiences value)? getExperiences,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PublicProfileGetBasicInfo value)? getBasicInfo,
    TResult Function(PublicProfileGetEducation value)? getEducations,
    TResult Function(PublicProfileGetCertificates value)? getCertificates,
    TResult Function(PublicProfileGetExperiences value)? getExperiences,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PublicProfileEventCopyWith<PublicProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicProfileEventCopyWith<$Res> {
  factory $PublicProfileEventCopyWith(
          PublicProfileEvent value, $Res Function(PublicProfileEvent) then) =
      _$PublicProfileEventCopyWithImpl<$Res, PublicProfileEvent>;
  @useResult
  $Res call({String userName});
}

/// @nodoc
class _$PublicProfileEventCopyWithImpl<$Res, $Val extends PublicProfileEvent>
    implements $PublicProfileEventCopyWith<$Res> {
  _$PublicProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PublicProfileGetBasicInfoImplCopyWith<$Res>
    implements $PublicProfileEventCopyWith<$Res> {
  factory _$$PublicProfileGetBasicInfoImplCopyWith(
          _$PublicProfileGetBasicInfoImpl value,
          $Res Function(_$PublicProfileGetBasicInfoImpl) then) =
      __$$PublicProfileGetBasicInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName});
}

/// @nodoc
class __$$PublicProfileGetBasicInfoImplCopyWithImpl<$Res>
    extends _$PublicProfileEventCopyWithImpl<$Res,
        _$PublicProfileGetBasicInfoImpl>
    implements _$$PublicProfileGetBasicInfoImplCopyWith<$Res> {
  __$$PublicProfileGetBasicInfoImplCopyWithImpl(
      _$PublicProfileGetBasicInfoImpl _value,
      $Res Function(_$PublicProfileGetBasicInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
  }) {
    return _then(_$PublicProfileGetBasicInfoImpl(
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PublicProfileGetBasicInfoImpl implements PublicProfileGetBasicInfo {
  const _$PublicProfileGetBasicInfoImpl(this.userName);

  @override
  final String userName;

  @override
  String toString() {
    return 'PublicProfileEvent.getBasicInfo(userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicProfileGetBasicInfoImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicProfileGetBasicInfoImplCopyWith<_$PublicProfileGetBasicInfoImpl>
      get copyWith => __$$PublicProfileGetBasicInfoImplCopyWithImpl<
          _$PublicProfileGetBasicInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName) getBasicInfo,
    required TResult Function(String userName) getEducations,
    required TResult Function(String userName) getCertificates,
    required TResult Function(String userName) getExperiences,
  }) {
    return getBasicInfo(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? getBasicInfo,
    TResult? Function(String userName)? getEducations,
    TResult? Function(String userName)? getCertificates,
    TResult? Function(String userName)? getExperiences,
  }) {
    return getBasicInfo?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? getBasicInfo,
    TResult Function(String userName)? getEducations,
    TResult Function(String userName)? getCertificates,
    TResult Function(String userName)? getExperiences,
    required TResult orElse(),
  }) {
    if (getBasicInfo != null) {
      return getBasicInfo(userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PublicProfileGetBasicInfo value) getBasicInfo,
    required TResult Function(PublicProfileGetEducation value) getEducations,
    required TResult Function(PublicProfileGetCertificates value)
        getCertificates,
    required TResult Function(PublicProfileGetExperiences value) getExperiences,
  }) {
    return getBasicInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PublicProfileGetBasicInfo value)? getBasicInfo,
    TResult? Function(PublicProfileGetEducation value)? getEducations,
    TResult? Function(PublicProfileGetCertificates value)? getCertificates,
    TResult? Function(PublicProfileGetExperiences value)? getExperiences,
  }) {
    return getBasicInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PublicProfileGetBasicInfo value)? getBasicInfo,
    TResult Function(PublicProfileGetEducation value)? getEducations,
    TResult Function(PublicProfileGetCertificates value)? getCertificates,
    TResult Function(PublicProfileGetExperiences value)? getExperiences,
    required TResult orElse(),
  }) {
    if (getBasicInfo != null) {
      return getBasicInfo(this);
    }
    return orElse();
  }
}

abstract class PublicProfileGetBasicInfo implements PublicProfileEvent {
  const factory PublicProfileGetBasicInfo(final String userName) =
      _$PublicProfileGetBasicInfoImpl;

  @override
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$$PublicProfileGetBasicInfoImplCopyWith<_$PublicProfileGetBasicInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PublicProfileGetEducationImplCopyWith<$Res>
    implements $PublicProfileEventCopyWith<$Res> {
  factory _$$PublicProfileGetEducationImplCopyWith(
          _$PublicProfileGetEducationImpl value,
          $Res Function(_$PublicProfileGetEducationImpl) then) =
      __$$PublicProfileGetEducationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName});
}

/// @nodoc
class __$$PublicProfileGetEducationImplCopyWithImpl<$Res>
    extends _$PublicProfileEventCopyWithImpl<$Res,
        _$PublicProfileGetEducationImpl>
    implements _$$PublicProfileGetEducationImplCopyWith<$Res> {
  __$$PublicProfileGetEducationImplCopyWithImpl(
      _$PublicProfileGetEducationImpl _value,
      $Res Function(_$PublicProfileGetEducationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
  }) {
    return _then(_$PublicProfileGetEducationImpl(
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PublicProfileGetEducationImpl implements PublicProfileGetEducation {
  const _$PublicProfileGetEducationImpl(this.userName);

  @override
  final String userName;

  @override
  String toString() {
    return 'PublicProfileEvent.getEducations(userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicProfileGetEducationImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicProfileGetEducationImplCopyWith<_$PublicProfileGetEducationImpl>
      get copyWith => __$$PublicProfileGetEducationImplCopyWithImpl<
          _$PublicProfileGetEducationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName) getBasicInfo,
    required TResult Function(String userName) getEducations,
    required TResult Function(String userName) getCertificates,
    required TResult Function(String userName) getExperiences,
  }) {
    return getEducations(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? getBasicInfo,
    TResult? Function(String userName)? getEducations,
    TResult? Function(String userName)? getCertificates,
    TResult? Function(String userName)? getExperiences,
  }) {
    return getEducations?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? getBasicInfo,
    TResult Function(String userName)? getEducations,
    TResult Function(String userName)? getCertificates,
    TResult Function(String userName)? getExperiences,
    required TResult orElse(),
  }) {
    if (getEducations != null) {
      return getEducations(userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PublicProfileGetBasicInfo value) getBasicInfo,
    required TResult Function(PublicProfileGetEducation value) getEducations,
    required TResult Function(PublicProfileGetCertificates value)
        getCertificates,
    required TResult Function(PublicProfileGetExperiences value) getExperiences,
  }) {
    return getEducations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PublicProfileGetBasicInfo value)? getBasicInfo,
    TResult? Function(PublicProfileGetEducation value)? getEducations,
    TResult? Function(PublicProfileGetCertificates value)? getCertificates,
    TResult? Function(PublicProfileGetExperiences value)? getExperiences,
  }) {
    return getEducations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PublicProfileGetBasicInfo value)? getBasicInfo,
    TResult Function(PublicProfileGetEducation value)? getEducations,
    TResult Function(PublicProfileGetCertificates value)? getCertificates,
    TResult Function(PublicProfileGetExperiences value)? getExperiences,
    required TResult orElse(),
  }) {
    if (getEducations != null) {
      return getEducations(this);
    }
    return orElse();
  }
}

abstract class PublicProfileGetEducation implements PublicProfileEvent {
  const factory PublicProfileGetEducation(final String userName) =
      _$PublicProfileGetEducationImpl;

  @override
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$$PublicProfileGetEducationImplCopyWith<_$PublicProfileGetEducationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PublicProfileGetCertificatesImplCopyWith<$Res>
    implements $PublicProfileEventCopyWith<$Res> {
  factory _$$PublicProfileGetCertificatesImplCopyWith(
          _$PublicProfileGetCertificatesImpl value,
          $Res Function(_$PublicProfileGetCertificatesImpl) then) =
      __$$PublicProfileGetCertificatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName});
}

/// @nodoc
class __$$PublicProfileGetCertificatesImplCopyWithImpl<$Res>
    extends _$PublicProfileEventCopyWithImpl<$Res,
        _$PublicProfileGetCertificatesImpl>
    implements _$$PublicProfileGetCertificatesImplCopyWith<$Res> {
  __$$PublicProfileGetCertificatesImplCopyWithImpl(
      _$PublicProfileGetCertificatesImpl _value,
      $Res Function(_$PublicProfileGetCertificatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
  }) {
    return _then(_$PublicProfileGetCertificatesImpl(
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PublicProfileGetCertificatesImpl
    implements PublicProfileGetCertificates {
  const _$PublicProfileGetCertificatesImpl(this.userName);

  @override
  final String userName;

  @override
  String toString() {
    return 'PublicProfileEvent.getCertificates(userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicProfileGetCertificatesImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicProfileGetCertificatesImplCopyWith<
          _$PublicProfileGetCertificatesImpl>
      get copyWith => __$$PublicProfileGetCertificatesImplCopyWithImpl<
          _$PublicProfileGetCertificatesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName) getBasicInfo,
    required TResult Function(String userName) getEducations,
    required TResult Function(String userName) getCertificates,
    required TResult Function(String userName) getExperiences,
  }) {
    return getCertificates(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? getBasicInfo,
    TResult? Function(String userName)? getEducations,
    TResult? Function(String userName)? getCertificates,
    TResult? Function(String userName)? getExperiences,
  }) {
    return getCertificates?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? getBasicInfo,
    TResult Function(String userName)? getEducations,
    TResult Function(String userName)? getCertificates,
    TResult Function(String userName)? getExperiences,
    required TResult orElse(),
  }) {
    if (getCertificates != null) {
      return getCertificates(userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PublicProfileGetBasicInfo value) getBasicInfo,
    required TResult Function(PublicProfileGetEducation value) getEducations,
    required TResult Function(PublicProfileGetCertificates value)
        getCertificates,
    required TResult Function(PublicProfileGetExperiences value) getExperiences,
  }) {
    return getCertificates(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PublicProfileGetBasicInfo value)? getBasicInfo,
    TResult? Function(PublicProfileGetEducation value)? getEducations,
    TResult? Function(PublicProfileGetCertificates value)? getCertificates,
    TResult? Function(PublicProfileGetExperiences value)? getExperiences,
  }) {
    return getCertificates?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PublicProfileGetBasicInfo value)? getBasicInfo,
    TResult Function(PublicProfileGetEducation value)? getEducations,
    TResult Function(PublicProfileGetCertificates value)? getCertificates,
    TResult Function(PublicProfileGetExperiences value)? getExperiences,
    required TResult orElse(),
  }) {
    if (getCertificates != null) {
      return getCertificates(this);
    }
    return orElse();
  }
}

abstract class PublicProfileGetCertificates implements PublicProfileEvent {
  const factory PublicProfileGetCertificates(final String userName) =
      _$PublicProfileGetCertificatesImpl;

  @override
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$$PublicProfileGetCertificatesImplCopyWith<
          _$PublicProfileGetCertificatesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PublicProfileGetExperiencesImplCopyWith<$Res>
    implements $PublicProfileEventCopyWith<$Res> {
  factory _$$PublicProfileGetExperiencesImplCopyWith(
          _$PublicProfileGetExperiencesImpl value,
          $Res Function(_$PublicProfileGetExperiencesImpl) then) =
      __$$PublicProfileGetExperiencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName});
}

/// @nodoc
class __$$PublicProfileGetExperiencesImplCopyWithImpl<$Res>
    extends _$PublicProfileEventCopyWithImpl<$Res,
        _$PublicProfileGetExperiencesImpl>
    implements _$$PublicProfileGetExperiencesImplCopyWith<$Res> {
  __$$PublicProfileGetExperiencesImplCopyWithImpl(
      _$PublicProfileGetExperiencesImpl _value,
      $Res Function(_$PublicProfileGetExperiencesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
  }) {
    return _then(_$PublicProfileGetExperiencesImpl(
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PublicProfileGetExperiencesImpl implements PublicProfileGetExperiences {
  const _$PublicProfileGetExperiencesImpl(this.userName);

  @override
  final String userName;

  @override
  String toString() {
    return 'PublicProfileEvent.getExperiences(userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicProfileGetExperiencesImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicProfileGetExperiencesImplCopyWith<_$PublicProfileGetExperiencesImpl>
      get copyWith => __$$PublicProfileGetExperiencesImplCopyWithImpl<
          _$PublicProfileGetExperiencesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName) getBasicInfo,
    required TResult Function(String userName) getEducations,
    required TResult Function(String userName) getCertificates,
    required TResult Function(String userName) getExperiences,
  }) {
    return getExperiences(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? getBasicInfo,
    TResult? Function(String userName)? getEducations,
    TResult? Function(String userName)? getCertificates,
    TResult? Function(String userName)? getExperiences,
  }) {
    return getExperiences?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? getBasicInfo,
    TResult Function(String userName)? getEducations,
    TResult Function(String userName)? getCertificates,
    TResult Function(String userName)? getExperiences,
    required TResult orElse(),
  }) {
    if (getExperiences != null) {
      return getExperiences(userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PublicProfileGetBasicInfo value) getBasicInfo,
    required TResult Function(PublicProfileGetEducation value) getEducations,
    required TResult Function(PublicProfileGetCertificates value)
        getCertificates,
    required TResult Function(PublicProfileGetExperiences value) getExperiences,
  }) {
    return getExperiences(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PublicProfileGetBasicInfo value)? getBasicInfo,
    TResult? Function(PublicProfileGetEducation value)? getEducations,
    TResult? Function(PublicProfileGetCertificates value)? getCertificates,
    TResult? Function(PublicProfileGetExperiences value)? getExperiences,
  }) {
    return getExperiences?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PublicProfileGetBasicInfo value)? getBasicInfo,
    TResult Function(PublicProfileGetEducation value)? getEducations,
    TResult Function(PublicProfileGetCertificates value)? getCertificates,
    TResult Function(PublicProfileGetExperiences value)? getExperiences,
    required TResult orElse(),
  }) {
    if (getExperiences != null) {
      return getExperiences(this);
    }
    return orElse();
  }
}

abstract class PublicProfileGetExperiences implements PublicProfileEvent {
  const factory PublicProfileGetExperiences(final String userName) =
      _$PublicProfileGetExperiencesImpl;

  @override
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$$PublicProfileGetExperiencesImplCopyWith<_$PublicProfileGetExperiencesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PublicProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
    required TResult Function(PublicUserInfoModel userInfo) getBasicInfoSuccess,
    required TResult Function(List<ExperienceModel> experiences)
        getExperiencesSuccess,
    required TResult Function(List<EducationModel> educations)
        getEducationsSuccess,
    required TResult Function(List<CertificateModel> certificates)
        getCertificatesSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
    TResult? Function(PublicUserInfoModel userInfo)? getBasicInfoSuccess,
    TResult? Function(List<ExperienceModel> experiences)? getExperiencesSuccess,
    TResult? Function(List<EducationModel> educations)? getEducationsSuccess,
    TResult? Function(List<CertificateModel> certificates)?
        getCertificatesSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    TResult Function(PublicUserInfoModel userInfo)? getBasicInfoSuccess,
    TResult Function(List<ExperienceModel> experiences)? getExperiencesSuccess,
    TResult Function(List<EducationModel> educations)? getEducationsSuccess,
    TResult Function(List<CertificateModel> certificates)?
        getCertificatesSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PublicProfileLoading value) loading,
    required TResult Function(PublicProfileError value) error,
    required TResult Function(PublicProfileGetBasicInfoSuccess value)
        getBasicInfoSuccess,
    required TResult Function(PublicProfileGetUserExperienceSuccess value)
        getExperiencesSuccess,
    required TResult Function(PublicProfileGetUserEducationsSuccess value)
        getEducationsSuccess,
    required TResult Function(PublicProfileGetUserCertificatesSuccess value)
        getCertificatesSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PublicProfileLoading value)? loading,
    TResult? Function(PublicProfileError value)? error,
    TResult? Function(PublicProfileGetBasicInfoSuccess value)?
        getBasicInfoSuccess,
    TResult? Function(PublicProfileGetUserExperienceSuccess value)?
        getExperiencesSuccess,
    TResult? Function(PublicProfileGetUserEducationsSuccess value)?
        getEducationsSuccess,
    TResult? Function(PublicProfileGetUserCertificatesSuccess value)?
        getCertificatesSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PublicProfileLoading value)? loading,
    TResult Function(PublicProfileError value)? error,
    TResult Function(PublicProfileGetBasicInfoSuccess value)?
        getBasicInfoSuccess,
    TResult Function(PublicProfileGetUserExperienceSuccess value)?
        getExperiencesSuccess,
    TResult Function(PublicProfileGetUserEducationsSuccess value)?
        getEducationsSuccess,
    TResult Function(PublicProfileGetUserCertificatesSuccess value)?
        getCertificatesSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicProfileStateCopyWith<$Res> {
  factory $PublicProfileStateCopyWith(
          PublicProfileState value, $Res Function(PublicProfileState) then) =
      _$PublicProfileStateCopyWithImpl<$Res, PublicProfileState>;
}

/// @nodoc
class _$PublicProfileStateCopyWithImpl<$Res, $Val extends PublicProfileState>
    implements $PublicProfileStateCopyWith<$Res> {
  _$PublicProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PublicProfileStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PublicProfileState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
    required TResult Function(PublicUserInfoModel userInfo) getBasicInfoSuccess,
    required TResult Function(List<ExperienceModel> experiences)
        getExperiencesSuccess,
    required TResult Function(List<EducationModel> educations)
        getEducationsSuccess,
    required TResult Function(List<CertificateModel> certificates)
        getCertificatesSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
    TResult? Function(PublicUserInfoModel userInfo)? getBasicInfoSuccess,
    TResult? Function(List<ExperienceModel> experiences)? getExperiencesSuccess,
    TResult? Function(List<EducationModel> educations)? getEducationsSuccess,
    TResult? Function(List<CertificateModel> certificates)?
        getCertificatesSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    TResult Function(PublicUserInfoModel userInfo)? getBasicInfoSuccess,
    TResult Function(List<ExperienceModel> experiences)? getExperiencesSuccess,
    TResult Function(List<EducationModel> educations)? getEducationsSuccess,
    TResult Function(List<CertificateModel> certificates)?
        getCertificatesSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PublicProfileLoading value) loading,
    required TResult Function(PublicProfileError value) error,
    required TResult Function(PublicProfileGetBasicInfoSuccess value)
        getBasicInfoSuccess,
    required TResult Function(PublicProfileGetUserExperienceSuccess value)
        getExperiencesSuccess,
    required TResult Function(PublicProfileGetUserEducationsSuccess value)
        getEducationsSuccess,
    required TResult Function(PublicProfileGetUserCertificatesSuccess value)
        getCertificatesSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PublicProfileLoading value)? loading,
    TResult? Function(PublicProfileError value)? error,
    TResult? Function(PublicProfileGetBasicInfoSuccess value)?
        getBasicInfoSuccess,
    TResult? Function(PublicProfileGetUserExperienceSuccess value)?
        getExperiencesSuccess,
    TResult? Function(PublicProfileGetUserEducationsSuccess value)?
        getEducationsSuccess,
    TResult? Function(PublicProfileGetUserCertificatesSuccess value)?
        getCertificatesSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PublicProfileLoading value)? loading,
    TResult Function(PublicProfileError value)? error,
    TResult Function(PublicProfileGetBasicInfoSuccess value)?
        getBasicInfoSuccess,
    TResult Function(PublicProfileGetUserExperienceSuccess value)?
        getExperiencesSuccess,
    TResult Function(PublicProfileGetUserEducationsSuccess value)?
        getEducationsSuccess,
    TResult Function(PublicProfileGetUserCertificatesSuccess value)?
        getCertificatesSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PublicProfileState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$PublicProfileLoadingImplCopyWith<$Res> {
  factory _$$PublicProfileLoadingImplCopyWith(_$PublicProfileLoadingImpl value,
          $Res Function(_$PublicProfileLoadingImpl) then) =
      __$$PublicProfileLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PublicProfileLoadingImplCopyWithImpl<$Res>
    extends _$PublicProfileStateCopyWithImpl<$Res, _$PublicProfileLoadingImpl>
    implements _$$PublicProfileLoadingImplCopyWith<$Res> {
  __$$PublicProfileLoadingImplCopyWithImpl(_$PublicProfileLoadingImpl _value,
      $Res Function(_$PublicProfileLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PublicProfileLoadingImpl implements PublicProfileLoading {
  const _$PublicProfileLoadingImpl();

  @override
  String toString() {
    return 'PublicProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicProfileLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
    required TResult Function(PublicUserInfoModel userInfo) getBasicInfoSuccess,
    required TResult Function(List<ExperienceModel> experiences)
        getExperiencesSuccess,
    required TResult Function(List<EducationModel> educations)
        getEducationsSuccess,
    required TResult Function(List<CertificateModel> certificates)
        getCertificatesSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
    TResult? Function(PublicUserInfoModel userInfo)? getBasicInfoSuccess,
    TResult? Function(List<ExperienceModel> experiences)? getExperiencesSuccess,
    TResult? Function(List<EducationModel> educations)? getEducationsSuccess,
    TResult? Function(List<CertificateModel> certificates)?
        getCertificatesSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    TResult Function(PublicUserInfoModel userInfo)? getBasicInfoSuccess,
    TResult Function(List<ExperienceModel> experiences)? getExperiencesSuccess,
    TResult Function(List<EducationModel> educations)? getEducationsSuccess,
    TResult Function(List<CertificateModel> certificates)?
        getCertificatesSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PublicProfileLoading value) loading,
    required TResult Function(PublicProfileError value) error,
    required TResult Function(PublicProfileGetBasicInfoSuccess value)
        getBasicInfoSuccess,
    required TResult Function(PublicProfileGetUserExperienceSuccess value)
        getExperiencesSuccess,
    required TResult Function(PublicProfileGetUserEducationsSuccess value)
        getEducationsSuccess,
    required TResult Function(PublicProfileGetUserCertificatesSuccess value)
        getCertificatesSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PublicProfileLoading value)? loading,
    TResult? Function(PublicProfileError value)? error,
    TResult? Function(PublicProfileGetBasicInfoSuccess value)?
        getBasicInfoSuccess,
    TResult? Function(PublicProfileGetUserExperienceSuccess value)?
        getExperiencesSuccess,
    TResult? Function(PublicProfileGetUserEducationsSuccess value)?
        getEducationsSuccess,
    TResult? Function(PublicProfileGetUserCertificatesSuccess value)?
        getCertificatesSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PublicProfileLoading value)? loading,
    TResult Function(PublicProfileError value)? error,
    TResult Function(PublicProfileGetBasicInfoSuccess value)?
        getBasicInfoSuccess,
    TResult Function(PublicProfileGetUserExperienceSuccess value)?
        getExperiencesSuccess,
    TResult Function(PublicProfileGetUserEducationsSuccess value)?
        getEducationsSuccess,
    TResult Function(PublicProfileGetUserCertificatesSuccess value)?
        getCertificatesSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PublicProfileLoading implements PublicProfileState {
  const factory PublicProfileLoading() = _$PublicProfileLoadingImpl;
}

/// @nodoc
abstract class _$$PublicProfileErrorImplCopyWith<$Res> {
  factory _$$PublicProfileErrorImplCopyWith(_$PublicProfileErrorImpl value,
          $Res Function(_$PublicProfileErrorImpl) then) =
      __$$PublicProfileErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String msg});
}

/// @nodoc
class __$$PublicProfileErrorImplCopyWithImpl<$Res>
    extends _$PublicProfileStateCopyWithImpl<$Res, _$PublicProfileErrorImpl>
    implements _$$PublicProfileErrorImplCopyWith<$Res> {
  __$$PublicProfileErrorImplCopyWithImpl(_$PublicProfileErrorImpl _value,
      $Res Function(_$PublicProfileErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? msg = null,
  }) {
    return _then(_$PublicProfileErrorImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PublicProfileErrorImpl implements PublicProfileError {
  const _$PublicProfileErrorImpl({required this.title, required this.msg});

  @override
  final String title;
  @override
  final String msg;

  @override
  String toString() {
    return 'PublicProfileState.error(title: $title, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicProfileErrorImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicProfileErrorImplCopyWith<_$PublicProfileErrorImpl> get copyWith =>
      __$$PublicProfileErrorImplCopyWithImpl<_$PublicProfileErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
    required TResult Function(PublicUserInfoModel userInfo) getBasicInfoSuccess,
    required TResult Function(List<ExperienceModel> experiences)
        getExperiencesSuccess,
    required TResult Function(List<EducationModel> educations)
        getEducationsSuccess,
    required TResult Function(List<CertificateModel> certificates)
        getCertificatesSuccess,
  }) {
    return error(title, msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
    TResult? Function(PublicUserInfoModel userInfo)? getBasicInfoSuccess,
    TResult? Function(List<ExperienceModel> experiences)? getExperiencesSuccess,
    TResult? Function(List<EducationModel> educations)? getEducationsSuccess,
    TResult? Function(List<CertificateModel> certificates)?
        getCertificatesSuccess,
  }) {
    return error?.call(title, msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    TResult Function(PublicUserInfoModel userInfo)? getBasicInfoSuccess,
    TResult Function(List<ExperienceModel> experiences)? getExperiencesSuccess,
    TResult Function(List<EducationModel> educations)? getEducationsSuccess,
    TResult Function(List<CertificateModel> certificates)?
        getCertificatesSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(title, msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PublicProfileLoading value) loading,
    required TResult Function(PublicProfileError value) error,
    required TResult Function(PublicProfileGetBasicInfoSuccess value)
        getBasicInfoSuccess,
    required TResult Function(PublicProfileGetUserExperienceSuccess value)
        getExperiencesSuccess,
    required TResult Function(PublicProfileGetUserEducationsSuccess value)
        getEducationsSuccess,
    required TResult Function(PublicProfileGetUserCertificatesSuccess value)
        getCertificatesSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PublicProfileLoading value)? loading,
    TResult? Function(PublicProfileError value)? error,
    TResult? Function(PublicProfileGetBasicInfoSuccess value)?
        getBasicInfoSuccess,
    TResult? Function(PublicProfileGetUserExperienceSuccess value)?
        getExperiencesSuccess,
    TResult? Function(PublicProfileGetUserEducationsSuccess value)?
        getEducationsSuccess,
    TResult? Function(PublicProfileGetUserCertificatesSuccess value)?
        getCertificatesSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PublicProfileLoading value)? loading,
    TResult Function(PublicProfileError value)? error,
    TResult Function(PublicProfileGetBasicInfoSuccess value)?
        getBasicInfoSuccess,
    TResult Function(PublicProfileGetUserExperienceSuccess value)?
        getExperiencesSuccess,
    TResult Function(PublicProfileGetUserEducationsSuccess value)?
        getEducationsSuccess,
    TResult Function(PublicProfileGetUserCertificatesSuccess value)?
        getCertificatesSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PublicProfileError implements PublicProfileState {
  const factory PublicProfileError(
      {required final String title,
      required final String msg}) = _$PublicProfileErrorImpl;

  String get title;
  String get msg;
  @JsonKey(ignore: true)
  _$$PublicProfileErrorImplCopyWith<_$PublicProfileErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PublicProfileGetBasicInfoSuccessImplCopyWith<$Res> {
  factory _$$PublicProfileGetBasicInfoSuccessImplCopyWith(
          _$PublicProfileGetBasicInfoSuccessImpl value,
          $Res Function(_$PublicProfileGetBasicInfoSuccessImpl) then) =
      __$$PublicProfileGetBasicInfoSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PublicUserInfoModel userInfo});

  $PublicUserInfoModelCopyWith<$Res> get userInfo;
}

/// @nodoc
class __$$PublicProfileGetBasicInfoSuccessImplCopyWithImpl<$Res>
    extends _$PublicProfileStateCopyWithImpl<$Res,
        _$PublicProfileGetBasicInfoSuccessImpl>
    implements _$$PublicProfileGetBasicInfoSuccessImplCopyWith<$Res> {
  __$$PublicProfileGetBasicInfoSuccessImplCopyWithImpl(
      _$PublicProfileGetBasicInfoSuccessImpl _value,
      $Res Function(_$PublicProfileGetBasicInfoSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = null,
  }) {
    return _then(_$PublicProfileGetBasicInfoSuccessImpl(
      null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as PublicUserInfoModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PublicUserInfoModelCopyWith<$Res> get userInfo {
    return $PublicUserInfoModelCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value));
    });
  }
}

/// @nodoc

class _$PublicProfileGetBasicInfoSuccessImpl
    implements PublicProfileGetBasicInfoSuccess {
  const _$PublicProfileGetBasicInfoSuccessImpl(this.userInfo);

  @override
  final PublicUserInfoModel userInfo;

  @override
  String toString() {
    return 'PublicProfileState.getBasicInfoSuccess(userInfo: $userInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicProfileGetBasicInfoSuccessImpl &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicProfileGetBasicInfoSuccessImplCopyWith<
          _$PublicProfileGetBasicInfoSuccessImpl>
      get copyWith => __$$PublicProfileGetBasicInfoSuccessImplCopyWithImpl<
          _$PublicProfileGetBasicInfoSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
    required TResult Function(PublicUserInfoModel userInfo) getBasicInfoSuccess,
    required TResult Function(List<ExperienceModel> experiences)
        getExperiencesSuccess,
    required TResult Function(List<EducationModel> educations)
        getEducationsSuccess,
    required TResult Function(List<CertificateModel> certificates)
        getCertificatesSuccess,
  }) {
    return getBasicInfoSuccess(userInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
    TResult? Function(PublicUserInfoModel userInfo)? getBasicInfoSuccess,
    TResult? Function(List<ExperienceModel> experiences)? getExperiencesSuccess,
    TResult? Function(List<EducationModel> educations)? getEducationsSuccess,
    TResult? Function(List<CertificateModel> certificates)?
        getCertificatesSuccess,
  }) {
    return getBasicInfoSuccess?.call(userInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    TResult Function(PublicUserInfoModel userInfo)? getBasicInfoSuccess,
    TResult Function(List<ExperienceModel> experiences)? getExperiencesSuccess,
    TResult Function(List<EducationModel> educations)? getEducationsSuccess,
    TResult Function(List<CertificateModel> certificates)?
        getCertificatesSuccess,
    required TResult orElse(),
  }) {
    if (getBasicInfoSuccess != null) {
      return getBasicInfoSuccess(userInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PublicProfileLoading value) loading,
    required TResult Function(PublicProfileError value) error,
    required TResult Function(PublicProfileGetBasicInfoSuccess value)
        getBasicInfoSuccess,
    required TResult Function(PublicProfileGetUserExperienceSuccess value)
        getExperiencesSuccess,
    required TResult Function(PublicProfileGetUserEducationsSuccess value)
        getEducationsSuccess,
    required TResult Function(PublicProfileGetUserCertificatesSuccess value)
        getCertificatesSuccess,
  }) {
    return getBasicInfoSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PublicProfileLoading value)? loading,
    TResult? Function(PublicProfileError value)? error,
    TResult? Function(PublicProfileGetBasicInfoSuccess value)?
        getBasicInfoSuccess,
    TResult? Function(PublicProfileGetUserExperienceSuccess value)?
        getExperiencesSuccess,
    TResult? Function(PublicProfileGetUserEducationsSuccess value)?
        getEducationsSuccess,
    TResult? Function(PublicProfileGetUserCertificatesSuccess value)?
        getCertificatesSuccess,
  }) {
    return getBasicInfoSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PublicProfileLoading value)? loading,
    TResult Function(PublicProfileError value)? error,
    TResult Function(PublicProfileGetBasicInfoSuccess value)?
        getBasicInfoSuccess,
    TResult Function(PublicProfileGetUserExperienceSuccess value)?
        getExperiencesSuccess,
    TResult Function(PublicProfileGetUserEducationsSuccess value)?
        getEducationsSuccess,
    TResult Function(PublicProfileGetUserCertificatesSuccess value)?
        getCertificatesSuccess,
    required TResult orElse(),
  }) {
    if (getBasicInfoSuccess != null) {
      return getBasicInfoSuccess(this);
    }
    return orElse();
  }
}

abstract class PublicProfileGetBasicInfoSuccess implements PublicProfileState {
  const factory PublicProfileGetBasicInfoSuccess(
          final PublicUserInfoModel userInfo) =
      _$PublicProfileGetBasicInfoSuccessImpl;

  PublicUserInfoModel get userInfo;
  @JsonKey(ignore: true)
  _$$PublicProfileGetBasicInfoSuccessImplCopyWith<
          _$PublicProfileGetBasicInfoSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PublicProfileGetUserExperienceSuccessImplCopyWith<$Res> {
  factory _$$PublicProfileGetUserExperienceSuccessImplCopyWith(
          _$PublicProfileGetUserExperienceSuccessImpl value,
          $Res Function(_$PublicProfileGetUserExperienceSuccessImpl) then) =
      __$$PublicProfileGetUserExperienceSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ExperienceModel> experiences});
}

/// @nodoc
class __$$PublicProfileGetUserExperienceSuccessImplCopyWithImpl<$Res>
    extends _$PublicProfileStateCopyWithImpl<$Res,
        _$PublicProfileGetUserExperienceSuccessImpl>
    implements _$$PublicProfileGetUserExperienceSuccessImplCopyWith<$Res> {
  __$$PublicProfileGetUserExperienceSuccessImplCopyWithImpl(
      _$PublicProfileGetUserExperienceSuccessImpl _value,
      $Res Function(_$PublicProfileGetUserExperienceSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? experiences = null,
  }) {
    return _then(_$PublicProfileGetUserExperienceSuccessImpl(
      null == experiences
          ? _value._experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as List<ExperienceModel>,
    ));
  }
}

/// @nodoc

class _$PublicProfileGetUserExperienceSuccessImpl
    implements PublicProfileGetUserExperienceSuccess {
  const _$PublicProfileGetUserExperienceSuccessImpl(
      final List<ExperienceModel> experiences)
      : _experiences = experiences;

  final List<ExperienceModel> _experiences;
  @override
  List<ExperienceModel> get experiences {
    if (_experiences is EqualUnmodifiableListView) return _experiences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_experiences);
  }

  @override
  String toString() {
    return 'PublicProfileState.getExperiencesSuccess(experiences: $experiences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicProfileGetUserExperienceSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._experiences, _experiences));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_experiences));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicProfileGetUserExperienceSuccessImplCopyWith<
          _$PublicProfileGetUserExperienceSuccessImpl>
      get copyWith => __$$PublicProfileGetUserExperienceSuccessImplCopyWithImpl<
          _$PublicProfileGetUserExperienceSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
    required TResult Function(PublicUserInfoModel userInfo) getBasicInfoSuccess,
    required TResult Function(List<ExperienceModel> experiences)
        getExperiencesSuccess,
    required TResult Function(List<EducationModel> educations)
        getEducationsSuccess,
    required TResult Function(List<CertificateModel> certificates)
        getCertificatesSuccess,
  }) {
    return getExperiencesSuccess(experiences);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
    TResult? Function(PublicUserInfoModel userInfo)? getBasicInfoSuccess,
    TResult? Function(List<ExperienceModel> experiences)? getExperiencesSuccess,
    TResult? Function(List<EducationModel> educations)? getEducationsSuccess,
    TResult? Function(List<CertificateModel> certificates)?
        getCertificatesSuccess,
  }) {
    return getExperiencesSuccess?.call(experiences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    TResult Function(PublicUserInfoModel userInfo)? getBasicInfoSuccess,
    TResult Function(List<ExperienceModel> experiences)? getExperiencesSuccess,
    TResult Function(List<EducationModel> educations)? getEducationsSuccess,
    TResult Function(List<CertificateModel> certificates)?
        getCertificatesSuccess,
    required TResult orElse(),
  }) {
    if (getExperiencesSuccess != null) {
      return getExperiencesSuccess(experiences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PublicProfileLoading value) loading,
    required TResult Function(PublicProfileError value) error,
    required TResult Function(PublicProfileGetBasicInfoSuccess value)
        getBasicInfoSuccess,
    required TResult Function(PublicProfileGetUserExperienceSuccess value)
        getExperiencesSuccess,
    required TResult Function(PublicProfileGetUserEducationsSuccess value)
        getEducationsSuccess,
    required TResult Function(PublicProfileGetUserCertificatesSuccess value)
        getCertificatesSuccess,
  }) {
    return getExperiencesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PublicProfileLoading value)? loading,
    TResult? Function(PublicProfileError value)? error,
    TResult? Function(PublicProfileGetBasicInfoSuccess value)?
        getBasicInfoSuccess,
    TResult? Function(PublicProfileGetUserExperienceSuccess value)?
        getExperiencesSuccess,
    TResult? Function(PublicProfileGetUserEducationsSuccess value)?
        getEducationsSuccess,
    TResult? Function(PublicProfileGetUserCertificatesSuccess value)?
        getCertificatesSuccess,
  }) {
    return getExperiencesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PublicProfileLoading value)? loading,
    TResult Function(PublicProfileError value)? error,
    TResult Function(PublicProfileGetBasicInfoSuccess value)?
        getBasicInfoSuccess,
    TResult Function(PublicProfileGetUserExperienceSuccess value)?
        getExperiencesSuccess,
    TResult Function(PublicProfileGetUserEducationsSuccess value)?
        getEducationsSuccess,
    TResult Function(PublicProfileGetUserCertificatesSuccess value)?
        getCertificatesSuccess,
    required TResult orElse(),
  }) {
    if (getExperiencesSuccess != null) {
      return getExperiencesSuccess(this);
    }
    return orElse();
  }
}

abstract class PublicProfileGetUserExperienceSuccess
    implements PublicProfileState {
  const factory PublicProfileGetUserExperienceSuccess(
          final List<ExperienceModel> experiences) =
      _$PublicProfileGetUserExperienceSuccessImpl;

  List<ExperienceModel> get experiences;
  @JsonKey(ignore: true)
  _$$PublicProfileGetUserExperienceSuccessImplCopyWith<
          _$PublicProfileGetUserExperienceSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PublicProfileGetUserEducationsSuccessImplCopyWith<$Res> {
  factory _$$PublicProfileGetUserEducationsSuccessImplCopyWith(
          _$PublicProfileGetUserEducationsSuccessImpl value,
          $Res Function(_$PublicProfileGetUserEducationsSuccessImpl) then) =
      __$$PublicProfileGetUserEducationsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<EducationModel> educations});
}

/// @nodoc
class __$$PublicProfileGetUserEducationsSuccessImplCopyWithImpl<$Res>
    extends _$PublicProfileStateCopyWithImpl<$Res,
        _$PublicProfileGetUserEducationsSuccessImpl>
    implements _$$PublicProfileGetUserEducationsSuccessImplCopyWith<$Res> {
  __$$PublicProfileGetUserEducationsSuccessImplCopyWithImpl(
      _$PublicProfileGetUserEducationsSuccessImpl _value,
      $Res Function(_$PublicProfileGetUserEducationsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? educations = null,
  }) {
    return _then(_$PublicProfileGetUserEducationsSuccessImpl(
      null == educations
          ? _value._educations
          : educations // ignore: cast_nullable_to_non_nullable
              as List<EducationModel>,
    ));
  }
}

/// @nodoc

class _$PublicProfileGetUserEducationsSuccessImpl
    implements PublicProfileGetUserEducationsSuccess {
  const _$PublicProfileGetUserEducationsSuccessImpl(
      final List<EducationModel> educations)
      : _educations = educations;

  final List<EducationModel> _educations;
  @override
  List<EducationModel> get educations {
    if (_educations is EqualUnmodifiableListView) return _educations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_educations);
  }

  @override
  String toString() {
    return 'PublicProfileState.getEducationsSuccess(educations: $educations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicProfileGetUserEducationsSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._educations, _educations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_educations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicProfileGetUserEducationsSuccessImplCopyWith<
          _$PublicProfileGetUserEducationsSuccessImpl>
      get copyWith => __$$PublicProfileGetUserEducationsSuccessImplCopyWithImpl<
          _$PublicProfileGetUserEducationsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
    required TResult Function(PublicUserInfoModel userInfo) getBasicInfoSuccess,
    required TResult Function(List<ExperienceModel> experiences)
        getExperiencesSuccess,
    required TResult Function(List<EducationModel> educations)
        getEducationsSuccess,
    required TResult Function(List<CertificateModel> certificates)
        getCertificatesSuccess,
  }) {
    return getEducationsSuccess(educations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
    TResult? Function(PublicUserInfoModel userInfo)? getBasicInfoSuccess,
    TResult? Function(List<ExperienceModel> experiences)? getExperiencesSuccess,
    TResult? Function(List<EducationModel> educations)? getEducationsSuccess,
    TResult? Function(List<CertificateModel> certificates)?
        getCertificatesSuccess,
  }) {
    return getEducationsSuccess?.call(educations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    TResult Function(PublicUserInfoModel userInfo)? getBasicInfoSuccess,
    TResult Function(List<ExperienceModel> experiences)? getExperiencesSuccess,
    TResult Function(List<EducationModel> educations)? getEducationsSuccess,
    TResult Function(List<CertificateModel> certificates)?
        getCertificatesSuccess,
    required TResult orElse(),
  }) {
    if (getEducationsSuccess != null) {
      return getEducationsSuccess(educations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PublicProfileLoading value) loading,
    required TResult Function(PublicProfileError value) error,
    required TResult Function(PublicProfileGetBasicInfoSuccess value)
        getBasicInfoSuccess,
    required TResult Function(PublicProfileGetUserExperienceSuccess value)
        getExperiencesSuccess,
    required TResult Function(PublicProfileGetUserEducationsSuccess value)
        getEducationsSuccess,
    required TResult Function(PublicProfileGetUserCertificatesSuccess value)
        getCertificatesSuccess,
  }) {
    return getEducationsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PublicProfileLoading value)? loading,
    TResult? Function(PublicProfileError value)? error,
    TResult? Function(PublicProfileGetBasicInfoSuccess value)?
        getBasicInfoSuccess,
    TResult? Function(PublicProfileGetUserExperienceSuccess value)?
        getExperiencesSuccess,
    TResult? Function(PublicProfileGetUserEducationsSuccess value)?
        getEducationsSuccess,
    TResult? Function(PublicProfileGetUserCertificatesSuccess value)?
        getCertificatesSuccess,
  }) {
    return getEducationsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PublicProfileLoading value)? loading,
    TResult Function(PublicProfileError value)? error,
    TResult Function(PublicProfileGetBasicInfoSuccess value)?
        getBasicInfoSuccess,
    TResult Function(PublicProfileGetUserExperienceSuccess value)?
        getExperiencesSuccess,
    TResult Function(PublicProfileGetUserEducationsSuccess value)?
        getEducationsSuccess,
    TResult Function(PublicProfileGetUserCertificatesSuccess value)?
        getCertificatesSuccess,
    required TResult orElse(),
  }) {
    if (getEducationsSuccess != null) {
      return getEducationsSuccess(this);
    }
    return orElse();
  }
}

abstract class PublicProfileGetUserEducationsSuccess
    implements PublicProfileState {
  const factory PublicProfileGetUserEducationsSuccess(
          final List<EducationModel> educations) =
      _$PublicProfileGetUserEducationsSuccessImpl;

  List<EducationModel> get educations;
  @JsonKey(ignore: true)
  _$$PublicProfileGetUserEducationsSuccessImplCopyWith<
          _$PublicProfileGetUserEducationsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PublicProfileGetUserCertificatesSuccessImplCopyWith<$Res> {
  factory _$$PublicProfileGetUserCertificatesSuccessImplCopyWith(
          _$PublicProfileGetUserCertificatesSuccessImpl value,
          $Res Function(_$PublicProfileGetUserCertificatesSuccessImpl) then) =
      __$$PublicProfileGetUserCertificatesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CertificateModel> certificates});
}

/// @nodoc
class __$$PublicProfileGetUserCertificatesSuccessImplCopyWithImpl<$Res>
    extends _$PublicProfileStateCopyWithImpl<$Res,
        _$PublicProfileGetUserCertificatesSuccessImpl>
    implements _$$PublicProfileGetUserCertificatesSuccessImplCopyWith<$Res> {
  __$$PublicProfileGetUserCertificatesSuccessImplCopyWithImpl(
      _$PublicProfileGetUserCertificatesSuccessImpl _value,
      $Res Function(_$PublicProfileGetUserCertificatesSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certificates = null,
  }) {
    return _then(_$PublicProfileGetUserCertificatesSuccessImpl(
      null == certificates
          ? _value._certificates
          : certificates // ignore: cast_nullable_to_non_nullable
              as List<CertificateModel>,
    ));
  }
}

/// @nodoc

class _$PublicProfileGetUserCertificatesSuccessImpl
    implements PublicProfileGetUserCertificatesSuccess {
  const _$PublicProfileGetUserCertificatesSuccessImpl(
      final List<CertificateModel> certificates)
      : _certificates = certificates;

  final List<CertificateModel> _certificates;
  @override
  List<CertificateModel> get certificates {
    if (_certificates is EqualUnmodifiableListView) return _certificates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_certificates);
  }

  @override
  String toString() {
    return 'PublicProfileState.getCertificatesSuccess(certificates: $certificates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicProfileGetUserCertificatesSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._certificates, _certificates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_certificates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicProfileGetUserCertificatesSuccessImplCopyWith<
          _$PublicProfileGetUserCertificatesSuccessImpl>
      get copyWith =>
          __$$PublicProfileGetUserCertificatesSuccessImplCopyWithImpl<
              _$PublicProfileGetUserCertificatesSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
    required TResult Function(PublicUserInfoModel userInfo) getBasicInfoSuccess,
    required TResult Function(List<ExperienceModel> experiences)
        getExperiencesSuccess,
    required TResult Function(List<EducationModel> educations)
        getEducationsSuccess,
    required TResult Function(List<CertificateModel> certificates)
        getCertificatesSuccess,
  }) {
    return getCertificatesSuccess(certificates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
    TResult? Function(PublicUserInfoModel userInfo)? getBasicInfoSuccess,
    TResult? Function(List<ExperienceModel> experiences)? getExperiencesSuccess,
    TResult? Function(List<EducationModel> educations)? getEducationsSuccess,
    TResult? Function(List<CertificateModel> certificates)?
        getCertificatesSuccess,
  }) {
    return getCertificatesSuccess?.call(certificates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    TResult Function(PublicUserInfoModel userInfo)? getBasicInfoSuccess,
    TResult Function(List<ExperienceModel> experiences)? getExperiencesSuccess,
    TResult Function(List<EducationModel> educations)? getEducationsSuccess,
    TResult Function(List<CertificateModel> certificates)?
        getCertificatesSuccess,
    required TResult orElse(),
  }) {
    if (getCertificatesSuccess != null) {
      return getCertificatesSuccess(certificates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PublicProfileLoading value) loading,
    required TResult Function(PublicProfileError value) error,
    required TResult Function(PublicProfileGetBasicInfoSuccess value)
        getBasicInfoSuccess,
    required TResult Function(PublicProfileGetUserExperienceSuccess value)
        getExperiencesSuccess,
    required TResult Function(PublicProfileGetUserEducationsSuccess value)
        getEducationsSuccess,
    required TResult Function(PublicProfileGetUserCertificatesSuccess value)
        getCertificatesSuccess,
  }) {
    return getCertificatesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PublicProfileLoading value)? loading,
    TResult? Function(PublicProfileError value)? error,
    TResult? Function(PublicProfileGetBasicInfoSuccess value)?
        getBasicInfoSuccess,
    TResult? Function(PublicProfileGetUserExperienceSuccess value)?
        getExperiencesSuccess,
    TResult? Function(PublicProfileGetUserEducationsSuccess value)?
        getEducationsSuccess,
    TResult? Function(PublicProfileGetUserCertificatesSuccess value)?
        getCertificatesSuccess,
  }) {
    return getCertificatesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PublicProfileLoading value)? loading,
    TResult Function(PublicProfileError value)? error,
    TResult Function(PublicProfileGetBasicInfoSuccess value)?
        getBasicInfoSuccess,
    TResult Function(PublicProfileGetUserExperienceSuccess value)?
        getExperiencesSuccess,
    TResult Function(PublicProfileGetUserEducationsSuccess value)?
        getEducationsSuccess,
    TResult Function(PublicProfileGetUserCertificatesSuccess value)?
        getCertificatesSuccess,
    required TResult orElse(),
  }) {
    if (getCertificatesSuccess != null) {
      return getCertificatesSuccess(this);
    }
    return orElse();
  }
}

abstract class PublicProfileGetUserCertificatesSuccess
    implements PublicProfileState {
  const factory PublicProfileGetUserCertificatesSuccess(
          final List<CertificateModel> certificates) =
      _$PublicProfileGetUserCertificatesSuccessImpl;

  List<CertificateModel> get certificates;
  @JsonKey(ignore: true)
  _$$PublicProfileGetUserCertificatesSuccessImplCopyWith<
          _$PublicProfileGetUserCertificatesSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
