// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EducationModel educationModel) addNewEducation,
    required TResult Function(ExperienceModel experienceModel) addNewExperience,
    required TResult Function(CertificateModel certificateModel)
        addNewCertificate,
    required TResult Function(UserInfoModel userInfoModel) updateUserInfo,
    required TResult Function() getUserinfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EducationModel educationModel)? addNewEducation,
    TResult? Function(ExperienceModel experienceModel)? addNewExperience,
    TResult? Function(CertificateModel certificateModel)? addNewCertificate,
    TResult? Function(UserInfoModel userInfoModel)? updateUserInfo,
    TResult? Function()? getUserinfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EducationModel educationModel)? addNewEducation,
    TResult Function(ExperienceModel experienceModel)? addNewExperience,
    TResult Function(CertificateModel certificateModel)? addNewCertificate,
    TResult Function(UserInfoModel userInfoModel)? updateUserInfo,
    TResult Function()? getUserinfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileAddNewEducation value) addNewEducation,
    required TResult Function(EditProfileAddNewExperience value)
        addNewExperience,
    required TResult Function(EditProfileAddNewCertificate value)
        addNewCertificate,
    required TResult Function(EditProfileUpdateUserInfo value) updateUserInfo,
    required TResult Function(EditProfileGetUserInfo value) getUserinfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileAddNewEducation value)? addNewEducation,
    TResult? Function(EditProfileAddNewExperience value)? addNewExperience,
    TResult? Function(EditProfileAddNewCertificate value)? addNewCertificate,
    TResult? Function(EditProfileUpdateUserInfo value)? updateUserInfo,
    TResult? Function(EditProfileGetUserInfo value)? getUserinfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileAddNewEducation value)? addNewEducation,
    TResult Function(EditProfileAddNewExperience value)? addNewExperience,
    TResult Function(EditProfileAddNewCertificate value)? addNewCertificate,
    TResult Function(EditProfileUpdateUserInfo value)? updateUserInfo,
    TResult Function(EditProfileGetUserInfo value)? getUserinfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileEventCopyWith<$Res> {
  factory $EditProfileEventCopyWith(
          EditProfileEvent value, $Res Function(EditProfileEvent) then) =
      _$EditProfileEventCopyWithImpl<$Res, EditProfileEvent>;
}

/// @nodoc
class _$EditProfileEventCopyWithImpl<$Res, $Val extends EditProfileEvent>
    implements $EditProfileEventCopyWith<$Res> {
  _$EditProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EditProfileAddNewEducationImplCopyWith<$Res> {
  factory _$$EditProfileAddNewEducationImplCopyWith(
          _$EditProfileAddNewEducationImpl value,
          $Res Function(_$EditProfileAddNewEducationImpl) then) =
      __$$EditProfileAddNewEducationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EducationModel educationModel});

  $EducationModelCopyWith<$Res> get educationModel;
}

/// @nodoc
class __$$EditProfileAddNewEducationImplCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res,
        _$EditProfileAddNewEducationImpl>
    implements _$$EditProfileAddNewEducationImplCopyWith<$Res> {
  __$$EditProfileAddNewEducationImplCopyWithImpl(
      _$EditProfileAddNewEducationImpl _value,
      $Res Function(_$EditProfileAddNewEducationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? educationModel = null,
  }) {
    return _then(_$EditProfileAddNewEducationImpl(
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

class _$EditProfileAddNewEducationImpl implements EditProfileAddNewEducation {
  const _$EditProfileAddNewEducationImpl(this.educationModel);

  @override
  final EducationModel educationModel;

  @override
  String toString() {
    return 'EditProfileEvent.addNewEducation(educationModel: $educationModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileAddNewEducationImpl &&
            (identical(other.educationModel, educationModel) ||
                other.educationModel == educationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, educationModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileAddNewEducationImplCopyWith<_$EditProfileAddNewEducationImpl>
      get copyWith => __$$EditProfileAddNewEducationImplCopyWithImpl<
          _$EditProfileAddNewEducationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EducationModel educationModel) addNewEducation,
    required TResult Function(ExperienceModel experienceModel) addNewExperience,
    required TResult Function(CertificateModel certificateModel)
        addNewCertificate,
    required TResult Function(UserInfoModel userInfoModel) updateUserInfo,
    required TResult Function() getUserinfo,
  }) {
    return addNewEducation(educationModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EducationModel educationModel)? addNewEducation,
    TResult? Function(ExperienceModel experienceModel)? addNewExperience,
    TResult? Function(CertificateModel certificateModel)? addNewCertificate,
    TResult? Function(UserInfoModel userInfoModel)? updateUserInfo,
    TResult? Function()? getUserinfo,
  }) {
    return addNewEducation?.call(educationModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EducationModel educationModel)? addNewEducation,
    TResult Function(ExperienceModel experienceModel)? addNewExperience,
    TResult Function(CertificateModel certificateModel)? addNewCertificate,
    TResult Function(UserInfoModel userInfoModel)? updateUserInfo,
    TResult Function()? getUserinfo,
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
    required TResult Function(EditProfileAddNewEducation value) addNewEducation,
    required TResult Function(EditProfileAddNewExperience value)
        addNewExperience,
    required TResult Function(EditProfileAddNewCertificate value)
        addNewCertificate,
    required TResult Function(EditProfileUpdateUserInfo value) updateUserInfo,
    required TResult Function(EditProfileGetUserInfo value) getUserinfo,
  }) {
    return addNewEducation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileAddNewEducation value)? addNewEducation,
    TResult? Function(EditProfileAddNewExperience value)? addNewExperience,
    TResult? Function(EditProfileAddNewCertificate value)? addNewCertificate,
    TResult? Function(EditProfileUpdateUserInfo value)? updateUserInfo,
    TResult? Function(EditProfileGetUserInfo value)? getUserinfo,
  }) {
    return addNewEducation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileAddNewEducation value)? addNewEducation,
    TResult Function(EditProfileAddNewExperience value)? addNewExperience,
    TResult Function(EditProfileAddNewCertificate value)? addNewCertificate,
    TResult Function(EditProfileUpdateUserInfo value)? updateUserInfo,
    TResult Function(EditProfileGetUserInfo value)? getUserinfo,
    required TResult orElse(),
  }) {
    if (addNewEducation != null) {
      return addNewEducation(this);
    }
    return orElse();
  }
}

