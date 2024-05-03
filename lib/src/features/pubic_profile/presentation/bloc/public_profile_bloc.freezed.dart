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
    required TResult Function(String userName) getLanguages,
    required TResult Function(String userName) getSkills,
    required TResult Function(String userName) getBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? getBasicInfo,
    TResult? Function(String userName)? getEducations,
    TResult? Function(String userName)? getCertificates,
    TResult? Function(String userName)? getExperiences,
    TResult? Function(String userName)? getLanguages,
    TResult? Function(String userName)? getSkills,
    TResult? Function(String userName)? getBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? getBasicInfo,
    TResult Function(String userName)? getEducations,
    TResult Function(String userName)? getCertificates,
    TResult Function(String userName)? getExperiences,
    TResult Function(String userName)? getLanguages,
    TResult Function(String userName)? getSkills,
    TResult Function(String userName)? getBanner,
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
    required TResult Function(PublicProfileGetLanguages value) getLanguages,
    required TResult Function(PublicProfileGetSkills value) getSkills,
    required TResult Function(PublicProfileGetBanner value) getBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PublicProfileGetBasicInfo value)? getBasicInfo,
    TResult? Function(PublicProfileGetEducation value)? getEducations,
    TResult? Function(PublicProfileGetCertificates value)? getCertificates,
    TResult? Function(PublicProfileGetExperiences value)? getExperiences,
    TResult? Function(PublicProfileGetLanguages value)? getLanguages,
    TResult? Function(PublicProfileGetSkills value)? getSkills,
    TResult? Function(PublicProfileGetBanner value)? getBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PublicProfileGetBasicInfo value)? getBasicInfo,
    TResult Function(PublicProfileGetEducation value)? getEducations,
    TResult Function(PublicProfileGetCertificates value)? getCertificates,
    TResult Function(PublicProfileGetExperiences value)? getExperiences,
    TResult Function(PublicProfileGetLanguages value)? getLanguages,
    TResult Function(PublicProfileGetSkills value)? getSkills,
    TResult Function(PublicProfileGetBanner value)? getBanner,
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
    required TResult Function(String userName) getLanguages,
    required TResult Function(String userName) getSkills,
    required TResult Function(String userName) getBanner,
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
    TResult? Function(String userName)? getLanguages,
    TResult? Function(String userName)? getSkills,
    TResult? Function(String userName)? getBanner,
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
    TResult Function(String userName)? getLanguages,
    TResult Function(String userName)? getSkills,
    TResult Function(String userName)? getBanner,
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
    required TResult Function(PublicProfileGetLanguages value) getLanguages,
    required TResult Function(PublicProfileGetSkills value) getSkills,
    required TResult Function(PublicProfileGetBanner value) getBanner,
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
    TResult? Function(PublicProfileGetLanguages value)? getLanguages,
    TResult? Function(PublicProfileGetSkills value)? getSkills,
    TResult? Function(PublicProfileGetBanner value)? getBanner,
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
    TResult Function(PublicProfileGetLanguages value)? getLanguages,
    TResult Function(PublicProfileGetSkills value)? getSkills,
    TResult Function(PublicProfileGetBanner value)? getBanner,
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
    required TResult Function(String userName) getLanguages,
    required TResult Function(String userName) getSkills,
    required TResult Function(String userName) getBanner,
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
    TResult? Function(String userName)? getLanguages,
    TResult? Function(String userName)? getSkills,
    TResult? Function(String userName)? getBanner,
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
    TResult Function(String userName)? getLanguages,
    TResult Function(String userName)? getSkills,
    TResult Function(String userName)? getBanner,
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
    required TResult Function(PublicProfileGetLanguages value) getLanguages,
    required TResult Function(PublicProfileGetSkills value) getSkills,
    required TResult Function(PublicProfileGetBanner value) getBanner,
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
    TResult? Function(PublicProfileGetLanguages value)? getLanguages,
    TResult? Function(PublicProfileGetSkills value)? getSkills,
    TResult? Function(PublicProfileGetBanner value)? getBanner,
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
    TResult Function(PublicProfileGetLanguages value)? getLanguages,
    TResult Function(PublicProfileGetSkills value)? getSkills,
    TResult Function(PublicProfileGetBanner value)? getBanner,
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
    required TResult Function(String userName) getLanguages,
    required TResult Function(String userName) getSkills,
    required TResult Function(String userName) getBanner,
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
    TResult? Function(String userName)? getLanguages,
    TResult? Function(String userName)? getSkills,
    TResult? Function(String userName)? getBanner,
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
    TResult Function(String userName)? getLanguages,
    TResult Function(String userName)? getSkills,
    TResult Function(String userName)? getBanner,
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
    required TResult Function(PublicProfileGetLanguages value) getLanguages,
    required TResult Function(PublicProfileGetSkills value) getSkills,
    required TResult Function(PublicProfileGetBanner value) getBanner,
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
    TResult? Function(PublicProfileGetLanguages value)? getLanguages,
    TResult? Function(PublicProfileGetSkills value)? getSkills,
    TResult? Function(PublicProfileGetBanner value)? getBanner,
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
    TResult Function(PublicProfileGetLanguages value)? getLanguages,
    TResult Function(PublicProfileGetSkills value)? getSkills,
    TResult Function(PublicProfileGetBanner value)? getBanner,
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
    required TResult Function(String userName) getLanguages,
    required TResult Function(String userName) getSkills,
    required TResult Function(String userName) getBanner,
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
    TResult? Function(String userName)? getLanguages,
    TResult? Function(String userName)? getSkills,
    TResult? Function(String userName)? getBanner,
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
    TResult Function(String userName)? getLanguages,
    TResult Function(String userName)? getSkills,
    TResult Function(String userName)? getBanner,
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
    required TResult Function(PublicProfileGetLanguages value) getLanguages,
    required TResult Function(PublicProfileGetSkills value) getSkills,
    required TResult Function(PublicProfileGetBanner value) getBanner,
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
    TResult? Function(PublicProfileGetLanguages value)? getLanguages,
    TResult? Function(PublicProfileGetSkills value)? getSkills,
    TResult? Function(PublicProfileGetBanner value)? getBanner,
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
    TResult Function(PublicProfileGetLanguages value)? getLanguages,
    TResult Function(PublicProfileGetSkills value)? getSkills,
    TResult Function(PublicProfileGetBanner value)? getBanner,
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
abstract class _$$PublicProfileGetLanguagesImplCopyWith<$Res>
    implements $PublicProfileEventCopyWith<$Res> {
  factory _$$PublicProfileGetLanguagesImplCopyWith(
          _$PublicProfileGetLanguagesImpl value,
          $Res Function(_$PublicProfileGetLanguagesImpl) then) =
      __$$PublicProfileGetLanguagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName});
}

