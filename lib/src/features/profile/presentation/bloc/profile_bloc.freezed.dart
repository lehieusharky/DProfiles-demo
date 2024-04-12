// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUserinfo,
    required TResult Function(EducationModel educationModel) addNewEducation,
    required TResult Function(ExperienceModel experienceModel) addNewExperience,
    required TResult Function(CertificateModel certificateModel)
        addNewCertificate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserinfo,
    TResult? Function(EducationModel educationModel)? addNewEducation,
    TResult? Function(ExperienceModel experienceModel)? addNewExperience,
    TResult? Function(CertificateModel certificateModel)? addNewCertificate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserinfo,
    TResult Function(EducationModel educationModel)? addNewEducation,
    TResult Function(ExperienceModel experienceModel)? addNewExperience,
    TResult Function(CertificateModel certificateModel)? addNewCertificate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProfileGetUserInfo value) getUserinfo,
    required TResult Function(ProfileAddNewEducation value) addNewEducation,
    required TResult Function(ProfileAddNewExperience value) addNewExperience,
    required TResult Function(ProfileAddNewCertificate value) addNewCertificate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ProfileGetUserInfo value)? getUserinfo,
    TResult? Function(ProfileAddNewEducation value)? addNewEducation,
    TResult? Function(ProfileAddNewExperience value)? addNewExperience,
    TResult? Function(ProfileAddNewCertificate value)? addNewCertificate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProfileGetUserInfo value)? getUserinfo,
    TResult Function(ProfileAddNewEducation value)? addNewEducation,
    TResult Function(ProfileAddNewExperience value)? addNewExperience,
    TResult Function(ProfileAddNewCertificate value)? addNewCertificate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ProfileEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUserinfo,
    required TResult Function(EducationModel educationModel) addNewEducation,
    required TResult Function(ExperienceModel experienceModel) addNewExperience,
    required TResult Function(CertificateModel certificateModel)
        addNewCertificate,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserinfo,
    TResult? Function(EducationModel educationModel)? addNewEducation,
    TResult? Function(ExperienceModel experienceModel)? addNewExperience,
    TResult? Function(CertificateModel certificateModel)? addNewCertificate,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserinfo,
    TResult Function(EducationModel educationModel)? addNewEducation,
    TResult Function(ExperienceModel experienceModel)? addNewExperience,
    TResult Function(CertificateModel certificateModel)? addNewCertificate,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProfileGetUserInfo value) getUserinfo,
    required TResult Function(ProfileAddNewEducation value) addNewEducation,
    required TResult Function(ProfileAddNewExperience value) addNewExperience,
    required TResult Function(ProfileAddNewCertificate value) addNewCertificate,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ProfileGetUserInfo value)? getUserinfo,
    TResult? Function(ProfileAddNewEducation value)? addNewEducation,
    TResult? Function(ProfileAddNewExperience value)? addNewExperience,
    TResult? Function(ProfileAddNewCertificate value)? addNewCertificate,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProfileGetUserInfo value)? getUserinfo,
    TResult Function(ProfileAddNewEducation value)? addNewEducation,
    TResult Function(ProfileAddNewExperience value)? addNewExperience,
    TResult Function(ProfileAddNewCertificate value)? addNewCertificate,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProfileEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ProfileGetUserInfoImplCopyWith<$Res> {
  factory _$$ProfileGetUserInfoImplCopyWith(_$ProfileGetUserInfoImpl value,
          $Res Function(_$ProfileGetUserInfoImpl) then) =
      __$$ProfileGetUserInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileGetUserInfoImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileGetUserInfoImpl>
    implements _$$ProfileGetUserInfoImplCopyWith<$Res> {
  __$$ProfileGetUserInfoImplCopyWithImpl(_$ProfileGetUserInfoImpl _value,
      $Res Function(_$ProfileGetUserInfoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileGetUserInfoImpl implements ProfileGetUserInfo {
  const _$ProfileGetUserInfoImpl();

  @override
  String toString() {
    return 'ProfileEvent.getUserinfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileGetUserInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUserinfo,
    required TResult Function(EducationModel educationModel) addNewEducation,
    required TResult Function(ExperienceModel experienceModel) addNewExperience,
    required TResult Function(CertificateModel certificateModel)
        addNewCertificate,
  }) {
    return getUserinfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserinfo,
    TResult? Function(EducationModel educationModel)? addNewEducation,
    TResult? Function(ExperienceModel experienceModel)? addNewExperience,
    TResult? Function(CertificateModel certificateModel)? addNewCertificate,
  }) {
    return getUserinfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserinfo,
    TResult Function(EducationModel educationModel)? addNewEducation,
    TResult Function(ExperienceModel experienceModel)? addNewExperience,
    TResult Function(CertificateModel certificateModel)? addNewCertificate,
    required TResult orElse(),
  }) {
    if (getUserinfo != null) {
      return getUserinfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProfileGetUserInfo value) getUserinfo,
    required TResult Function(ProfileAddNewEducation value) addNewEducation,
    required TResult Function(ProfileAddNewExperience value) addNewExperience,
    required TResult Function(ProfileAddNewCertificate value) addNewCertificate,
  }) {
    return getUserinfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ProfileGetUserInfo value)? getUserinfo,
    TResult? Function(ProfileAddNewEducation value)? addNewEducation,
    TResult? Function(ProfileAddNewExperience value)? addNewExperience,
    TResult? Function(ProfileAddNewCertificate value)? addNewCertificate,
  }) {
    return getUserinfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProfileGetUserInfo value)? getUserinfo,
    TResult Function(ProfileAddNewEducation value)? addNewEducation,
    TResult Function(ProfileAddNewExperience value)? addNewExperience,
    TResult Function(ProfileAddNewCertificate value)? addNewCertificate,
    required TResult orElse(),
  }) {
    if (getUserinfo != null) {
      return getUserinfo(this);
    }
    return orElse();
  }
}