abstract class EditProfileAddNewEducation implements EditProfileEvent {
  const factory EditProfileAddNewEducation(
      final EducationModel educationModel) = _$EditProfileAddNewEducationImpl;

  EducationModel get educationModel;
  @JsonKey(ignore: true)
  _$$EditProfileAddNewEducationImplCopyWith<_$EditProfileAddNewEducationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProfileAddNewExperienceImplCopyWith<$Res> {
  factory _$$EditProfileAddNewExperienceImplCopyWith(
          _$EditProfileAddNewExperienceImpl value,
          $Res Function(_$EditProfileAddNewExperienceImpl) then) =
      __$$EditProfileAddNewExperienceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExperienceModel experienceModel});

  $ExperienceModelCopyWith<$Res> get experienceModel;
}

/// @nodoc
class __$$EditProfileAddNewExperienceImplCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res,
        _$EditProfileAddNewExperienceImpl>
    implements _$$EditProfileAddNewExperienceImplCopyWith<$Res> {
  __$$EditProfileAddNewExperienceImplCopyWithImpl(
      _$EditProfileAddNewExperienceImpl _value,
      $Res Function(_$EditProfileAddNewExperienceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? experienceModel = null,
  }) {
    return _then(_$EditProfileAddNewExperienceImpl(
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

class _$EditProfileAddNewExperienceImpl implements EditProfileAddNewExperience {
  const _$EditProfileAddNewExperienceImpl(this.experienceModel);

  @override
  final ExperienceModel experienceModel;

  @override
  String toString() {
    return 'EditProfileEvent.addNewExperience(experienceModel: $experienceModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileAddNewExperienceImpl &&
            (identical(other.experienceModel, experienceModel) ||
                other.experienceModel == experienceModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, experienceModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileAddNewExperienceImplCopyWith<_$EditProfileAddNewExperienceImpl>
      get copyWith => __$$EditProfileAddNewExperienceImplCopyWithImpl<
          _$EditProfileAddNewExperienceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EducationModel educationModel) addNewEducation,
    required TResult Function(ExperienceModel experienceModel) addNewExperience,
    required TResult Function(CertificateModel certificateModel)
        addNewCertificate,
    required TResult Function(UserInfoModel userInfoModel) updateUserInfo,
    required TResult Function() getUserinfo,
  }) {
    return addNewExperience(experienceModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EducationModel educationModel)? addNewEducation,
    TResult? Function(ExperienceModel experienceModel)? addNewExperience,
    TResult? Function(CertificateModel certificateModel)? addNewCertificate,
    TResult? Function(UserInfoModel userInfoModel)? updateUserInfo,
    TResult? Function()? getUserinfo,
  }) {
    return addNewExperience?.call(experienceModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EducationModel educationModel)? addNewEducation,
    TResult Function(ExperienceModel experienceModel)? addNewExperience,
    TResult Function(CertificateModel certificateModel)? addNewCertificate,
    TResult Function(UserInfoModel userInfoModel)? updateUserInfo,
    TResult Function()? getUserinfo,
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
    required TResult Function(EditProfileAddNewEducation value) addNewEducation,
    required TResult Function(EditProfileAddNewExperience value)
        addNewExperience,
    required TResult Function(EditProfileAddNewCertificate value)
        addNewCertificate,
    required TResult Function(EditProfileUpdateUserInfo value) updateUserInfo,
    required TResult Function(EditProfileGetUserInfo value) getUserinfo,
  }) {
    return addNewExperience(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileAddNewEducation value)? addNewEducation,
    TResult? Function(EditProfileAddNewExperience value)? addNewExperience,
    TResult? Function(EditProfileAddNewCertificate value)? addNewCertificate,
    TResult? Function(EditProfileUpdateUserInfo value)? updateUserInfo,
    TResult? Function(EditProfileGetUserInfo value)? getUserinfo,
  }) {
    return addNewExperience?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileAddNewEducation value)? addNewEducation,
    TResult Function(EditProfileAddNewExperience value)? addNewExperience,
    TResult Function(EditProfileAddNewCertificate value)? addNewCertificate,
    TResult Function(EditProfileUpdateUserInfo value)? updateUserInfo,
    TResult Function(EditProfileGetUserInfo value)? getUserinfo,
    required TResult orElse(),
  }) {
    if (addNewExperience != null) {
      return addNewExperience(this);
    }
    return orElse();
  }
}

abstract class EditProfileAddNewExperience implements EditProfileEvent {
  const factory EditProfileAddNewExperience(
          final ExperienceModel experienceModel) =
      _$EditProfileAddNewExperienceImpl;

  ExperienceModel get experienceModel;
  @JsonKey(ignore: true)
  _$$EditProfileAddNewExperienceImplCopyWith<_$EditProfileAddNewExperienceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProfileAddNewCertificateImplCopyWith<$Res> {
  factory _$$EditProfileAddNewCertificateImplCopyWith(
          _$EditProfileAddNewCertificateImpl value,
          $Res Function(_$EditProfileAddNewCertificateImpl) then) =
      __$$EditProfileAddNewCertificateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CertificateModel certificateModel});

  $CertificateModelCopyWith<$Res> get certificateModel;
}