/// @nodoc
class __$$PublicProfileGetLanguagesImplCopyWithImpl<$Res>
    extends _$PublicProfileEventCopyWithImpl<$Res,
        _$PublicProfileGetLanguagesImpl>
    implements _$$PublicProfileGetLanguagesImplCopyWith<$Res> {
  __$$PublicProfileGetLanguagesImplCopyWithImpl(
      _$PublicProfileGetLanguagesImpl _value,
      $Res Function(_$PublicProfileGetLanguagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
  }) {
    return _then(_$PublicProfileGetLanguagesImpl(
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PublicProfileGetLanguagesImpl implements PublicProfileGetLanguages {
  const _$PublicProfileGetLanguagesImpl(this.userName);

  @override
  final String userName;

  @override
  String toString() {
    return 'PublicProfileEvent.getLanguages(userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicProfileGetLanguagesImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicProfileGetLanguagesImplCopyWith<_$PublicProfileGetLanguagesImpl>
      get copyWith => __$$PublicProfileGetLanguagesImplCopyWithImpl<
          _$PublicProfileGetLanguagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName) getBasicInfo,
    required TResult Function(String userName) getEducations,
    required TResult Function(String userName) getCertificates,
    required TResult Function(String userName) getExperiences,
    required TResult Function(String userName) getLanguages,
    required TResult Function(String userName) getSkills,
    required TResult Function(String userName) getBanner,
  }) {
    return getLanguages(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? getBasicInfo,
    TResult? Function(String userName)? getEducations,
    TResult? Function(String userName)? getCertificates,
    TResult? Function(String userName)? getExperiences,
    TResult? Function(String userName)? getLanguages,
    TResult? Function(String userName)? getSkills,
    TResult? Function(String userName)? getBanner,
  }) {
    return getLanguages?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? getBasicInfo,
    TResult Function(String userName)? getEducations,
    TResult Function(String userName)? getCertificates,
    TResult Function(String userName)? getExperiences,
    TResult Function(String userName)? getLanguages,
    TResult Function(String userName)? getSkills,
    TResult Function(String userName)? getBanner,
    required TResult orElse(),
  }) {
    if (getLanguages != null) {
      return getLanguages(userName);
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
    required TResult Function(PublicProfileGetLanguages value) getLanguages,
    required TResult Function(PublicProfileGetSkills value) getSkills,
    required TResult Function(PublicProfileGetBanner value) getBanner,
  }) {
    return getLanguages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PublicProfileGetBasicInfo value)? getBasicInfo,
    TResult? Function(PublicProfileGetEducation value)? getEducations,
    TResult? Function(PublicProfileGetCertificates value)? getCertificates,
    TResult? Function(PublicProfileGetExperiences value)? getExperiences,
    TResult? Function(PublicProfileGetLanguages value)? getLanguages,
    TResult? Function(PublicProfileGetSkills value)? getSkills,
    TResult? Function(PublicProfileGetBanner value)? getBanner,
  }) {
    return getLanguages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PublicProfileGetBasicInfo value)? getBasicInfo,
    TResult Function(PublicProfileGetEducation value)? getEducations,
    TResult Function(PublicProfileGetCertificates value)? getCertificates,
    TResult Function(PublicProfileGetExperiences value)? getExperiences,
    TResult Function(PublicProfileGetLanguages value)? getLanguages,
    TResult Function(PublicProfileGetSkills value)? getSkills,
    TResult Function(PublicProfileGetBanner value)? getBanner,
    required TResult orElse(),
  }) {
    if (getLanguages != null) {
      return getLanguages(this);
    }
    return orElse();
  }
}

abstract class PublicProfileGetLanguages implements PublicProfileEvent {
  const factory PublicProfileGetLanguages(final String userName) =
      _$PublicProfileGetLanguagesImpl;

  @override
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$$PublicProfileGetLanguagesImplCopyWith<_$PublicProfileGetLanguagesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PublicProfileGetSkillsImplCopyWith<$Res>
    implements $PublicProfileEventCopyWith<$Res> {
  factory _$$PublicProfileGetSkillsImplCopyWith(
          _$PublicProfileGetSkillsImpl value,
          $Res Function(_$PublicProfileGetSkillsImpl) then) =
      __$$PublicProfileGetSkillsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName});
}