abstract class ProfileGetUserInfo implements ProfileEvent {
  const factory ProfileGetUserInfo() = _$ProfileGetUserInfoImpl;
}

/// @nodoc
abstract class _$$ProfileAddNewEducationImplCopyWith<$Res> {
  factory _$$ProfileAddNewEducationImplCopyWith(
          _$ProfileAddNewEducationImpl value,
          $Res Function(_$ProfileAddNewEducationImpl) then) =
      __$$ProfileAddNewEducationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EducationModel educationModel});

  $EducationModelCopyWith<$Res> get educationModel;
}

/// @nodoc
class __$$ProfileAddNewEducationImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileAddNewEducationImpl>
    implements _$$ProfileAddNewEducationImplCopyWith<$Res> {
  __$$ProfileAddNewEducationImplCopyWithImpl(
      _$ProfileAddNewEducationImpl _value,
      $Res Function(_$ProfileAddNewEducationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? educationModel = null,
  }) {
    return _then(_$ProfileAddNewEducationImpl(
      null == educationModel
          ? _value.educationModel
          : educationModel // ignore: cast_nullable_to_non_nullable
              as EducationModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EducationModelCopyWith<$Res> get educationModel {
    return $EducationModelCopyWith<$Res>(_value.educationModel, (value) {
      return _then(_value.copyWith(educationModel: value));
    });
  }
}

/// @nodoc

class _$ProfileAddNewEducationImpl implements ProfileAddNewEducation {
  const _$ProfileAddNewEducationImpl(this.educationModel);

  @override
  final EducationModel educationModel;

  @override
  String toString() {
    return 'ProfileEvent.addNewEducation(educationModel: $educationModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileAddNewEducationImpl &&
            (identical(other.educationModel, educationModel) ||
                other.educationModel == educationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, educationModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileAddNewEducationImplCopyWith<_$ProfileAddNewEducationImpl>
      get copyWith => __$$ProfileAddNewEducationImplCopyWithImpl<
          _$ProfileAddNewEducationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUserinfo,
    required TResult Function(EducationModel educationModel) addNewEducation,
    required TResult Function(ExperienceModel experienceModel) addNewExperience,
    required TResult Function(CertificateModel certificateModel)
        addNewCertificate,
  }) {
    return addNewEducation(educationModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserinfo,
    TResult? Function(EducationModel educationModel)? addNewEducation,
    TResult? Function(ExperienceModel experienceModel)? addNewExperience,
    TResult? Function(CertificateModel certificateModel)? addNewCertificate,
  }) {
    return addNewEducation?.call(educationModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserinfo,
    TResult Function(EducationModel educationModel)? addNewEducation,
    TResult Function(ExperienceModel experienceModel)? addNewExperience,
    TResult Function(CertificateModel certificateModel)? addNewCertificate,
    required TResult orElse(),
  }) {
    if (addNewEducation != null) {
      return addNewEducation(educationModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProfileGetUserInfo value) getUserinfo,
    required TResult Function(ProfileAddNewEducation value) addNewEducation,
    required TResult Function(ProfileAddNewExperience value) addNewExperience,
    required TResult Function(ProfileAddNewCertificate value) addNewCertificate,
  }) {
    return addNewEducation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ProfileGetUserInfo value)? getUserinfo,
    TResult? Function(ProfileAddNewEducation value)? addNewEducation,
    TResult? Function(ProfileAddNewExperience value)? addNewExperience,
    TResult? Function(ProfileAddNewCertificate value)? addNewCertificate,
  }) {
    return addNewEducation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProfileGetUserInfo value)? getUserinfo,
    TResult Function(ProfileAddNewEducation value)? addNewEducation,
    TResult Function(ProfileAddNewExperience value)? addNewExperience,
    TResult Function(ProfileAddNewCertificate value)? addNewCertificate,
    required TResult orElse(),
  }) {
    if (addNewEducation != null) {
      return addNewEducation(this);
    }
    return orElse();
  }
}

abstract class ProfileAddNewEducation implements ProfileEvent {
  const factory ProfileAddNewEducation(final EducationModel educationModel) =
      _$ProfileAddNewEducationImpl;

  EducationModel get educationModel;
  @JsonKey(ignore: true)
  _$$ProfileAddNewEducationImplCopyWith<_$ProfileAddNewEducationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileAddNewExperienceImplCopyWith<$Res> {
  factory _$$ProfileAddNewExperienceImplCopyWith(
          _$ProfileAddNewExperienceImpl value,
          $Res Function(_$ProfileAddNewExperienceImpl) then) =
      __$$ProfileAddNewExperienceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExperienceModel experienceModel});

  $ExperienceModelCopyWith<$Res> get experienceModel;
}