/// @nodoc
class __$$EditProfileAddNewCertificateImplCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res,
        _$EditProfileAddNewCertificateImpl>
    implements _$$EditProfileAddNewCertificateImplCopyWith<$Res> {
  __$$EditProfileAddNewCertificateImplCopyWithImpl(
      _$EditProfileAddNewCertificateImpl _value,
      $Res Function(_$EditProfileAddNewCertificateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certificateModel = null,
  }) {
    return _then(_$EditProfileAddNewCertificateImpl(
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

class _$EditProfileAddNewCertificateImpl
    implements EditProfileAddNewCertificate {
  const _$EditProfileAddNewCertificateImpl(this.certificateModel);

  @override
  final CertificateModel certificateModel;

  @override
  String toString() {
    return 'EditProfileEvent.addNewCertificate(certificateModel: $certificateModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileAddNewCertificateImpl &&
            (identical(other.certificateModel, certificateModel) ||
                other.certificateModel == certificateModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, certificateModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileAddNewCertificateImplCopyWith<
          _$EditProfileAddNewCertificateImpl>
      get copyWith => __$$EditProfileAddNewCertificateImplCopyWithImpl<
          _$EditProfileAddNewCertificateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EducationModel educationModel) addNewEducation,
    required TResult Function(ExperienceModel experienceModel) addNewExperience,
    required TResult Function(CertificateModel certificateModel)
        addNewCertificate,
    required TResult Function(UserInfoModel userInfoModel) updateUserInfo,
    required TResult Function() getUserinfo,
  }) {
    return addNewCertificate(certificateModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EducationModel educationModel)? addNewEducation,
    TResult? Function(ExperienceModel experienceModel)? addNewExperience,
    TResult? Function(CertificateModel certificateModel)? addNewCertificate,
    TResult? Function(UserInfoModel userInfoModel)? updateUserInfo,
    TResult? Function()? getUserinfo,
  }) {
    return addNewCertificate?.call(certificateModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EducationModel educationModel)? addNewEducation,
    TResult Function(ExperienceModel experienceModel)? addNewExperience,
    TResult Function(CertificateModel certificateModel)? addNewCertificate,
    TResult Function(UserInfoModel userInfoModel)? updateUserInfo,
    TResult Function()? getUserinfo,
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
    required TResult Function(EditProfileAddNewEducation value) addNewEducation,
    required TResult Function(EditProfileAddNewExperience value)
        addNewExperience,
    required TResult Function(EditProfileAddNewCertificate value)
        addNewCertificate,
    required TResult Function(EditProfileUpdateUserInfo value) updateUserInfo,
    required TResult Function(EditProfileGetUserInfo value) getUserinfo,
  }) {
    return addNewCertificate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileAddNewEducation value)? addNewEducation,
    TResult? Function(EditProfileAddNewExperience value)? addNewExperience,
    TResult? Function(EditProfileAddNewCertificate value)? addNewCertificate,
    TResult? Function(EditProfileUpdateUserInfo value)? updateUserInfo,
    TResult? Function(EditProfileGetUserInfo value)? getUserinfo,
  }) {
    return addNewCertificate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileAddNewEducation value)? addNewEducation,
    TResult Function(EditProfileAddNewExperience value)? addNewExperience,
    TResult Function(EditProfileAddNewCertificate value)? addNewCertificate,
    TResult Function(EditProfileUpdateUserInfo value)? updateUserInfo,
    TResult Function(EditProfileGetUserInfo value)? getUserinfo,
    required TResult orElse(),
  }) {
    if (addNewCertificate != null) {
      return addNewCertificate(this);
    }
    return orElse();
  }
}

abstract class EditProfileAddNewCertificate implements EditProfileEvent {
  const factory EditProfileAddNewCertificate(
          final CertificateModel certificateModel) =
      _$EditProfileAddNewCertificateImpl;

  CertificateModel get certificateModel;
  @JsonKey(ignore: true)
  _$$EditProfileAddNewCertificateImplCopyWith<
          _$EditProfileAddNewCertificateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProfileUpdateUserInfoImplCopyWith<$Res> {
  factory _$$EditProfileUpdateUserInfoImplCopyWith(
          _$EditProfileUpdateUserInfoImpl value,
          $Res Function(_$EditProfileUpdateUserInfoImpl) then) =
      __$$EditProfileUpdateUserInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserInfoModel userInfoModel});

  $UserInfoModelCopyWith<$Res> get userInfoModel;
}

/// @nodoc
class __$$EditProfileUpdateUserInfoImplCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res,
        _$EditProfileUpdateUserInfoImpl>
    implements _$$EditProfileUpdateUserInfoImplCopyWith<$Res> {
  __$$EditProfileUpdateUserInfoImplCopyWithImpl(
      _$EditProfileUpdateUserInfoImpl _value,
      $Res Function(_$EditProfileUpdateUserInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfoModel = null,
  }) {
    return _then(_$EditProfileUpdateUserInfoImpl(
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

class _$EditProfileUpdateUserInfoImpl implements EditProfileUpdateUserInfo {
  const _$EditProfileUpdateUserInfoImpl(this.userInfoModel);

  @override
  final UserInfoModel userInfoModel;

  @override
  String toString() {
    return 'EditProfileEvent.updateUserInfo(userInfoModel: $userInfoModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileUpdateUserInfoImpl &&
            (identical(other.userInfoModel, userInfoModel) ||
                other.userInfoModel == userInfoModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userInfoModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileUpdateUserInfoImplCopyWith<_$EditProfileUpdateUserInfoImpl>
      get copyWith => __$$EditProfileUpdateUserInfoImplCopyWithImpl<
          _$EditProfileUpdateUserInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EducationModel educationModel) addNewEducation,
    required TResult Function(ExperienceModel experienceModel) addNewExperience,
    required TResult Function(CertificateModel certificateModel)
        addNewCertificate,
    required TResult Function(UserInfoModel userInfoModel) updateUserInfo,
    required TResult Function() getUserinfo,
  }) {
    return updateUserInfo(userInfoModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EducationModel educationModel)? addNewEducation,
    TResult? Function(ExperienceModel experienceModel)? addNewExperience,
    TResult? Function(CertificateModel certificateModel)? addNewCertificate,
    TResult? Function(UserInfoModel userInfoModel)? updateUserInfo,
    TResult? Function()? getUserinfo,
  }) {
    return updateUserInfo?.call(userInfoModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EducationModel educationModel)? addNewEducation,
    TResult Function(ExperienceModel experienceModel)? addNewExperience,
    TResult Function(CertificateModel certificateModel)? addNewCertificate,
    TResult Function(UserInfoModel userInfoModel)? updateUserInfo,
    TResult Function()? getUserinfo,
    required TResult orElse(),
  }) {
    if (updateUserInfo != null) {
      return updateUserInfo(userInfoModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileAddNewEducation value) addNewEducation,
    required TResult Function(EditProfileAddNewExperience value)
        addNewExperience,
    required TResult Function(EditProfileAddNewCertificate value)
        addNewCertificate,
    required TResult Function(EditProfileUpdateUserInfo value) updateUserInfo,
    required TResult Function(EditProfileGetUserInfo value) getUserinfo,
  }) {
    return updateUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileAddNewEducation value)? addNewEducation,
    TResult? Function(EditProfileAddNewExperience value)? addNewExperience,
    TResult? Function(EditProfileAddNewCertificate value)? addNewCertificate,
    TResult? Function(EditProfileUpdateUserInfo value)? updateUserInfo,
    TResult? Function(EditProfileGetUserInfo value)? getUserinfo,
  }) {
    return updateUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileAddNewEducation value)? addNewEducation,
    TResult Function(EditProfileAddNewExperience value)? addNewExperience,
    TResult Function(EditProfileAddNewCertificate value)? addNewCertificate,
    TResult Function(EditProfileUpdateUserInfo value)? updateUserInfo,
    TResult Function(EditProfileGetUserInfo value)? getUserinfo,
    required TResult orElse(),
  }) {
    if (updateUserInfo != null) {
      return updateUserInfo(this);
    }
    return orElse();
  }
}