/// @nodoc
class __$$PublicProfileGetSkillsImplCopyWithImpl<$Res>
    extends _$PublicProfileEventCopyWithImpl<$Res, _$PublicProfileGetSkillsImpl>
    implements _$$PublicProfileGetSkillsImplCopyWith<$Res> {
  __$$PublicProfileGetSkillsImplCopyWithImpl(
      _$PublicProfileGetSkillsImpl _value,
      $Res Function(_$PublicProfileGetSkillsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
  }) {
    return _then(_$PublicProfileGetSkillsImpl(
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PublicProfileGetSkillsImpl implements PublicProfileGetSkills {
  const _$PublicProfileGetSkillsImpl(this.userName);

  @override
  final String userName;

  @override
  String toString() {
    return 'PublicProfileEvent.getSkills(userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicProfileGetSkillsImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicProfileGetSkillsImplCopyWith<_$PublicProfileGetSkillsImpl>
      get copyWith => __$$PublicProfileGetSkillsImplCopyWithImpl<
          _$PublicProfileGetSkillsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName) getBasicInfo,
    required TResult Function(String userName) getEducations,
    required TResult Function(String userName) getCertificates,
    required TResult Function(String userName) getExperiences,
    required TResult Function(String userName) getLanguages,
    required TResult Function(String userName) getSkills,
    required TResult Function(String userName) getBanner,
  }) {
    return getSkills(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? getBasicInfo,
    TResult? Function(String userName)? getEducations,
    TResult? Function(String userName)? getCertificates,
    TResult? Function(String userName)? getExperiences,
    TResult? Function(String userName)? getLanguages,
    TResult? Function(String userName)? getSkills,
    TResult? Function(String userName)? getBanner,
  }) {
    return getSkills?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? getBasicInfo,
    TResult Function(String userName)? getEducations,
    TResult Function(String userName)? getCertificates,
    TResult Function(String userName)? getExperiences,
    TResult Function(String userName)? getLanguages,
    TResult Function(String userName)? getSkills,
    TResult Function(String userName)? getBanner,
    required TResult orElse(),
  }) {
    if (getSkills != null) {
      return getSkills(userName);
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
    required TResult Function(PublicProfileGetLanguages value) getLanguages,
    required TResult Function(PublicProfileGetSkills value) getSkills,
    required TResult Function(PublicProfileGetBanner value) getBanner,
  }) {
    return getSkills(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PublicProfileGetBasicInfo value)? getBasicInfo,
    TResult? Function(PublicProfileGetEducation value)? getEducations,
    TResult? Function(PublicProfileGetCertificates value)? getCertificates,
    TResult? Function(PublicProfileGetExperiences value)? getExperiences,
    TResult? Function(PublicProfileGetLanguages value)? getLanguages,
    TResult? Function(PublicProfileGetSkills value)? getSkills,
    TResult? Function(PublicProfileGetBanner value)? getBanner,
  }) {
    return getSkills?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PublicProfileGetBasicInfo value)? getBasicInfo,
    TResult Function(PublicProfileGetEducation value)? getEducations,
    TResult Function(PublicProfileGetCertificates value)? getCertificates,
    TResult Function(PublicProfileGetExperiences value)? getExperiences,
    TResult Function(PublicProfileGetLanguages value)? getLanguages,
    TResult Function(PublicProfileGetSkills value)? getSkills,
    TResult Function(PublicProfileGetBanner value)? getBanner,
    required TResult orElse(),
  }) {
    if (getSkills != null) {
      return getSkills(this);
    }
    return orElse();
  }
}

abstract class PublicProfileGetSkills implements PublicProfileEvent {
  const factory PublicProfileGetSkills(final String userName) =
      _$PublicProfileGetSkillsImpl;

  @override
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$$PublicProfileGetSkillsImplCopyWith<_$PublicProfileGetSkillsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PublicProfileGetBannerImplCopyWith<$Res>
    implements $PublicProfileEventCopyWith<$Res> {
  factory _$$PublicProfileGetBannerImplCopyWith(
          _$PublicProfileGetBannerImpl value,
          $Res Function(_$PublicProfileGetBannerImpl) then) =
      __$$PublicProfileGetBannerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName});
}

/// @nodoc
class __$$PublicProfileGetBannerImplCopyWithImpl<$Res>
    extends _$PublicProfileEventCopyWithImpl<$Res, _$PublicProfileGetBannerImpl>
    implements _$$PublicProfileGetBannerImplCopyWith<$Res> {
  __$$PublicProfileGetBannerImplCopyWithImpl(
      _$PublicProfileGetBannerImpl _value,
      $Res Function(_$PublicProfileGetBannerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
  }) {
    return _then(_$PublicProfileGetBannerImpl(
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PublicProfileGetBannerImpl implements PublicProfileGetBanner {
  const _$PublicProfileGetBannerImpl(this.userName);

  @override
  final String userName;

  @override
  String toString() {
    return 'PublicProfileEvent.getBanner(userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicProfileGetBannerImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicProfileGetBannerImplCopyWith<_$PublicProfileGetBannerImpl>
      get copyWith => __$$PublicProfileGetBannerImplCopyWithImpl<
          _$PublicProfileGetBannerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName) getBasicInfo,
    required TResult Function(String userName) getEducations,
    required TResult Function(String userName) getCertificates,
    required TResult Function(String userName) getExperiences,
    required TResult Function(String userName) getLanguages,
    required TResult Function(String userName) getSkills,
    required TResult Function(String userName) getBanner,
  }) {
    return getBanner(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? getBasicInfo,
    TResult? Function(String userName)? getEducations,
    TResult? Function(String userName)? getCertificates,
    TResult? Function(String userName)? getExperiences,
    TResult? Function(String userName)? getLanguages,
    TResult? Function(String userName)? getSkills,
    TResult? Function(String userName)? getBanner,
  }) {
    return getBanner?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? getBasicInfo,
    TResult Function(String userName)? getEducations,
    TResult Function(String userName)? getCertificates,
    TResult Function(String userName)? getExperiences,
    TResult Function(String userName)? getLanguages,
    TResult Function(String userName)? getSkills,
    TResult Function(String userName)? getBanner,
    required TResult orElse(),
  }) {
    if (getBanner != null) {
      return getBanner(userName);
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
    required TResult Function(PublicProfileGetLanguages value) getLanguages,
    required TResult Function(PublicProfileGetSkills value) getSkills,
    required TResult Function(PublicProfileGetBanner value) getBanner,
  }) {
    return getBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PublicProfileGetBasicInfo value)? getBasicInfo,
    TResult? Function(PublicProfileGetEducation value)? getEducations,
    TResult? Function(PublicProfileGetCertificates value)? getCertificates,
    TResult? Function(PublicProfileGetExperiences value)? getExperiences,
    TResult? Function(PublicProfileGetLanguages value)? getLanguages,
    TResult? Function(PublicProfileGetSkills value)? getSkills,
    TResult? Function(PublicProfileGetBanner value)? getBanner,
  }) {
    return getBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PublicProfileGetBasicInfo value)? getBasicInfo,
    TResult Function(PublicProfileGetEducation value)? getEducations,
    TResult Function(PublicProfileGetCertificates value)? getCertificates,
    TResult Function(PublicProfileGetExperiences value)? getExperiences,
    TResult Function(PublicProfileGetLanguages value)? getLanguages,
    TResult Function(PublicProfileGetSkills value)? getSkills,
    TResult Function(PublicProfileGetBanner value)? getBanner,
    required TResult orElse(),
  }) {
    if (getBanner != null) {
      return getBanner(this);
    }
    return orElse();
  }
}