/// @nodoc
class __$$ProfileAddNewExperienceImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileAddNewExperienceImpl>
    implements _$$ProfileAddNewExperienceImplCopyWith<$Res> {
  __$$ProfileAddNewExperienceImplCopyWithImpl(
      _$ProfileAddNewExperienceImpl _value,
      $Res Function(_$ProfileAddNewExperienceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? experienceModel = null,
  }) {
    return _then(_$ProfileAddNewExperienceImpl(
      null == experienceModel
          ? _value.experienceModel
          : experienceModel // ignore: cast_nullable_to_non_nullable
              as ExperienceModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ExperienceModelCopyWith<$Res> get experienceModel {
    return $ExperienceModelCopyWith<$Res>(_value.experienceModel, (value) {
      return _then(_value.copyWith(experienceModel: value));
    });
  }
}

/// @nodoc

class _$ProfileAddNewExperienceImpl implements ProfileAddNewExperience {
  const _$ProfileAddNewExperienceImpl(this.experienceModel);

  @override
  final ExperienceModel experienceModel;

  @override
  String toString() {
    return 'ProfileEvent.addNewExperience(experienceModel: $experienceModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileAddNewExperienceImpl &&
            (identical(other.experienceModel, experienceModel) ||
                other.experienceModel == experienceModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, experienceModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileAddNewExperienceImplCopyWith<_$ProfileAddNewExperienceImpl>
      get copyWith => __$$ProfileAddNewExperienceImplCopyWithImpl<
          _$ProfileAddNewExperienceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUserinfo,
    required TResult Function(EducationModel educationModel) addNewEducation,
    required TResult Function(ExperienceModel experienceModel) addNewExperience,
    required TResult Function(CertificateModel certificateModel)
        addNewCertificate,
  }) {
    return addNewExperience(experienceModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserinfo,
    TResult? Function(EducationModel educationModel)? addNewEducation,
    TResult? Function(ExperienceModel experienceModel)? addNewExperience,
    TResult? Function(CertificateModel certificateModel)? addNewCertificate,
  }) {
    return addNewExperience?.call(experienceModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserinfo,
    TResult Function(EducationModel educationModel)? addNewEducation,
    TResult Function(ExperienceModel experienceModel)? addNewExperience,
    TResult Function(CertificateModel certificateModel)? addNewCertificate,
    required TResult orElse(),
  }) {
    if (addNewExperience != null) {
      return addNewExperience(experienceModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProfileGetUserInfo value) getUserinfo,
    required TResult Function(ProfileAddNewEducation value) addNewEducation,
    required TResult Function(ProfileAddNewExperience value) addNewExperience,
    required TResult Function(ProfileAddNewCertificate value) addNewCertificate,
  }) {
    return addNewExperience(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ProfileGetUserInfo value)? getUserinfo,
    TResult? Function(ProfileAddNewEducation value)? addNewEducation,
    TResult? Function(ProfileAddNewExperience value)? addNewExperience,
    TResult? Function(ProfileAddNewCertificate value)? addNewCertificate,
  }) {
    return addNewExperience?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProfileGetUserInfo value)? getUserinfo,
    TResult Function(ProfileAddNewEducation value)? addNewEducation,
    TResult Function(ProfileAddNewExperience value)? addNewExperience,
    TResult Function(ProfileAddNewCertificate value)? addNewCertificate,
    required TResult orElse(),
  }) {
    if (addNewExperience != null) {
      return addNewExperience(this);
    }
    return orElse();
  }
}

abstract class ProfileAddNewExperience implements ProfileEvent {
  const factory ProfileAddNewExperience(final ExperienceModel experienceModel) =
      _$ProfileAddNewExperienceImpl;

  ExperienceModel get experienceModel;
  @JsonKey(ignore: true)
  _$$ProfileAddNewExperienceImplCopyWith<_$ProfileAddNewExperienceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileAddNewCertificateImplCopyWith<$Res> {
  factory _$$ProfileAddNewCertificateImplCopyWith(
          _$ProfileAddNewCertificateImpl value,
          $Res Function(_$ProfileAddNewCertificateImpl) then) =
      __$$ProfileAddNewCertificateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CertificateModel certificateModel});

  $CertificateModelCopyWith<$Res> get certificateModel;
}

/// @nodoc
class __$$ProfileAddNewCertificateImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileAddNewCertificateImpl>
    implements _$$ProfileAddNewCertificateImplCopyWith<$Res> {
  __$$ProfileAddNewCertificateImplCopyWithImpl(
      _$ProfileAddNewCertificateImpl _value,
      $Res Function(_$ProfileAddNewCertificateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certificateModel = null,
  }) {
    return _then(_$ProfileAddNewCertificateImpl(
      null == certificateModel
          ? _value.certificateModel
          : certificateModel // ignore: cast_nullable_to_non_nullable
              as CertificateModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CertificateModelCopyWith<$Res> get certificateModel {
    return $CertificateModelCopyWith<$Res>(_value.certificateModel, (value) {
      return _then(_value.copyWith(certificateModel: value));
    });
  }
}

/// @nodoc

class _$ProfileAddNewCertificateImpl implements ProfileAddNewCertificate {
  const _$ProfileAddNewCertificateImpl(this.certificateModel);

  @override
  final CertificateModel certificateModel;

  @override
  String toString() {
    return 'ProfileEvent.addNewCertificate(certificateModel: $certificateModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileAddNewCertificateImpl &&
            (identical(other.certificateModel, certificateModel) ||
                other.certificateModel == certificateModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, certificateModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileAddNewCertificateImplCopyWith<_$ProfileAddNewCertificateImpl>
      get copyWith => __$$ProfileAddNewCertificateImplCopyWithImpl<
          _$ProfileAddNewCertificateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUserinfo,
    required TResult Function(EducationModel educationModel) addNewEducation,
    required TResult Function(ExperienceModel experienceModel) addNewExperience,
    required TResult Function(CertificateModel certificateModel)
        addNewCertificate,
  }) {
    return addNewCertificate(certificateModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserinfo,
    TResult? Function(EducationModel educationModel)? addNewEducation,
    TResult? Function(ExperienceModel experienceModel)? addNewExperience,
    TResult? Function(CertificateModel certificateModel)? addNewCertificate,
  }) {
    return addNewCertificate?.call(certificateModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserinfo,
    TResult Function(EducationModel educationModel)? addNewEducation,
    TResult Function(ExperienceModel experienceModel)? addNewExperience,
    TResult Function(CertificateModel certificateModel)? addNewCertificate,
    required TResult orElse(),
  }) {
    if (addNewCertificate != null) {
      return addNewCertificate(certificateModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProfileGetUserInfo value) getUserinfo,
    required TResult Function(ProfileAddNewEducation value) addNewEducation,
    required TResult Function(ProfileAddNewExperience value) addNewExperience,
    required TResult Function(ProfileAddNewCertificate value) addNewCertificate,
  }) {
    return addNewCertificate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ProfileGetUserInfo value)? getUserinfo,
    TResult? Function(ProfileAddNewEducation value)? addNewEducation,
    TResult? Function(ProfileAddNewExperience value)? addNewExperience,
    TResult? Function(ProfileAddNewCertificate value)? addNewCertificate,
  }) {
    return addNewCertificate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProfileGetUserInfo value)? getUserinfo,
    TResult Function(ProfileAddNewEducation value)? addNewEducation,
    TResult Function(ProfileAddNewExperience value)? addNewExperience,
    TResult Function(ProfileAddNewCertificate value)? addNewCertificate,
    required TResult orElse(),
  }) {
    if (addNewCertificate != null) {
      return addNewCertificate(this);
    }
    return orElse();
  }
}