abstract class EditProfileUpdateUserInfo implements EditProfileEvent {
  const factory EditProfileUpdateUserInfo(final UserInfoModel userInfoModel) =
      _$EditProfileUpdateUserInfoImpl;

  UserInfoModel get userInfoModel;
  @JsonKey(ignore: true)
  _$$EditProfileUpdateUserInfoImplCopyWith<_$EditProfileUpdateUserInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProfileGetUserInfoImplCopyWith<$Res> {
  factory _$$EditProfileGetUserInfoImplCopyWith(
          _$EditProfileGetUserInfoImpl value,
          $Res Function(_$EditProfileGetUserInfoImpl) then) =
      __$$EditProfileGetUserInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditProfileGetUserInfoImplCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res, _$EditProfileGetUserInfoImpl>
    implements _$$EditProfileGetUserInfoImplCopyWith<$Res> {
  __$$EditProfileGetUserInfoImplCopyWithImpl(
      _$EditProfileGetUserInfoImpl _value,
      $Res Function(_$EditProfileGetUserInfoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditProfileGetUserInfoImpl implements EditProfileGetUserInfo {
  const _$EditProfileGetUserInfoImpl();

  @override
  String toString() {
    return 'EditProfileEvent.getUserinfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileGetUserInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EducationModel educationModel) addNewEducation,
    required TResult Function(ExperienceModel experienceModel) addNewExperience,
    required TResult Function(CertificateModel certificateModel)
        addNewCertificate,
    required TResult Function(UserInfoModel userInfoModel) updateUserInfo,
    required TResult Function() getUserinfo,
  }) {
    return getUserinfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EducationModel educationModel)? addNewEducation,
    TResult? Function(ExperienceModel experienceModel)? addNewExperience,
    TResult? Function(CertificateModel certificateModel)? addNewCertificate,
    TResult? Function(UserInfoModel userInfoModel)? updateUserInfo,
    TResult? Function()? getUserinfo,
  }) {
    return getUserinfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EducationModel educationModel)? addNewEducation,
    TResult Function(ExperienceModel experienceModel)? addNewExperience,
    TResult Function(CertificateModel certificateModel)? addNewCertificate,
    TResult Function(UserInfoModel userInfoModel)? updateUserInfo,
    TResult Function()? getUserinfo,
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
    required TResult Function(EditProfileAddNewEducation value) addNewEducation,
    required TResult Function(EditProfileAddNewExperience value)
        addNewExperience,
    required TResult Function(EditProfileAddNewCertificate value)
        addNewCertificate,
    required TResult Function(EditProfileUpdateUserInfo value) updateUserInfo,
    required TResult Function(EditProfileGetUserInfo value) getUserinfo,
  }) {
    return getUserinfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileAddNewEducation value)? addNewEducation,
    TResult? Function(EditProfileAddNewExperience value)? addNewExperience,
    TResult? Function(EditProfileAddNewCertificate value)? addNewCertificate,
    TResult? Function(EditProfileUpdateUserInfo value)? updateUserInfo,
    TResult? Function(EditProfileGetUserInfo value)? getUserinfo,
  }) {
    return getUserinfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileAddNewEducation value)? addNewEducation,
    TResult Function(EditProfileAddNewExperience value)? addNewExperience,
    TResult Function(EditProfileAddNewCertificate value)? addNewCertificate,
    TResult Function(EditProfileUpdateUserInfo value)? updateUserInfo,
    TResult Function(EditProfileGetUserInfo value)? getUserinfo,
    required TResult orElse(),
  }) {
    if (getUserinfo != null) {
      return getUserinfo(this);
    }
    return orElse();
  }
}

abstract class EditProfileGetUserInfo implements EditProfileEvent {
  const factory EditProfileGetUserInfo() = _$EditProfileGetUserInfoImpl;
}