abstract class PublicProfileGetBanner implements PublicProfileEvent {
  const factory PublicProfileGetBanner(final String userName) =
      _$PublicProfileGetBannerImpl;

  @override
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$$PublicProfileGetBannerImplCopyWith<_$PublicProfileGetBannerImpl>
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
    required TResult Function(List<PublicLanguageModel> languages)
        getLanguagesSuccess,
    required TResult Function(List<PublicSkillModel> skills) getSkillsSuccess,
    required TResult Function(BannerModel banner) getBannerSuccess,
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
    TResult? Function(List<PublicLanguageModel> languages)? getLanguagesSuccess,
    TResult? Function(List<PublicSkillModel> skills)? getSkillsSuccess,
    TResult? Function(BannerModel banner)? getBannerSuccess,
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
    TResult Function(List<PublicLanguageModel> languages)? getLanguagesSuccess,
    TResult Function(List<PublicSkillModel> skills)? getSkillsSuccess,
    TResult Function(BannerModel banner)? getBannerSuccess,
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
    required TResult Function(PublicProfileGetLanguagesSuccess value)
        getLanguagesSuccess,
    required TResult Function(PublicProfileGetSkillsSuccess value)
        getSkillsSuccess,
    required TResult Function(PublicProfileGetBannerSuccess value)
        getBannerSuccess,
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
    TResult? Function(PublicProfileGetLanguagesSuccess value)?
        getLanguagesSuccess,
    TResult? Function(PublicProfileGetSkillsSuccess value)? getSkillsSuccess,
    TResult? Function(PublicProfileGetBannerSuccess value)? getBannerSuccess,
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
    TResult Function(PublicProfileGetLanguagesSuccess value)?
        getLanguagesSuccess,
    TResult Function(PublicProfileGetSkillsSuccess value)? getSkillsSuccess,
    TResult Function(PublicProfileGetBannerSuccess value)? getBannerSuccess,
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
    required TResult Function(List<PublicLanguageModel> languages)
        getLanguagesSuccess,
    required TResult Function(List<PublicSkillModel> skills) getSkillsSuccess,
    required TResult Function(BannerModel banner) getBannerSuccess,
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
    TResult? Function(List<PublicLanguageModel> languages)? getLanguagesSuccess,
    TResult? Function(List<PublicSkillModel> skills)? getSkillsSuccess,
    TResult? Function(BannerModel banner)? getBannerSuccess,
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
    TResult Function(List<PublicLanguageModel> languages)? getLanguagesSuccess,
    TResult Function(List<PublicSkillModel> skills)? getSkillsSuccess,
    TResult Function(BannerModel banner)? getBannerSuccess,
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
    required TResult Function(PublicProfileGetLanguagesSuccess value)
        getLanguagesSuccess,
    required TResult Function(PublicProfileGetSkillsSuccess value)
        getSkillsSuccess,
    required TResult Function(PublicProfileGetBannerSuccess value)
        getBannerSuccess,
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
    TResult? Function(PublicProfileGetLanguagesSuccess value)?
        getLanguagesSuccess,
    TResult? Function(PublicProfileGetSkillsSuccess value)? getSkillsSuccess,
    TResult? Function(PublicProfileGetBannerSuccess value)? getBannerSuccess,
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
    TResult Function(PublicProfileGetLanguagesSuccess value)?
        getLanguagesSuccess,
    TResult Function(PublicProfileGetSkillsSuccess value)? getSkillsSuccess,
    TResult Function(PublicProfileGetBannerSuccess value)? getBannerSuccess,
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
    required TResult Function(List<PublicLanguageModel> languages)
        getLanguagesSuccess,
    required TResult Function(List<PublicSkillModel> skills) getSkillsSuccess,
    required TResult Function(BannerModel banner) getBannerSuccess,
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
    TResult? Function(List<PublicLanguageModel> languages)? getLanguagesSuccess,
    TResult? Function(List<PublicSkillModel> skills)? getSkillsSuccess,
    TResult? Function(BannerModel banner)? getBannerSuccess,
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
    TResult Function(List<PublicLanguageModel> languages)? getLanguagesSuccess,
    TResult Function(List<PublicSkillModel> skills)? getSkillsSuccess,
    TResult Function(BannerModel banner)? getBannerSuccess,
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
    required TResult Function(PublicProfileGetLanguagesSuccess value)
        getLanguagesSuccess,
    required TResult Function(PublicProfileGetSkillsSuccess value)
        getSkillsSuccess,
    required TResult Function(PublicProfileGetBannerSuccess value)
        getBannerSuccess,
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
    TResult? Function(PublicProfileGetLanguagesSuccess value)?
        getLanguagesSuccess,
    TResult? Function(PublicProfileGetSkillsSuccess value)? getSkillsSuccess,
    TResult? Function(PublicProfileGetBannerSuccess value)? getBannerSuccess,
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
    TResult Function(PublicProfileGetLanguagesSuccess value)?
        getLanguagesSuccess,
    TResult Function(PublicProfileGetSkillsSuccess value)? getSkillsSuccess,
    TResult Function(PublicProfileGetBannerSuccess value)? getBannerSuccess,
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
    required TResult Function(List<PublicLanguageModel> languages)
        getLanguagesSuccess,
    required TResult Function(List<PublicSkillModel> skills) getSkillsSuccess,
    required TResult Function(BannerModel banner) getBannerSuccess,
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
    TResult? Function(List<PublicLanguageModel> languages)? getLanguagesSuccess,
    TResult? Function(List<PublicSkillModel> skills)? getSkillsSuccess,
    TResult? Function(BannerModel banner)? getBannerSuccess,
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
    TResult Function(List<PublicLanguageModel> languages)? getLanguagesSuccess,
    TResult Function(List<PublicSkillModel> skills)? getSkillsSuccess,
    TResult Function(BannerModel banner)? getBannerSuccess,
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
    required TResult Function(PublicProfileGetLanguagesSuccess value)
        getLanguagesSuccess,
    required TResult Function(PublicProfileGetSkillsSuccess value)
        getSkillsSuccess,
    required TResult Function(PublicProfileGetBannerSuccess value)
        getBannerSuccess,
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
    TResult? Function(PublicProfileGetLanguagesSuccess value)?
        getLanguagesSuccess,
    TResult? Function(PublicProfileGetSkillsSuccess value)? getSkillsSuccess,
    TResult? Function(PublicProfileGetBannerSuccess value)? getBannerSuccess,
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
    TResult Function(PublicProfileGetLanguagesSuccess value)?
        getLanguagesSuccess,
    TResult Function(PublicProfileGetSkillsSuccess value)? getSkillsSuccess,
    TResult Function(PublicProfileGetBannerSuccess value)? getBannerSuccess,
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
    required TResult Function(List<PublicLanguageModel> languages)
        getLanguagesSuccess,
    required TResult Function(List<PublicSkillModel> skills) getSkillsSuccess,
    required TResult Function(BannerModel banner) getBannerSuccess,
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
    TResult? Function(List<PublicLanguageModel> languages)? getLanguagesSuccess,
    TResult? Function(List<PublicSkillModel> skills)? getSkillsSuccess,
    TResult? Function(BannerModel banner)? getBannerSuccess,
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
    TResult Function(List<PublicLanguageModel> languages)? getLanguagesSuccess,
    TResult Function(List<PublicSkillModel> skills)? getSkillsSuccess,
    TResult Function(BannerModel banner)? getBannerSuccess,
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
    required TResult Function(PublicProfileGetLanguagesSuccess value)
        getLanguagesSuccess,
    required TResult Function(PublicProfileGetSkillsSuccess value)
        getSkillsSuccess,
    required TResult Function(PublicProfileGetBannerSuccess value)
        getBannerSuccess,
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
    TResult? Function(PublicProfileGetLanguagesSuccess value)?
        getLanguagesSuccess,
    TResult? Function(PublicProfileGetSkillsSuccess value)? getSkillsSuccess,
    TResult? Function(PublicProfileGetBannerSuccess value)? getBannerSuccess,
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
    TResult Function(PublicProfileGetLanguagesSuccess value)?
        getLanguagesSuccess,
    TResult Function(PublicProfileGetSkillsSuccess value)? getSkillsSuccess,
    TResult Function(PublicProfileGetBannerSuccess value)? getBannerSuccess,
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
    required TResult Function(List<PublicLanguageModel> languages)
        getLanguagesSuccess,
    required TResult Function(List<PublicSkillModel> skills) getSkillsSuccess,
    required TResult Function(BannerModel banner) getBannerSuccess,
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
    TResult? Function(List<PublicLanguageModel> languages)? getLanguagesSuccess,
    TResult? Function(List<PublicSkillModel> skills)? getSkillsSuccess,
    TResult? Function(BannerModel banner)? getBannerSuccess,
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
    TResult Function(List<PublicLanguageModel> languages)? getLanguagesSuccess,
    TResult Function(List<PublicSkillModel> skills)? getSkillsSuccess,
    TResult Function(BannerModel banner)? getBannerSuccess,
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
    required TResult Function(PublicProfileGetLanguagesSuccess value)
        getLanguagesSuccess,
    required TResult Function(PublicProfileGetSkillsSuccess value)
        getSkillsSuccess,
    required TResult Function(PublicProfileGetBannerSuccess value)
        getBannerSuccess,
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
    TResult? Function(PublicProfileGetLanguagesSuccess value)?
        getLanguagesSuccess,
    TResult? Function(PublicProfileGetSkillsSuccess value)? getSkillsSuccess,
    TResult? Function(PublicProfileGetBannerSuccess value)? getBannerSuccess,
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
    TResult Function(PublicProfileGetLanguagesSuccess value)?
        getLanguagesSuccess,
    TResult Function(PublicProfileGetSkillsSuccess value)? getSkillsSuccess,
    TResult Function(PublicProfileGetBannerSuccess value)? getBannerSuccess,
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
    required TResult Function(List<PublicLanguageModel> languages)
        getLanguagesSuccess,
    required TResult Function(List<PublicSkillModel> skills) getSkillsSuccess,
    required TResult Function(BannerModel banner) getBannerSuccess,
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
    TResult? Function(List<PublicLanguageModel> languages)? getLanguagesSuccess,
    TResult? Function(List<PublicSkillModel> skills)? getSkillsSuccess,
    TResult? Function(BannerModel banner)? getBannerSuccess,
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
    TResult Function(List<PublicLanguageModel> languages)? getLanguagesSuccess,
    TResult Function(List<PublicSkillModel> skills)? getSkillsSuccess,
    TResult Function(BannerModel banner)? getBannerSuccess,
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
    required TResult Function(PublicProfileGetLanguagesSuccess value)
        getLanguagesSuccess,
    required TResult Function(PublicProfileGetSkillsSuccess value)
        getSkillsSuccess,
    required TResult Function(PublicProfileGetBannerSuccess value)
        getBannerSuccess,
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
    TResult? Function(PublicProfileGetLanguagesSuccess value)?
        getLanguagesSuccess,
    TResult? Function(PublicProfileGetSkillsSuccess value)? getSkillsSuccess,
    TResult? Function(PublicProfileGetBannerSuccess value)? getBannerSuccess,
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
    TResult Function(PublicProfileGetLanguagesSuccess value)?
        getLanguagesSuccess,
    TResult Function(PublicProfileGetSkillsSuccess value)? getSkillsSuccess,
    TResult Function(PublicProfileGetBannerSuccess value)? getBannerSuccess,
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
    required TResult Function(List<PublicLanguageModel> languages)
        getLanguagesSuccess,
    required TResult Function(List<PublicSkillModel> skills) getSkillsSuccess,
    required TResult Function(BannerModel banner) getBannerSuccess,
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
    TResult? Function(List<PublicLanguageModel> languages)? getLanguagesSuccess,
    TResult? Function(List<PublicSkillModel> skills)? getSkillsSuccess,
    TResult? Function(BannerModel banner)? getBannerSuccess,
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
    TResult Function(List<PublicLanguageModel> languages)? getLanguagesSuccess,
    TResult Function(List<PublicSkillModel> skills)? getSkillsSuccess,
    TResult Function(BannerModel banner)? getBannerSuccess,
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
    required TResult Function(PublicProfileGetLanguagesSuccess value)
        getLanguagesSuccess,
    required TResult Function(PublicProfileGetSkillsSuccess value)
        getSkillsSuccess,
    required TResult Function(PublicProfileGetBannerSuccess value)
        getBannerSuccess,
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
    TResult? Function(PublicProfileGetLanguagesSuccess value)?
        getLanguagesSuccess,
    TResult? Function(PublicProfileGetSkillsSuccess value)? getSkillsSuccess,
    TResult? Function(PublicProfileGetBannerSuccess value)? getBannerSuccess,
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
    TResult Function(PublicProfileGetLanguagesSuccess value)?
        getLanguagesSuccess,
    TResult Function(PublicProfileGetSkillsSuccess value)? getSkillsSuccess,
    TResult Function(PublicProfileGetBannerSuccess value)? getBannerSuccess,
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

/// @nodoc
abstract class _$$PublicProfileGetLanguagesSuccessImplCopyWith<$Res> {
  factory _$$PublicProfileGetLanguagesSuccessImplCopyWith(
          _$PublicProfileGetLanguagesSuccessImpl value,
          $Res Function(_$PublicProfileGetLanguagesSuccessImpl) then) =
      __$$PublicProfileGetLanguagesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PublicLanguageModel> languages});
}