abstract class ProfileAddNewCertificate implements ProfileEvent {
  const factory ProfileAddNewCertificate(
      final CertificateModel certificateModel) = _$ProfileAddNewCertificateImpl;

  CertificateModel get certificateModel;
  @JsonKey(ignore: true)
  _$$ProfileAddNewCertificateImplCopyWith<_$ProfileAddNewCertificateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message, String title) error,
    required TResult Function() loading,
    required TResult Function(UserInfoModel userInfoModel) getUserInfoSuccess,
    required TResult Function(EducationModel educationModel)
        addNewEducationSuccess,
    required TResult Function(ExperienceModel experienceModel)
        addNewExperienceSuccess,
    required TResult Function(CertificateModel certificateModel)
        addNewCertificateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message, String title)? error,
    TResult? Function()? loading,
    TResult? Function(UserInfoModel userInfoModel)? getUserInfoSuccess,
    TResult? Function(EducationModel educationModel)? addNewEducationSuccess,
    TResult? Function(ExperienceModel experienceModel)? addNewExperienceSuccess,
    TResult? Function(CertificateModel certificateModel)?
        addNewCertificateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message, String title)? error,
    TResult Function()? loading,
    TResult Function(UserInfoModel userInfoModel)? getUserInfoSuccess,
    TResult Function(EducationModel educationModel)? addNewEducationSuccess,
    TResult Function(ExperienceModel experienceModel)? addNewExperienceSuccess,
    TResult Function(CertificateModel certificateModel)?
        addNewCertificateSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileError value) error,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileGetUserInfoSuccess value)
        getUserInfoSuccess,
    required TResult Function(ProfileAddNewEducationSuccess value)
        addNewEducationSuccess,
    required TResult Function(ProfileAddNewExperienceSuccess value)
        addNewExperienceSuccess,
    required TResult Function(ProfileAddNewCertificateSuccess value)
        addNewCertificateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileError value)? error,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult? Function(ProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult? Function(ProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult? Function(ProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileError value)? error,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult Function(ProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult Function(ProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult Function(ProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

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
    extends _$ProfileStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ProfileState.initial()';
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
    required TResult Function(String message, String title) error,
    required TResult Function() loading,
    required TResult Function(UserInfoModel userInfoModel) getUserInfoSuccess,
    required TResult Function(EducationModel educationModel)
        addNewEducationSuccess,
    required TResult Function(ExperienceModel experienceModel)
        addNewExperienceSuccess,
    required TResult Function(CertificateModel certificateModel)
        addNewCertificateSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message, String title)? error,
    TResult? Function()? loading,
    TResult? Function(UserInfoModel userInfoModel)? getUserInfoSuccess,
    TResult? Function(EducationModel educationModel)? addNewEducationSuccess,
    TResult? Function(ExperienceModel experienceModel)? addNewExperienceSuccess,
    TResult? Function(CertificateModel certificateModel)?
        addNewCertificateSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message, String title)? error,
    TResult Function()? loading,
    TResult Function(UserInfoModel userInfoModel)? getUserInfoSuccess,
    TResult Function(EducationModel educationModel)? addNewEducationSuccess,
    TResult Function(ExperienceModel experienceModel)? addNewExperienceSuccess,
    TResult Function(CertificateModel certificateModel)?
        addNewCertificateSuccess,
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
    required TResult Function(ProfileError value) error,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileGetUserInfoSuccess value)
        getUserInfoSuccess,
    required TResult Function(ProfileAddNewEducationSuccess value)
        addNewEducationSuccess,
    required TResult Function(ProfileAddNewExperienceSuccess value)
        addNewExperienceSuccess,
    required TResult Function(ProfileAddNewCertificateSuccess value)
        addNewCertificateSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileError value)? error,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult? Function(ProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult? Function(ProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult? Function(ProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileError value)? error,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult Function(ProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult Function(ProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult Function(ProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ProfileErrorImplCopyWith<$Res> {
  factory _$$ProfileErrorImplCopyWith(
          _$ProfileErrorImpl value, $Res Function(_$ProfileErrorImpl) then) =
      __$$ProfileErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String title});
}

/// @nodoc
class __$$ProfileErrorImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileErrorImpl>
    implements _$$ProfileErrorImplCopyWith<$Res> {
  __$$ProfileErrorImplCopyWithImpl(
      _$ProfileErrorImpl _value, $Res Function(_$ProfileErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? title = null,
  }) {
    return _then(_$ProfileErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileErrorImpl implements ProfileError {
  const _$ProfileErrorImpl({required this.message, required this.title});

  @override
  final String message;
  @override
  final String title;

  @override
  String toString() {
    return 'ProfileState.error(message: $message, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileErrorImplCopyWith<_$ProfileErrorImpl> get copyWith =>
      __$$ProfileErrorImplCopyWithImpl<_$ProfileErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message, String title) error,
    required TResult Function() loading,
    required TResult Function(UserInfoModel userInfoModel) getUserInfoSuccess,
    required TResult Function(EducationModel educationModel)
        addNewEducationSuccess,
    required TResult Function(ExperienceModel experienceModel)
        addNewExperienceSuccess,
    required TResult Function(CertificateModel certificateModel)
        addNewCertificateSuccess,
  }) {
    return error(message, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message, String title)? error,
    TResult? Function()? loading,
    TResult? Function(UserInfoModel userInfoModel)? getUserInfoSuccess,
    TResult? Function(EducationModel educationModel)? addNewEducationSuccess,
    TResult? Function(ExperienceModel experienceModel)? addNewExperienceSuccess,
    TResult? Function(CertificateModel certificateModel)?
        addNewCertificateSuccess,
  }) {
    return error?.call(message, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message, String title)? error,
    TResult Function()? loading,
    TResult Function(UserInfoModel userInfoModel)? getUserInfoSuccess,
    TResult Function(EducationModel educationModel)? addNewEducationSuccess,
    TResult Function(ExperienceModel experienceModel)? addNewExperienceSuccess,
    TResult Function(CertificateModel certificateModel)?
        addNewCertificateSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileError value) error,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileGetUserInfoSuccess value)
        getUserInfoSuccess,
    required TResult Function(ProfileAddNewEducationSuccess value)
        addNewEducationSuccess,
    required TResult Function(ProfileAddNewExperienceSuccess value)
        addNewExperienceSuccess,
    required TResult Function(ProfileAddNewCertificateSuccess value)
        addNewCertificateSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileError value)? error,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult? Function(ProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult? Function(ProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult? Function(ProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileError value)? error,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult Function(ProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult Function(ProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult Function(ProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProfileError implements ProfileState {
  const factory ProfileError(
      {required final String message,
      required final String title}) = _$ProfileErrorImpl;

  String get message;
  String get title;
  @JsonKey(ignore: true)
  _$$ProfileErrorImplCopyWith<_$ProfileErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileLoadingImplCopyWith<$Res> {
  factory _$$ProfileLoadingImplCopyWith(_$ProfileLoadingImpl value,
          $Res Function(_$ProfileLoadingImpl) then) =
      __$$ProfileLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoadingImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLoadingImpl>
    implements _$$ProfileLoadingImplCopyWith<$Res> {
  __$$ProfileLoadingImplCopyWithImpl(
      _$ProfileLoadingImpl _value, $Res Function(_$ProfileLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileLoadingImpl implements ProfileLoading {
  const _$ProfileLoadingImpl();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message, String title) error,
    required TResult Function() loading,
    required TResult Function(UserInfoModel userInfoModel) getUserInfoSuccess,
    required TResult Function(EducationModel educationModel)
        addNewEducationSuccess,
    required TResult Function(ExperienceModel experienceModel)
        addNewExperienceSuccess,
    required TResult Function(CertificateModel certificateModel)
        addNewCertificateSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message, String title)? error,
    TResult? Function()? loading,
    TResult? Function(UserInfoModel userInfoModel)? getUserInfoSuccess,
    TResult? Function(EducationModel educationModel)? addNewEducationSuccess,
    TResult? Function(ExperienceModel experienceModel)? addNewExperienceSuccess,
    TResult? Function(CertificateModel certificateModel)?
        addNewCertificateSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message, String title)? error,
    TResult Function()? loading,
    TResult Function(UserInfoModel userInfoModel)? getUserInfoSuccess,
    TResult Function(EducationModel educationModel)? addNewEducationSuccess,
    TResult Function(ExperienceModel experienceModel)? addNewExperienceSuccess,
    TResult Function(CertificateModel certificateModel)?
        addNewCertificateSuccess,
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
    required TResult Function(ProfileError value) error,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileGetUserInfoSuccess value)
        getUserInfoSuccess,
    required TResult Function(ProfileAddNewEducationSuccess value)
        addNewEducationSuccess,
    required TResult Function(ProfileAddNewExperienceSuccess value)
        addNewExperienceSuccess,
    required TResult Function(ProfileAddNewCertificateSuccess value)
        addNewCertificateSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileError value)? error,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult? Function(ProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult? Function(ProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult? Function(ProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileError value)? error,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult Function(ProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult Function(ProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult Function(ProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileLoading implements ProfileState {
  const factory ProfileLoading() = _$ProfileLoadingImpl;
}

/// @nodoc
abstract class _$$ProfileGetUserInfoSuccessImplCopyWith<$Res> {
  factory _$$ProfileGetUserInfoSuccessImplCopyWith(
          _$ProfileGetUserInfoSuccessImpl value,
          $Res Function(_$ProfileGetUserInfoSuccessImpl) then) =
      __$$ProfileGetUserInfoSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserInfoModel userInfoModel});

  $UserInfoModelCopyWith<$Res> get userInfoModel;
}

/// @nodoc
class __$$ProfileGetUserInfoSuccessImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileGetUserInfoSuccessImpl>
    implements _$$ProfileGetUserInfoSuccessImplCopyWith<$Res> {
  __$$ProfileGetUserInfoSuccessImplCopyWithImpl(
      _$ProfileGetUserInfoSuccessImpl _value,
      $Res Function(_$ProfileGetUserInfoSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfoModel = null,
  }) {
    return _then(_$ProfileGetUserInfoSuccessImpl(
      null == userInfoModel
          ? _value.userInfoModel
          : userInfoModel // ignore: cast_nullable_to_non_nullable
              as UserInfoModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoModelCopyWith<$Res> get userInfoModel {
    return $UserInfoModelCopyWith<$Res>(_value.userInfoModel, (value) {
      return _then(_value.copyWith(userInfoModel: value));
    });
  }
}

/// @nodoc

class _$ProfileGetUserInfoSuccessImpl implements ProfileGetUserInfoSuccess {
  const _$ProfileGetUserInfoSuccessImpl(this.userInfoModel);

  @override
  final UserInfoModel userInfoModel;

  @override
  String toString() {
    return 'ProfileState.getUserInfoSuccess(userInfoModel: $userInfoModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileGetUserInfoSuccessImpl &&
            (identical(other.userInfoModel, userInfoModel) ||
                other.userInfoModel == userInfoModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userInfoModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileGetUserInfoSuccessImplCopyWith<_$ProfileGetUserInfoSuccessImpl>
      get copyWith => __$$ProfileGetUserInfoSuccessImplCopyWithImpl<
          _$ProfileGetUserInfoSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message, String title) error,
    required TResult Function() loading,
    required TResult Function(UserInfoModel userInfoModel) getUserInfoSuccess,
    required TResult Function(EducationModel educationModel)
        addNewEducationSuccess,
    required TResult Function(ExperienceModel experienceModel)
        addNewExperienceSuccess,
    required TResult Function(CertificateModel certificateModel)
        addNewCertificateSuccess,
  }) {
    return getUserInfoSuccess(userInfoModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message, String title)? error,
    TResult? Function()? loading,
    TResult? Function(UserInfoModel userInfoModel)? getUserInfoSuccess,
    TResult? Function(EducationModel educationModel)? addNewEducationSuccess,
    TResult? Function(ExperienceModel experienceModel)? addNewExperienceSuccess,
    TResult? Function(CertificateModel certificateModel)?
        addNewCertificateSuccess,
  }) {
    return getUserInfoSuccess?.call(userInfoModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message, String title)? error,
    TResult Function()? loading,
    TResult Function(UserInfoModel userInfoModel)? getUserInfoSuccess,
    TResult Function(EducationModel educationModel)? addNewEducationSuccess,
    TResult Function(ExperienceModel experienceModel)? addNewExperienceSuccess,
    TResult Function(CertificateModel certificateModel)?
        addNewCertificateSuccess,
    required TResult orElse(),
  }) {
    if (getUserInfoSuccess != null) {
      return getUserInfoSuccess(userInfoModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileError value) error,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileGetUserInfoSuccess value)
        getUserInfoSuccess,
    required TResult Function(ProfileAddNewEducationSuccess value)
        addNewEducationSuccess,
    required TResult Function(ProfileAddNewExperienceSuccess value)
        addNewExperienceSuccess,
    required TResult Function(ProfileAddNewCertificateSuccess value)
        addNewCertificateSuccess,
  }) {
    return getUserInfoSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileError value)? error,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult? Function(ProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult? Function(ProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult? Function(ProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
  }) {
    return getUserInfoSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileError value)? error,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult Function(ProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult Function(ProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult Function(ProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    required TResult orElse(),
  }) {
    if (getUserInfoSuccess != null) {
      return getUserInfoSuccess(this);
    }
    return orElse();
  }
}

abstract class ProfileGetUserInfoSuccess implements ProfileState {
  const factory ProfileGetUserInfoSuccess(final UserInfoModel userInfoModel) =
      _$ProfileGetUserInfoSuccessImpl;

  UserInfoModel get userInfoModel;
  @JsonKey(ignore: true)
  _$$ProfileGetUserInfoSuccessImplCopyWith<_$ProfileGetUserInfoSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileAddNewEducationSuccessImplCopyWith<$Res> {
  factory _$$ProfileAddNewEducationSuccessImplCopyWith(
          _$ProfileAddNewEducationSuccessImpl value,
          $Res Function(_$ProfileAddNewEducationSuccessImpl) then) =
      __$$ProfileAddNewEducationSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EducationModel educationModel});

  $EducationModelCopyWith<$Res> get educationModel;
}

/// @nodoc
class __$$ProfileAddNewEducationSuccessImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res,
        _$ProfileAddNewEducationSuccessImpl>
    implements _$$ProfileAddNewEducationSuccessImplCopyWith<$Res> {
  __$$ProfileAddNewEducationSuccessImplCopyWithImpl(
      _$ProfileAddNewEducationSuccessImpl _value,
      $Res Function(_$ProfileAddNewEducationSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? educationModel = null,
  }) {
    return _then(_$ProfileAddNewEducationSuccessImpl(
      null == educationModel
          ? _value.educationModel
          : educationModel // ignore: cast_nullable_to_non_nullable
              as EducationModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EducationModelCopyWith<$Res> get educationModel {
    return $EducationModelCopyWith<$Res>(_value.educationModel, (value) {
      return _then(_value.copyWith(educationModel: value));
    });
  }
}

/// @nodoc

class _$ProfileAddNewEducationSuccessImpl
    implements ProfileAddNewEducationSuccess {
  const _$ProfileAddNewEducationSuccessImpl(this.educationModel);

  @override
  final EducationModel educationModel;

  @override
  String toString() {
    return 'ProfileState.addNewEducationSuccess(educationModel: $educationModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileAddNewEducationSuccessImpl &&
            (identical(other.educationModel, educationModel) ||
                other.educationModel == educationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, educationModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileAddNewEducationSuccessImplCopyWith<
          _$ProfileAddNewEducationSuccessImpl>
      get copyWith => __$$ProfileAddNewEducationSuccessImplCopyWithImpl<
          _$ProfileAddNewEducationSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message, String title) error,
    required TResult Function() loading,
    required TResult Function(UserInfoModel userInfoModel) getUserInfoSuccess,
    required TResult Function(EducationModel educationModel)
        addNewEducationSuccess,
    required TResult Function(ExperienceModel experienceModel)
        addNewExperienceSuccess,
    required TResult Function(CertificateModel certificateModel)
        addNewCertificateSuccess,
  }) {
    return addNewEducationSuccess(educationModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message, String title)? error,
    TResult? Function()? loading,
    TResult? Function(UserInfoModel userInfoModel)? getUserInfoSuccess,
    TResult? Function(EducationModel educationModel)? addNewEducationSuccess,
    TResult? Function(ExperienceModel experienceModel)? addNewExperienceSuccess,
    TResult? Function(CertificateModel certificateModel)?
        addNewCertificateSuccess,
  }) {
    return addNewEducationSuccess?.call(educationModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message, String title)? error,
    TResult Function()? loading,
    TResult Function(UserInfoModel userInfoModel)? getUserInfoSuccess,
    TResult Function(EducationModel educationModel)? addNewEducationSuccess,
    TResult Function(ExperienceModel experienceModel)? addNewExperienceSuccess,
    TResult Function(CertificateModel certificateModel)?
        addNewCertificateSuccess,
    required TResult orElse(),
  }) {
    if (addNewEducationSuccess != null) {
      return addNewEducationSuccess(educationModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileError value) error,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileGetUserInfoSuccess value)
        getUserInfoSuccess,
    required TResult Function(ProfileAddNewEducationSuccess value)
        addNewEducationSuccess,
    required TResult Function(ProfileAddNewExperienceSuccess value)
        addNewExperienceSuccess,
    required TResult Function(ProfileAddNewCertificateSuccess value)
        addNewCertificateSuccess,
  }) {
    return addNewEducationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileError value)? error,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult? Function(ProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult? Function(ProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult? Function(ProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
  }) {
    return addNewEducationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileError value)? error,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult Function(ProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult Function(ProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult Function(ProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    required TResult orElse(),
  }) {
    if (addNewEducationSuccess != null) {
      return addNewEducationSuccess(this);
    }
    return orElse();
  }
}

abstract class ProfileAddNewEducationSuccess implements ProfileState {
  const factory ProfileAddNewEducationSuccess(
          final EducationModel educationModel) =
      _$ProfileAddNewEducationSuccessImpl;

  EducationModel get educationModel;
  @JsonKey(ignore: true)
  _$$ProfileAddNewEducationSuccessImplCopyWith<
          _$ProfileAddNewEducationSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileAddNewExperienceSuccessImplCopyWith<$Res> {
  factory _$$ProfileAddNewExperienceSuccessImplCopyWith(
          _$ProfileAddNewExperienceSuccessImpl value,
          $Res Function(_$ProfileAddNewExperienceSuccessImpl) then) =
      __$$ProfileAddNewExperienceSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExperienceModel experienceModel});

  $ExperienceModelCopyWith<$Res> get experienceModel;
}

/// @nodoc
class __$$ProfileAddNewExperienceSuccessImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res,
        _$ProfileAddNewExperienceSuccessImpl>
    implements _$$ProfileAddNewExperienceSuccessImplCopyWith<$Res> {
  __$$ProfileAddNewExperienceSuccessImplCopyWithImpl(
      _$ProfileAddNewExperienceSuccessImpl _value,
      $Res Function(_$ProfileAddNewExperienceSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? experienceModel = null,
  }) {
    return _then(_$ProfileAddNewExperienceSuccessImpl(
      null == experienceModel
          ? _value.experienceModel
          : experienceModel // ignore: cast_nullable_to_non_nullable
              as ExperienceModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ExperienceModelCopyWith<$Res> get experienceModel {
    return $ExperienceModelCopyWith<$Res>(_value.experienceModel, (value) {
      return _then(_value.copyWith(experienceModel: value));
    });
  }
}

/// @nodoc

class _$ProfileAddNewExperienceSuccessImpl
    implements ProfileAddNewExperienceSuccess {
  const _$ProfileAddNewExperienceSuccessImpl(this.experienceModel);

  @override
  final ExperienceModel experienceModel;

  @override
  String toString() {
    return 'ProfileState.addNewExperienceSuccess(experienceModel: $experienceModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileAddNewExperienceSuccessImpl &&
            (identical(other.experienceModel, experienceModel) ||
                other.experienceModel == experienceModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, experienceModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileAddNewExperienceSuccessImplCopyWith<
          _$ProfileAddNewExperienceSuccessImpl>
      get copyWith => __$$ProfileAddNewExperienceSuccessImplCopyWithImpl<
          _$ProfileAddNewExperienceSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message, String title) error,
    required TResult Function() loading,
    required TResult Function(UserInfoModel userInfoModel) getUserInfoSuccess,
    required TResult Function(EducationModel educationModel)
        addNewEducationSuccess,
    required TResult Function(ExperienceModel experienceModel)
        addNewExperienceSuccess,
    required TResult Function(CertificateModel certificateModel)
        addNewCertificateSuccess,
  }) {
    return addNewExperienceSuccess(experienceModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message, String title)? error,
    TResult? Function()? loading,
    TResult? Function(UserInfoModel userInfoModel)? getUserInfoSuccess,
    TResult? Function(EducationModel educationModel)? addNewEducationSuccess,
    TResult? Function(ExperienceModel experienceModel)? addNewExperienceSuccess,
    TResult? Function(CertificateModel certificateModel)?
        addNewCertificateSuccess,
  }) {
    return addNewExperienceSuccess?.call(experienceModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message, String title)? error,
    TResult Function()? loading,
    TResult Function(UserInfoModel userInfoModel)? getUserInfoSuccess,
    TResult Function(EducationModel educationModel)? addNewEducationSuccess,
    TResult Function(ExperienceModel experienceModel)? addNewExperienceSuccess,
    TResult Function(CertificateModel certificateModel)?
        addNewCertificateSuccess,
    required TResult orElse(),
  }) {
    if (addNewExperienceSuccess != null) {
      return addNewExperienceSuccess(experienceModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileError value) error,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileGetUserInfoSuccess value)
        getUserInfoSuccess,
    required TResult Function(ProfileAddNewEducationSuccess value)
        addNewEducationSuccess,
    required TResult Function(ProfileAddNewExperienceSuccess value)
        addNewExperienceSuccess,
    required TResult Function(ProfileAddNewCertificateSuccess value)
        addNewCertificateSuccess,
  }) {
    return addNewExperienceSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileError value)? error,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult? Function(ProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult? Function(ProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult? Function(ProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
  }) {
    return addNewExperienceSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileError value)? error,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult Function(ProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult Function(ProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult Function(ProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    required TResult orElse(),
  }) {
    if (addNewExperienceSuccess != null) {
      return addNewExperienceSuccess(this);
    }
    return orElse();
  }
}

abstract class ProfileAddNewExperienceSuccess implements ProfileState {
  const factory ProfileAddNewExperienceSuccess(
          final ExperienceModel experienceModel) =
      _$ProfileAddNewExperienceSuccessImpl;

  ExperienceModel get experienceModel;
  @JsonKey(ignore: true)
  _$$ProfileAddNewExperienceSuccessImplCopyWith<
          _$ProfileAddNewExperienceSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileAddNewCertificateSuccessImplCopyWith<$Res> {
  factory _$$ProfileAddNewCertificateSuccessImplCopyWith(
          _$ProfileAddNewCertificateSuccessImpl value,
          $Res Function(_$ProfileAddNewCertificateSuccessImpl) then) =
      __$$ProfileAddNewCertificateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CertificateModel certificateModel});

  $CertificateModelCopyWith<$Res> get certificateModel;
}

/// @nodoc
class __$$ProfileAddNewCertificateSuccessImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res,
        _$ProfileAddNewCertificateSuccessImpl>
    implements _$$ProfileAddNewCertificateSuccessImplCopyWith<$Res> {
  __$$ProfileAddNewCertificateSuccessImplCopyWithImpl(
      _$ProfileAddNewCertificateSuccessImpl _value,
      $Res Function(_$ProfileAddNewCertificateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certificateModel = null,
  }) {
    return _then(_$ProfileAddNewCertificateSuccessImpl(
      null == certificateModel
          ? _value.certificateModel
          : certificateModel // ignore: cast_nullable_to_non_nullable
              as CertificateModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CertificateModelCopyWith<$Res> get certificateModel {
    return $CertificateModelCopyWith<$Res>(_value.certificateModel, (value) {
      return _then(_value.copyWith(certificateModel: value));
    });
  }
}

/// @nodoc

class _$ProfileAddNewCertificateSuccessImpl
    implements ProfileAddNewCertificateSuccess {
  const _$ProfileAddNewCertificateSuccessImpl(this.certificateModel);

  @override
  final CertificateModel certificateModel;

  @override
  String toString() {
    return 'ProfileState.addNewCertificateSuccess(certificateModel: $certificateModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileAddNewCertificateSuccessImpl &&
            (identical(other.certificateModel, certificateModel) ||
                other.certificateModel == certificateModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, certificateModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileAddNewCertificateSuccessImplCopyWith<
          _$ProfileAddNewCertificateSuccessImpl>
      get copyWith => __$$ProfileAddNewCertificateSuccessImplCopyWithImpl<
          _$ProfileAddNewCertificateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message, String title) error,
    required TResult Function() loading,
    required TResult Function(UserInfoModel userInfoModel) getUserInfoSuccess,
    required TResult Function(EducationModel educationModel)
        addNewEducationSuccess,
    required TResult Function(ExperienceModel experienceModel)
        addNewExperienceSuccess,
    required TResult Function(CertificateModel certificateModel)
        addNewCertificateSuccess,
  }) {
    return addNewCertificateSuccess(certificateModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message, String title)? error,
    TResult? Function()? loading,
    TResult? Function(UserInfoModel userInfoModel)? getUserInfoSuccess,
    TResult? Function(EducationModel educationModel)? addNewEducationSuccess,
    TResult? Function(ExperienceModel experienceModel)? addNewExperienceSuccess,
    TResult? Function(CertificateModel certificateModel)?
        addNewCertificateSuccess,
  }) {
    return addNewCertificateSuccess?.call(certificateModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message, String title)? error,
    TResult Function()? loading,
    TResult Function(UserInfoModel userInfoModel)? getUserInfoSuccess,
    TResult Function(EducationModel educationModel)? addNewEducationSuccess,
    TResult Function(ExperienceModel experienceModel)? addNewExperienceSuccess,
    TResult Function(CertificateModel certificateModel)?
        addNewCertificateSuccess,
    required TResult orElse(),
  }) {
    if (addNewCertificateSuccess != null) {
      return addNewCertificateSuccess(certificateModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileError value) error,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileGetUserInfoSuccess value)
        getUserInfoSuccess,
    required TResult Function(ProfileAddNewEducationSuccess value)
        addNewEducationSuccess,
    required TResult Function(ProfileAddNewExperienceSuccess value)
        addNewExperienceSuccess,
    required TResult Function(ProfileAddNewCertificateSuccess value)
        addNewCertificateSuccess,
  }) {
    return addNewCertificateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileError value)? error,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult? Function(ProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult? Function(ProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult? Function(ProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
  }) {
    return addNewCertificateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileError value)? error,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult Function(ProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult Function(ProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult Function(ProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    required TResult orElse(),
  }) {
    if (addNewCertificateSuccess != null) {
      return addNewCertificateSuccess(this);
    }
    return orElse();
  }
}

abstract class ProfileAddNewCertificateSuccess implements ProfileState {
  const factory ProfileAddNewCertificateSuccess(
          final CertificateModel certificateModel) =
      _$ProfileAddNewCertificateSuccessImpl;

  CertificateModel get certificateModel;
  @JsonKey(ignore: true)
  _$$ProfileAddNewCertificateSuccessImplCopyWith<
          _$ProfileAddNewCertificateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