/// @nodoc
mixin _$EditProfileState {
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
    required TResult Function() updateUserInfoSuccess,
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
    TResult? Function()? updateUserInfoSuccess,
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
    TResult Function()? updateUserInfoSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(EditProfileError value) error,
    required TResult Function(EditProfileLoading value) loading,
    required TResult Function(EditProfileGetUserInfoSuccess value)
        getUserInfoSuccess,
    required TResult Function(EditProfileAddNewEducationSuccess value)
        addNewEducationSuccess,
    required TResult Function(EditProfileAddNewExperienceSuccess value)
        addNewExperienceSuccess,
    required TResult Function(EditProfileAddNewCertificateSuccess value)
        addNewCertificateSuccess,
    required TResult Function(EditProfileUpdateUserInfoSuccess value)
        updateUserInfoSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EditProfileError value)? error,
    TResult? Function(EditProfileLoading value)? loading,
    TResult? Function(EditProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult? Function(EditProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult? Function(EditProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult? Function(EditProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    TResult? Function(EditProfileUpdateUserInfoSuccess value)?
        updateUserInfoSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditProfileError value)? error,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult Function(EditProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult Function(EditProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult Function(EditProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    TResult Function(EditProfileUpdateUserInfoSuccess value)?
        updateUserInfoSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res, EditProfileState>;
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res, $Val extends EditProfileState>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

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
    extends _$EditProfileStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'EditProfileState.initial()';
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
    required TResult Function() updateUserInfoSuccess,
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
    TResult? Function()? updateUserInfoSuccess,
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
    TResult Function()? updateUserInfoSuccess,
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
    required TResult Function(EditProfileError value) error,
    required TResult Function(EditProfileLoading value) loading,
    required TResult Function(EditProfileGetUserInfoSuccess value)
        getUserInfoSuccess,
    required TResult Function(EditProfileAddNewEducationSuccess value)
        addNewEducationSuccess,
    required TResult Function(EditProfileAddNewExperienceSuccess value)
        addNewExperienceSuccess,
    required TResult Function(EditProfileAddNewCertificateSuccess value)
        addNewCertificateSuccess,
    required TResult Function(EditProfileUpdateUserInfoSuccess value)
        updateUserInfoSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EditProfileError value)? error,
    TResult? Function(EditProfileLoading value)? loading,
    TResult? Function(EditProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult? Function(EditProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult? Function(EditProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult? Function(EditProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    TResult? Function(EditProfileUpdateUserInfoSuccess value)?
        updateUserInfoSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditProfileError value)? error,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult Function(EditProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult Function(EditProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult Function(EditProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    TResult Function(EditProfileUpdateUserInfoSuccess value)?
        updateUserInfoSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EditProfileState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$EditProfileErrorImplCopyWith<$Res> {
  factory _$$EditProfileErrorImplCopyWith(_$EditProfileErrorImpl value,
          $Res Function(_$EditProfileErrorImpl) then) =
      __$$EditProfileErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String title});
}

/// @nodoc
class __$$EditProfileErrorImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$EditProfileErrorImpl>
    implements _$$EditProfileErrorImplCopyWith<$Res> {
  __$$EditProfileErrorImplCopyWithImpl(_$EditProfileErrorImpl _value,
      $Res Function(_$EditProfileErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? title = null,
  }) {
    return _then(_$EditProfileErrorImpl(
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

class _$EditProfileErrorImpl implements EditProfileError {
  const _$EditProfileErrorImpl({required this.message, required this.title});

  @override
  final String message;
  @override
  final String title;

  @override
  String toString() {
    return 'EditProfileState.error(message: $message, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileErrorImplCopyWith<_$EditProfileErrorImpl> get copyWith =>
      __$$EditProfileErrorImplCopyWithImpl<_$EditProfileErrorImpl>(
          this, _$identity);

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
    required TResult Function() updateUserInfoSuccess,
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
    TResult? Function()? updateUserInfoSuccess,
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
    TResult Function()? updateUserInfoSuccess,
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
    required TResult Function(EditProfileError value) error,
    required TResult Function(EditProfileLoading value) loading,
    required TResult Function(EditProfileGetUserInfoSuccess value)
        getUserInfoSuccess,
    required TResult Function(EditProfileAddNewEducationSuccess value)
        addNewEducationSuccess,
    required TResult Function(EditProfileAddNewExperienceSuccess value)
        addNewExperienceSuccess,
    required TResult Function(EditProfileAddNewCertificateSuccess value)
        addNewCertificateSuccess,
    required TResult Function(EditProfileUpdateUserInfoSuccess value)
        updateUserInfoSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EditProfileError value)? error,
    TResult? Function(EditProfileLoading value)? loading,
    TResult? Function(EditProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult? Function(EditProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult? Function(EditProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult? Function(EditProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    TResult? Function(EditProfileUpdateUserInfoSuccess value)?
        updateUserInfoSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditProfileError value)? error,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult Function(EditProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult Function(EditProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult Function(EditProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    TResult Function(EditProfileUpdateUserInfoSuccess value)?
        updateUserInfoSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EditProfileError implements EditProfileState {
  const factory EditProfileError(
      {required final String message,
      required final String title}) = _$EditProfileErrorImpl;

  String get message;
  String get title;
  @JsonKey(ignore: true)
  _$$EditProfileErrorImplCopyWith<_$EditProfileErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProfileLoadingImplCopyWith<$Res> {
  factory _$$EditProfileLoadingImplCopyWith(_$EditProfileLoadingImpl value,
          $Res Function(_$EditProfileLoadingImpl) then) =
      __$$EditProfileLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditProfileLoadingImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$EditProfileLoadingImpl>
    implements _$$EditProfileLoadingImplCopyWith<$Res> {
  __$$EditProfileLoadingImplCopyWithImpl(_$EditProfileLoadingImpl _value,
      $Res Function(_$EditProfileLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditProfileLoadingImpl implements EditProfileLoading {
  const _$EditProfileLoadingImpl();

  @override
  String toString() {
    return 'EditProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditProfileLoadingImpl);
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
    required TResult Function() updateUserInfoSuccess,
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
    TResult? Function()? updateUserInfoSuccess,
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
    TResult Function()? updateUserInfoSuccess,
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
    required TResult Function(EditProfileError value) error,
    required TResult Function(EditProfileLoading value) loading,
    required TResult Function(EditProfileGetUserInfoSuccess value)
        getUserInfoSuccess,
    required TResult Function(EditProfileAddNewEducationSuccess value)
        addNewEducationSuccess,
    required TResult Function(EditProfileAddNewExperienceSuccess value)
        addNewExperienceSuccess,
    required TResult Function(EditProfileAddNewCertificateSuccess value)
        addNewCertificateSuccess,
    required TResult Function(EditProfileUpdateUserInfoSuccess value)
        updateUserInfoSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EditProfileError value)? error,
    TResult? Function(EditProfileLoading value)? loading,
    TResult? Function(EditProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult? Function(EditProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult? Function(EditProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult? Function(EditProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    TResult? Function(EditProfileUpdateUserInfoSuccess value)?
        updateUserInfoSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditProfileError value)? error,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult Function(EditProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult Function(EditProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult Function(EditProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    TResult Function(EditProfileUpdateUserInfoSuccess value)?
        updateUserInfoSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EditProfileLoading implements EditProfileState {
  const factory EditProfileLoading() = _$EditProfileLoadingImpl;
}

/// @nodoc
abstract class _$$EditProfileGetUserInfoSuccessImplCopyWith<$Res> {
  factory _$$EditProfileGetUserInfoSuccessImplCopyWith(
          _$EditProfileGetUserInfoSuccessImpl value,
          $Res Function(_$EditProfileGetUserInfoSuccessImpl) then) =
      __$$EditProfileGetUserInfoSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserInfoModel userInfoModel});

  $UserInfoModelCopyWith<$Res> get userInfoModel;
}

/// @nodoc
class __$$EditProfileGetUserInfoSuccessImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res,
        _$EditProfileGetUserInfoSuccessImpl>
    implements _$$EditProfileGetUserInfoSuccessImplCopyWith<$Res> {
  __$$EditProfileGetUserInfoSuccessImplCopyWithImpl(
      _$EditProfileGetUserInfoSuccessImpl _value,
      $Res Function(_$EditProfileGetUserInfoSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfoModel = null,
  }) {
    return _then(_$EditProfileGetUserInfoSuccessImpl(
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

class _$EditProfileGetUserInfoSuccessImpl
    implements EditProfileGetUserInfoSuccess {
  const _$EditProfileGetUserInfoSuccessImpl(this.userInfoModel);

  @override
  final UserInfoModel userInfoModel;

  @override
  String toString() {
    return 'EditProfileState.getUserInfoSuccess(userInfoModel: $userInfoModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileGetUserInfoSuccessImpl &&
            (identical(other.userInfoModel, userInfoModel) ||
                other.userInfoModel == userInfoModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userInfoModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileGetUserInfoSuccessImplCopyWith<
          _$EditProfileGetUserInfoSuccessImpl>
      get copyWith => __$$EditProfileGetUserInfoSuccessImplCopyWithImpl<
          _$EditProfileGetUserInfoSuccessImpl>(this, _$identity);

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
    required TResult Function() updateUserInfoSuccess,
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
    TResult? Function()? updateUserInfoSuccess,
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
    TResult Function()? updateUserInfoSuccess,
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
    required TResult Function(EditProfileError value) error,
    required TResult Function(EditProfileLoading value) loading,
    required TResult Function(EditProfileGetUserInfoSuccess value)
        getUserInfoSuccess,
    required TResult Function(EditProfileAddNewEducationSuccess value)
        addNewEducationSuccess,
    required TResult Function(EditProfileAddNewExperienceSuccess value)
        addNewExperienceSuccess,
    required TResult Function(EditProfileAddNewCertificateSuccess value)
        addNewCertificateSuccess,
    required TResult Function(EditProfileUpdateUserInfoSuccess value)
        updateUserInfoSuccess,
  }) {
    return getUserInfoSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EditProfileError value)? error,
    TResult? Function(EditProfileLoading value)? loading,
    TResult? Function(EditProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult? Function(EditProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult? Function(EditProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult? Function(EditProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    TResult? Function(EditProfileUpdateUserInfoSuccess value)?
        updateUserInfoSuccess,
  }) {
    return getUserInfoSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditProfileError value)? error,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult Function(EditProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult Function(EditProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult Function(EditProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    TResult Function(EditProfileUpdateUserInfoSuccess value)?
        updateUserInfoSuccess,
    required TResult orElse(),
  }) {
    if (getUserInfoSuccess != null) {
      return getUserInfoSuccess(this);
    }
    return orElse();
  }
}

abstract class EditProfileGetUserInfoSuccess implements EditProfileState {
  const factory EditProfileGetUserInfoSuccess(
      final UserInfoModel userInfoModel) = _$EditProfileGetUserInfoSuccessImpl;

  UserInfoModel get userInfoModel;
  @JsonKey(ignore: true)
  _$$EditProfileGetUserInfoSuccessImplCopyWith<
          _$EditProfileGetUserInfoSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProfileAddNewEducationSuccessImplCopyWith<$Res> {
  factory _$$EditProfileAddNewEducationSuccessImplCopyWith(
          _$EditProfileAddNewEducationSuccessImpl value,
          $Res Function(_$EditProfileAddNewEducationSuccessImpl) then) =
      __$$EditProfileAddNewEducationSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EducationModel educationModel});

  $EducationModelCopyWith<$Res> get educationModel;
}

/// @nodoc
class __$$EditProfileAddNewEducationSuccessImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res,
        _$EditProfileAddNewEducationSuccessImpl>
    implements _$$EditProfileAddNewEducationSuccessImplCopyWith<$Res> {
  __$$EditProfileAddNewEducationSuccessImplCopyWithImpl(
      _$EditProfileAddNewEducationSuccessImpl _value,
      $Res Function(_$EditProfileAddNewEducationSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? educationModel = null,
  }) {
    return _then(_$EditProfileAddNewEducationSuccessImpl(
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

class _$EditProfileAddNewEducationSuccessImpl
    implements EditProfileAddNewEducationSuccess {
  const _$EditProfileAddNewEducationSuccessImpl(this.educationModel);

  @override
  final EducationModel educationModel;

  @override
  String toString() {
    return 'EditProfileState.addNewEducationSuccess(educationModel: $educationModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileAddNewEducationSuccessImpl &&
            (identical(other.educationModel, educationModel) ||
                other.educationModel == educationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, educationModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileAddNewEducationSuccessImplCopyWith<
          _$EditProfileAddNewEducationSuccessImpl>
      get copyWith => __$$EditProfileAddNewEducationSuccessImplCopyWithImpl<
          _$EditProfileAddNewEducationSuccessImpl>(this, _$identity);

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
    required TResult Function() updateUserInfoSuccess,
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
    TResult? Function()? updateUserInfoSuccess,
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
    TResult Function()? updateUserInfoSuccess,
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
    required TResult Function(EditProfileError value) error,
    required TResult Function(EditProfileLoading value) loading,
    required TResult Function(EditProfileGetUserInfoSuccess value)
        getUserInfoSuccess,
    required TResult Function(EditProfileAddNewEducationSuccess value)
        addNewEducationSuccess,
    required TResult Function(EditProfileAddNewExperienceSuccess value)
        addNewExperienceSuccess,
    required TResult Function(EditProfileAddNewCertificateSuccess value)
        addNewCertificateSuccess,
    required TResult Function(EditProfileUpdateUserInfoSuccess value)
        updateUserInfoSuccess,
  }) {
    return addNewEducationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EditProfileError value)? error,
    TResult? Function(EditProfileLoading value)? loading,
    TResult? Function(EditProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult? Function(EditProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult? Function(EditProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult? Function(EditProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    TResult? Function(EditProfileUpdateUserInfoSuccess value)?
        updateUserInfoSuccess,
  }) {
    return addNewEducationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditProfileError value)? error,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult Function(EditProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult Function(EditProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult Function(EditProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    TResult Function(EditProfileUpdateUserInfoSuccess value)?
        updateUserInfoSuccess,
    required TResult orElse(),
  }) {
    if (addNewEducationSuccess != null) {
      return addNewEducationSuccess(this);
    }
    return orElse();
  }
}

abstract class EditProfileAddNewEducationSuccess implements EditProfileState {
  const factory EditProfileAddNewEducationSuccess(
          final EducationModel educationModel) =
      _$EditProfileAddNewEducationSuccessImpl;

  EducationModel get educationModel;
  @JsonKey(ignore: true)
  _$$EditProfileAddNewEducationSuccessImplCopyWith<
          _$EditProfileAddNewEducationSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProfileAddNewExperienceSuccessImplCopyWith<$Res> {
  factory _$$EditProfileAddNewExperienceSuccessImplCopyWith(
          _$EditProfileAddNewExperienceSuccessImpl value,
          $Res Function(_$EditProfileAddNewExperienceSuccessImpl) then) =
      __$$EditProfileAddNewExperienceSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExperienceModel experienceModel});

  $ExperienceModelCopyWith<$Res> get experienceModel;
}

/// @nodoc
class __$$EditProfileAddNewExperienceSuccessImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res,
        _$EditProfileAddNewExperienceSuccessImpl>
    implements _$$EditProfileAddNewExperienceSuccessImplCopyWith<$Res> {
  __$$EditProfileAddNewExperienceSuccessImplCopyWithImpl(
      _$EditProfileAddNewExperienceSuccessImpl _value,
      $Res Function(_$EditProfileAddNewExperienceSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? experienceModel = null,
  }) {
    return _then(_$EditProfileAddNewExperienceSuccessImpl(
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

class _$EditProfileAddNewExperienceSuccessImpl
    implements EditProfileAddNewExperienceSuccess {
  const _$EditProfileAddNewExperienceSuccessImpl(this.experienceModel);

  @override
  final ExperienceModel experienceModel;

  @override
  String toString() {
    return 'EditProfileState.addNewExperienceSuccess(experienceModel: $experienceModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileAddNewExperienceSuccessImpl &&
            (identical(other.experienceModel, experienceModel) ||
                other.experienceModel == experienceModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, experienceModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileAddNewExperienceSuccessImplCopyWith<
          _$EditProfileAddNewExperienceSuccessImpl>
      get copyWith => __$$EditProfileAddNewExperienceSuccessImplCopyWithImpl<
          _$EditProfileAddNewExperienceSuccessImpl>(this, _$identity);

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
    required TResult Function() updateUserInfoSuccess,
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
    TResult? Function()? updateUserInfoSuccess,
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
    TResult Function()? updateUserInfoSuccess,
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
    required TResult Function(EditProfileError value) error,
    required TResult Function(EditProfileLoading value) loading,
    required TResult Function(EditProfileGetUserInfoSuccess value)
        getUserInfoSuccess,
    required TResult Function(EditProfileAddNewEducationSuccess value)
        addNewEducationSuccess,
    required TResult Function(EditProfileAddNewExperienceSuccess value)
        addNewExperienceSuccess,
    required TResult Function(EditProfileAddNewCertificateSuccess value)
        addNewCertificateSuccess,
    required TResult Function(EditProfileUpdateUserInfoSuccess value)
        updateUserInfoSuccess,
  }) {
    return addNewExperienceSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EditProfileError value)? error,
    TResult? Function(EditProfileLoading value)? loading,
    TResult? Function(EditProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult? Function(EditProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult? Function(EditProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult? Function(EditProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    TResult? Function(EditProfileUpdateUserInfoSuccess value)?
        updateUserInfoSuccess,
  }) {
    return addNewExperienceSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditProfileError value)? error,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult Function(EditProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult Function(EditProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult Function(EditProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    TResult Function(EditProfileUpdateUserInfoSuccess value)?
        updateUserInfoSuccess,
    required TResult orElse(),
  }) {
    if (addNewExperienceSuccess != null) {
      return addNewExperienceSuccess(this);
    }
    return orElse();
  }
}

abstract class EditProfileAddNewExperienceSuccess implements EditProfileState {
  const factory EditProfileAddNewExperienceSuccess(
          final ExperienceModel experienceModel) =
      _$EditProfileAddNewExperienceSuccessImpl;

  ExperienceModel get experienceModel;
  @JsonKey(ignore: true)
  _$$EditProfileAddNewExperienceSuccessImplCopyWith<
          _$EditProfileAddNewExperienceSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProfileAddNewCertificateSuccessImplCopyWith<$Res> {
  factory _$$EditProfileAddNewCertificateSuccessImplCopyWith(
          _$EditProfileAddNewCertificateSuccessImpl value,
          $Res Function(_$EditProfileAddNewCertificateSuccessImpl) then) =
      __$$EditProfileAddNewCertificateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CertificateModel certificateModel});

  $CertificateModelCopyWith<$Res> get certificateModel;
}

/// @nodoc
class __$$EditProfileAddNewCertificateSuccessImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res,
        _$EditProfileAddNewCertificateSuccessImpl>
    implements _$$EditProfileAddNewCertificateSuccessImplCopyWith<$Res> {
  __$$EditProfileAddNewCertificateSuccessImplCopyWithImpl(
      _$EditProfileAddNewCertificateSuccessImpl _value,
      $Res Function(_$EditProfileAddNewCertificateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certificateModel = null,
  }) {
    return _then(_$EditProfileAddNewCertificateSuccessImpl(
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

class _$EditProfileAddNewCertificateSuccessImpl
    implements EditProfileAddNewCertificateSuccess {
  const _$EditProfileAddNewCertificateSuccessImpl(this.certificateModel);

  @override
  final CertificateModel certificateModel;

  @override
  String toString() {
    return 'EditProfileState.addNewCertificateSuccess(certificateModel: $certificateModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileAddNewCertificateSuccessImpl &&
            (identical(other.certificateModel, certificateModel) ||
                other.certificateModel == certificateModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, certificateModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileAddNewCertificateSuccessImplCopyWith<
          _$EditProfileAddNewCertificateSuccessImpl>
      get copyWith => __$$EditProfileAddNewCertificateSuccessImplCopyWithImpl<
          _$EditProfileAddNewCertificateSuccessImpl>(this, _$identity);

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
    required TResult Function() updateUserInfoSuccess,
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
    TResult? Function()? updateUserInfoSuccess,
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
    TResult Function()? updateUserInfoSuccess,
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
    required TResult Function(EditProfileError value) error,
    required TResult Function(EditProfileLoading value) loading,
    required TResult Function(EditProfileGetUserInfoSuccess value)
        getUserInfoSuccess,
    required TResult Function(EditProfileAddNewEducationSuccess value)
        addNewEducationSuccess,
    required TResult Function(EditProfileAddNewExperienceSuccess value)
        addNewExperienceSuccess,
    required TResult Function(EditProfileAddNewCertificateSuccess value)
        addNewCertificateSuccess,
    required TResult Function(EditProfileUpdateUserInfoSuccess value)
        updateUserInfoSuccess,
  }) {
    return addNewCertificateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EditProfileError value)? error,
    TResult? Function(EditProfileLoading value)? loading,
    TResult? Function(EditProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult? Function(EditProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult? Function(EditProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult? Function(EditProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    TResult? Function(EditProfileUpdateUserInfoSuccess value)?
        updateUserInfoSuccess,
  }) {
    return addNewCertificateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditProfileError value)? error,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult Function(EditProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult Function(EditProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult Function(EditProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    TResult Function(EditProfileUpdateUserInfoSuccess value)?
        updateUserInfoSuccess,
    required TResult orElse(),
  }) {
    if (addNewCertificateSuccess != null) {
      return addNewCertificateSuccess(this);
    }
    return orElse();
  }
}

abstract class EditProfileAddNewCertificateSuccess implements EditProfileState {
  const factory EditProfileAddNewCertificateSuccess(
          final CertificateModel certificateModel) =
      _$EditProfileAddNewCertificateSuccessImpl;

  CertificateModel get certificateModel;
  @JsonKey(ignore: true)
  _$$EditProfileAddNewCertificateSuccessImplCopyWith<
          _$EditProfileAddNewCertificateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProfileUpdateUserInfoSuccessImplCopyWith<$Res> {
  factory _$$EditProfileUpdateUserInfoSuccessImplCopyWith(
          _$EditProfileUpdateUserInfoSuccessImpl value,
          $Res Function(_$EditProfileUpdateUserInfoSuccessImpl) then) =
      __$$EditProfileUpdateUserInfoSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditProfileUpdateUserInfoSuccessImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res,
        _$EditProfileUpdateUserInfoSuccessImpl>
    implements _$$EditProfileUpdateUserInfoSuccessImplCopyWith<$Res> {
  __$$EditProfileUpdateUserInfoSuccessImplCopyWithImpl(
      _$EditProfileUpdateUserInfoSuccessImpl _value,
      $Res Function(_$EditProfileUpdateUserInfoSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditProfileUpdateUserInfoSuccessImpl
    implements EditProfileUpdateUserInfoSuccess {
  const _$EditProfileUpdateUserInfoSuccessImpl();

  @override
  String toString() {
    return 'EditProfileState.updateUserInfoSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileUpdateUserInfoSuccessImpl);
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
    required TResult Function() updateUserInfoSuccess,
  }) {
    return updateUserInfoSuccess();
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
    TResult? Function()? updateUserInfoSuccess,
  }) {
    return updateUserInfoSuccess?.call();
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
    TResult Function()? updateUserInfoSuccess,
    required TResult orElse(),
  }) {
    if (updateUserInfoSuccess != null) {
      return updateUserInfoSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(EditProfileError value) error,
    required TResult Function(EditProfileLoading value) loading,
    required TResult Function(EditProfileGetUserInfoSuccess value)
        getUserInfoSuccess,
    required TResult Function(EditProfileAddNewEducationSuccess value)
        addNewEducationSuccess,
    required TResult Function(EditProfileAddNewExperienceSuccess value)
        addNewExperienceSuccess,
    required TResult Function(EditProfileAddNewCertificateSuccess value)
        addNewCertificateSuccess,
    required TResult Function(EditProfileUpdateUserInfoSuccess value)
        updateUserInfoSuccess,
  }) {
    return updateUserInfoSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EditProfileError value)? error,
    TResult? Function(EditProfileLoading value)? loading,
    TResult? Function(EditProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult? Function(EditProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult? Function(EditProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult? Function(EditProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    TResult? Function(EditProfileUpdateUserInfoSuccess value)?
        updateUserInfoSuccess,
  }) {
    return updateUserInfoSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditProfileError value)? error,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileGetUserInfoSuccess value)? getUserInfoSuccess,
    TResult Function(EditProfileAddNewEducationSuccess value)?
        addNewEducationSuccess,
    TResult Function(EditProfileAddNewExperienceSuccess value)?
        addNewExperienceSuccess,
    TResult Function(EditProfileAddNewCertificateSuccess value)?
        addNewCertificateSuccess,
    TResult Function(EditProfileUpdateUserInfoSuccess value)?
        updateUserInfoSuccess,
    required TResult orElse(),
  }) {
    if (updateUserInfoSuccess != null) {
      return updateUserInfoSuccess(this);
    }
    return orElse();
  }
}

abstract class EditProfileUpdateUserInfoSuccess implements EditProfileState {
  const factory EditProfileUpdateUserInfoSuccess() =
      _$EditProfileUpdateUserInfoSuccessImpl;
}