/// @nodoc
class __$$PublicProfileGetLanguagesSuccessImplCopyWithImpl<$Res>
    extends _$PublicProfileStateCopyWithImpl<$Res,
        _$PublicProfileGetLanguagesSuccessImpl>
    implements _$$PublicProfileGetLanguagesSuccessImplCopyWith<$Res> {
  __$$PublicProfileGetLanguagesSuccessImplCopyWithImpl(
      _$PublicProfileGetLanguagesSuccessImpl _value,
      $Res Function(_$PublicProfileGetLanguagesSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languages = null,
  }) {
    return _then(_$PublicProfileGetLanguagesSuccessImpl(
      null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<PublicLanguageModel>,
    ));
  }
}

/// @nodoc

class _$PublicProfileGetLanguagesSuccessImpl
    implements PublicProfileGetLanguagesSuccess {
  const _$PublicProfileGetLanguagesSuccessImpl(
      final List<PublicLanguageModel> languages)
      : _languages = languages;

  final List<PublicLanguageModel> _languages;
  @override
  List<PublicLanguageModel> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  @override
  String toString() {
    return 'PublicProfileState.getLanguagesSuccess(languages: $languages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicProfileGetLanguagesSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_languages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicProfileGetLanguagesSuccessImplCopyWith<
          _$PublicProfileGetLanguagesSuccessImpl>
      get copyWith => __$$PublicProfileGetLanguagesSuccessImplCopyWithImpl<
          _$PublicProfileGetLanguagesSuccessImpl>(this, _$identity);

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
    required TResult Function(List<PublicLanguageModel> languages)
        getLanguagesSuccess,
    required TResult Function(List<PublicSkillModel> skills) getSkillsSuccess,
    required TResult Function(BannerModel banner) getBannerSuccess,
  }) {
    return getLanguagesSuccess(languages);
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
    TResult? Function(List<PublicLanguageModel> languages)? getLanguagesSuccess,
    TResult? Function(List<PublicSkillModel> skills)? getSkillsSuccess,
    TResult? Function(BannerModel banner)? getBannerSuccess,
  }) {
    return getLanguagesSuccess?.call(languages);
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
    TResult Function(List<PublicLanguageModel> languages)? getLanguagesSuccess,
    TResult Function(List<PublicSkillModel> skills)? getSkillsSuccess,
    TResult Function(BannerModel banner)? getBannerSuccess,
    required TResult orElse(),
  }) {
    if (getLanguagesSuccess != null) {
      return getLanguagesSuccess(languages);
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
    required TResult Function(PublicProfileGetLanguagesSuccess value)
        getLanguagesSuccess,
    required TResult Function(PublicProfileGetSkillsSuccess value)
        getSkillsSuccess,
    required TResult Function(PublicProfileGetBannerSuccess value)
        getBannerSuccess,
  }) {
    return getLanguagesSuccess(this);
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
    TResult? Function(PublicProfileGetLanguagesSuccess value)?
        getLanguagesSuccess,
    TResult? Function(PublicProfileGetSkillsSuccess value)? getSkillsSuccess,
    TResult? Function(PublicProfileGetBannerSuccess value)? getBannerSuccess,
  }) {
    return getLanguagesSuccess?.call(this);
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
    TResult Function(PublicProfileGetLanguagesSuccess value)?
        getLanguagesSuccess,
    TResult Function(PublicProfileGetSkillsSuccess value)? getSkillsSuccess,
    TResult Function(PublicProfileGetBannerSuccess value)? getBannerSuccess,
    required TResult orElse(),
  }) {
    if (getLanguagesSuccess != null) {
      return getLanguagesSuccess(this);
    }
    return orElse();
  }
}

abstract class PublicProfileGetLanguagesSuccess implements PublicProfileState {
  const factory PublicProfileGetLanguagesSuccess(
          final List<PublicLanguageModel> languages) =
      _$PublicProfileGetLanguagesSuccessImpl;

  List<PublicLanguageModel> get languages;
  @JsonKey(ignore: true)
  _$$PublicProfileGetLanguagesSuccessImplCopyWith<
          _$PublicProfileGetLanguagesSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PublicProfileGetSkillsSuccessImplCopyWith<$Res> {
  factory _$$PublicProfileGetSkillsSuccessImplCopyWith(
          _$PublicProfileGetSkillsSuccessImpl value,
          $Res Function(_$PublicProfileGetSkillsSuccessImpl) then) =
      __$$PublicProfileGetSkillsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PublicSkillModel> skills});
}

/// @nodoc
class __$$PublicProfileGetSkillsSuccessImplCopyWithImpl<$Res>
    extends _$PublicProfileStateCopyWithImpl<$Res,
        _$PublicProfileGetSkillsSuccessImpl>
    implements _$$PublicProfileGetSkillsSuccessImplCopyWith<$Res> {
  __$$PublicProfileGetSkillsSuccessImplCopyWithImpl(
      _$PublicProfileGetSkillsSuccessImpl _value,
      $Res Function(_$PublicProfileGetSkillsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skills = null,
  }) {
    return _then(_$PublicProfileGetSkillsSuccessImpl(
      null == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<PublicSkillModel>,
    ));
  }
}

/// @nodoc

class _$PublicProfileGetSkillsSuccessImpl
    implements PublicProfileGetSkillsSuccess {
  const _$PublicProfileGetSkillsSuccessImpl(final List<PublicSkillModel> skills)
      : _skills = skills;

  final List<PublicSkillModel> _skills;
  @override
  List<PublicSkillModel> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  @override
  String toString() {
    return 'PublicProfileState.getSkillsSuccess(skills: $skills)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicProfileGetSkillsSuccessImpl &&
            const DeepCollectionEquality().equals(other._skills, _skills));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_skills));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicProfileGetSkillsSuccessImplCopyWith<
          _$PublicProfileGetSkillsSuccessImpl>
      get copyWith => __$$PublicProfileGetSkillsSuccessImplCopyWithImpl<
          _$PublicProfileGetSkillsSuccessImpl>(this, _$identity);

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
    required TResult Function(List<PublicLanguageModel> languages)
        getLanguagesSuccess,
    required TResult Function(List<PublicSkillModel> skills) getSkillsSuccess,
    required TResult Function(BannerModel banner) getBannerSuccess,
  }) {
    return getSkillsSuccess(skills);
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
    TResult? Function(List<PublicLanguageModel> languages)? getLanguagesSuccess,
    TResult? Function(List<PublicSkillModel> skills)? getSkillsSuccess,
    TResult? Function(BannerModel banner)? getBannerSuccess,
  }) {
    return getSkillsSuccess?.call(skills);
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
    TResult Function(List<PublicLanguageModel> languages)? getLanguagesSuccess,
    TResult Function(List<PublicSkillModel> skills)? getSkillsSuccess,
    TResult Function(BannerModel banner)? getBannerSuccess,
    required TResult orElse(),
  }) {
    if (getSkillsSuccess != null) {
      return getSkillsSuccess(skills);
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
    required TResult Function(PublicProfileGetLanguagesSuccess value)
        getLanguagesSuccess,
    required TResult Function(PublicProfileGetSkillsSuccess value)
        getSkillsSuccess,
    required TResult Function(PublicProfileGetBannerSuccess value)
        getBannerSuccess,
  }) {
    return getSkillsSuccess(this);
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
    TResult? Function(PublicProfileGetLanguagesSuccess value)?
        getLanguagesSuccess,
    TResult? Function(PublicProfileGetSkillsSuccess value)? getSkillsSuccess,
    TResult? Function(PublicProfileGetBannerSuccess value)? getBannerSuccess,
  }) {
    return getSkillsSuccess?.call(this);
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
    TResult Function(PublicProfileGetLanguagesSuccess value)?
        getLanguagesSuccess,
    TResult Function(PublicProfileGetSkillsSuccess value)? getSkillsSuccess,
    TResult Function(PublicProfileGetBannerSuccess value)? getBannerSuccess,
    required TResult orElse(),
  }) {
    if (getSkillsSuccess != null) {
      return getSkillsSuccess(this);
    }
    return orElse();
  }
}

abstract class PublicProfileGetSkillsSuccess implements PublicProfileState {
  const factory PublicProfileGetSkillsSuccess(
          final List<PublicSkillModel> skills) =
      _$PublicProfileGetSkillsSuccessImpl;

  List<PublicSkillModel> get skills;
  @JsonKey(ignore: true)
  _$$PublicProfileGetSkillsSuccessImplCopyWith<
          _$PublicProfileGetSkillsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PublicProfileGetBannerSuccessImplCopyWith<$Res> {
  factory _$$PublicProfileGetBannerSuccessImplCopyWith(
          _$PublicProfileGetBannerSuccessImpl value,
          $Res Function(_$PublicProfileGetBannerSuccessImpl) then) =
      __$$PublicProfileGetBannerSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BannerModel banner});

  $BannerModelCopyWith<$Res> get banner;
}

/// @nodoc
class __$$PublicProfileGetBannerSuccessImplCopyWithImpl<$Res>
    extends _$PublicProfileStateCopyWithImpl<$Res,
        _$PublicProfileGetBannerSuccessImpl>
    implements _$$PublicProfileGetBannerSuccessImplCopyWith<$Res> {
  __$$PublicProfileGetBannerSuccessImplCopyWithImpl(
      _$PublicProfileGetBannerSuccessImpl _value,
      $Res Function(_$PublicProfileGetBannerSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banner = null,
  }) {
    return _then(_$PublicProfileGetBannerSuccessImpl(
      null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as BannerModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BannerModelCopyWith<$Res> get banner {
    return $BannerModelCopyWith<$Res>(_value.banner, (value) {
      return _then(_value.copyWith(banner: value));
    });
  }
}

/// @nodoc

class _$PublicProfileGetBannerSuccessImpl
    implements PublicProfileGetBannerSuccess {
  const _$PublicProfileGetBannerSuccessImpl(this.banner);

  @override
  final BannerModel banner;

  @override
  String toString() {
    return 'PublicProfileState.getBannerSuccess(banner: $banner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicProfileGetBannerSuccessImpl &&
            (identical(other.banner, banner) || other.banner == banner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, banner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicProfileGetBannerSuccessImplCopyWith<
          _$PublicProfileGetBannerSuccessImpl>
      get copyWith => __$$PublicProfileGetBannerSuccessImplCopyWithImpl<
          _$PublicProfileGetBannerSuccessImpl>(this, _$identity);

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
    required TResult Function(List<PublicLanguageModel> languages)
        getLanguagesSuccess,
    required TResult Function(List<PublicSkillModel> skills) getSkillsSuccess,
    required TResult Function(BannerModel banner) getBannerSuccess,
  }) {
    return getBannerSuccess(banner);
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
    TResult? Function(List<PublicLanguageModel> languages)? getLanguagesSuccess,
    TResult? Function(List<PublicSkillModel> skills)? getSkillsSuccess,
    TResult? Function(BannerModel banner)? getBannerSuccess,
  }) {
    return getBannerSuccess?.call(banner);
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
    TResult Function(List<PublicLanguageModel> languages)? getLanguagesSuccess,
    TResult Function(List<PublicSkillModel> skills)? getSkillsSuccess,
    TResult Function(BannerModel banner)? getBannerSuccess,
    required TResult orElse(),
  }) {
    if (getBannerSuccess != null) {
      return getBannerSuccess(banner);
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
    required TResult Function(PublicProfileGetLanguagesSuccess value)
        getLanguagesSuccess,
    required TResult Function(PublicProfileGetSkillsSuccess value)
        getSkillsSuccess,
    required TResult Function(PublicProfileGetBannerSuccess value)
        getBannerSuccess,
  }) {
    return getBannerSuccess(this);
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
    TResult? Function(PublicProfileGetLanguagesSuccess value)?
        getLanguagesSuccess,
    TResult? Function(PublicProfileGetSkillsSuccess value)? getSkillsSuccess,
    TResult? Function(PublicProfileGetBannerSuccess value)? getBannerSuccess,
  }) {
    return getBannerSuccess?.call(this);
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
    TResult Function(PublicProfileGetLanguagesSuccess value)?
        getLanguagesSuccess,
    TResult Function(PublicProfileGetSkillsSuccess value)? getSkillsSuccess,
    TResult Function(PublicProfileGetBannerSuccess value)? getBannerSuccess,
    required TResult orElse(),
  }) {
    if (getBannerSuccess != null) {
      return getBannerSuccess(this);
    }
    return orElse();
  }
}

abstract class PublicProfileGetBannerSuccess implements PublicProfileState {
  const factory PublicProfileGetBannerSuccess(final BannerModel banner) =
      _$PublicProfileGetBannerSuccessImpl;

  BannerModel get banner;
  @JsonKey(ignore: true)
  _$$PublicProfileGetBannerSuccessImplCopyWith<
          _$PublicProfileGetBannerSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
