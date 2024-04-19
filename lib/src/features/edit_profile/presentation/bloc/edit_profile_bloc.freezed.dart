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
    required TResult Function(String skill) addNewSkill,
    required TResult Function(int languageID) addNewLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EducationModel educationModel)? addNewEducation,
    TResult? Function(ExperienceModel experienceModel)? addNewExperience,
    TResult? Function(CertificateModel certificateModel)? addNewCertificate,
    TResult? Function(UserInfoModel userInfoModel)? updateUserInfo,
    TResult? Function()? getUserinfo,
    TResult? Function(String skill)? addNewSkill,
    TResult? Function(int languageID)? addNewLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EducationModel educationModel)? addNewEducation,
    TResult Function(ExperienceModel experienceModel)? addNewExperience,
    TResult Function(CertificateModel certificateModel)? addNewCertificate,
    TResult Function(UserInfoModel userInfoModel)? updateUserInfo,
    TResult Function()? getUserinfo,
    TResult Function(String skill)? addNewSkill,
    TResult Function(int languageID)? addNewLanguage,
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
    required TResult Function(EditProfileAddNewSkill value) addNewSkill,
    required TResult Function(EditProfileAddNewLanguage value) addNewLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileAddNewEducation value)? addNewEducation,
    TResult? Function(EditProfileAddNewExperience value)? addNewExperience,
    TResult? Function(EditProfileAddNewCertificate value)? addNewCertificate,
    TResult? Function(EditProfileUpdateUserInfo value)? updateUserInfo,
    TResult? Function(EditProfileGetUserInfo value)? getUserinfo,
    TResult? Function(EditProfileAddNewSkill value)? addNewSkill,
    TResult? Function(EditProfileAddNewLanguage value)? addNewLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileAddNewEducation value)? addNewEducation,
    TResult Function(EditProfileAddNewExperience value)? addNewExperience,
    TResult Function(EditProfileAddNewCertificate value)? addNewCertificate,
    TResult Function(EditProfileUpdateUserInfo value)? updateUserInfo,
    TResult Function(EditProfileGetUserInfo value)? getUserinfo,
    TResult Function(EditProfileAddNewSkill value)? addNewSkill,
    TResult Function(EditProfileAddNewLanguage value)? addNewLanguage,
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
    required TResult Function(String skill) addNewSkill,
    required TResult Function(int languageID) addNewLanguage,
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
    TResult? Function(String skill)? addNewSkill,
    TResult? Function(int languageID)? addNewLanguage,
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
    TResult Function(String skill)? addNewSkill,
    TResult Function(int languageID)? addNewLanguage,
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
    required TResult Function(EditProfileAddNewSkill value) addNewSkill,
    required TResult Function(EditProfileAddNewLanguage value) addNewLanguage,
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
    TResult? Function(EditProfileAddNewSkill value)? addNewSkill,
    TResult? Function(EditProfileAddNewLanguage value)? addNewLanguage,
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
    TResult Function(EditProfileAddNewSkill value)? addNewSkill,
    TResult Function(EditProfileAddNewLanguage value)? addNewLanguage,
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
    required TResult Function(String skill) addNewSkill,
    required TResult Function(int languageID) addNewLanguage,
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
    TResult? Function(String skill)? addNewSkill,
    TResult? Function(int languageID)? addNewLanguage,
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
    TResult Function(String skill)? addNewSkill,
    TResult Function(int languageID)? addNewLanguage,
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
    required TResult Function(EditProfileAddNewSkill value) addNewSkill,
    required TResult Function(EditProfileAddNewLanguage value) addNewLanguage,
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
    TResult? Function(EditProfileAddNewSkill value)? addNewSkill,
    TResult? Function(EditProfileAddNewLanguage value)? addNewLanguage,
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
    TResult Function(EditProfileAddNewSkill value)? addNewSkill,
    TResult Function(EditProfileAddNewLanguage value)? addNewLanguage,
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
    required TResult Function(String skill) addNewSkill,
    required TResult Function(int languageID) addNewLanguage,
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
    TResult? Function(String skill)? addNewSkill,
    TResult? Function(int languageID)? addNewLanguage,
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
    TResult Function(String skill)? addNewSkill,
    TResult Function(int languageID)? addNewLanguage,
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
    required TResult Function(EditProfileAddNewSkill value) addNewSkill,
    required TResult Function(EditProfileAddNewLanguage value) addNewLanguage,
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
    TResult? Function(EditProfileAddNewSkill value)? addNewSkill,
    TResult? Function(EditProfileAddNewLanguage value)? addNewLanguage,
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
    TResult Function(EditProfileAddNewSkill value)? addNewSkill,
    TResult Function(EditProfileAddNewLanguage value)? addNewLanguage,
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
    required TResult Function(String skill) addNewSkill,
    required TResult Function(int languageID) addNewLanguage,
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
    TResult? Function(String skill)? addNewSkill,
    TResult? Function(int languageID)? addNewLanguage,
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
    TResult Function(String skill)? addNewSkill,
    TResult Function(int languageID)? addNewLanguage,
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
    required TResult Function(EditProfileAddNewSkill value) addNewSkill,
    required TResult Function(EditProfileAddNewLanguage value) addNewLanguage,
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
    TResult? Function(EditProfileAddNewSkill value)? addNewSkill,
    TResult? Function(EditProfileAddNewLanguage value)? addNewLanguage,
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
    TResult Function(EditProfileAddNewSkill value)? addNewSkill,
    TResult Function(EditProfileAddNewLanguage value)? addNewLanguage,
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
    required TResult Function(String skill) addNewSkill,
    required TResult Function(int languageID) addNewLanguage,
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
    TResult? Function(String skill)? addNewSkill,
    TResult? Function(int languageID)? addNewLanguage,
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
    TResult Function(String skill)? addNewSkill,
    TResult Function(int languageID)? addNewLanguage,
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
    required TResult Function(EditProfileAddNewSkill value) addNewSkill,
    required TResult Function(EditProfileAddNewLanguage value) addNewLanguage,
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
    TResult? Function(EditProfileAddNewSkill value)? addNewSkill,
    TResult? Function(EditProfileAddNewLanguage value)? addNewLanguage,
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
    TResult Function(EditProfileAddNewSkill value)? addNewSkill,
    TResult Function(EditProfileAddNewLanguage value)? addNewLanguage,
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
abstract class _$$EditProfileAddNewSkillImplCopyWith<$Res> {
  factory _$$EditProfileAddNewSkillImplCopyWith(
          _$EditProfileAddNewSkillImpl value,
          $Res Function(_$EditProfileAddNewSkillImpl) then) =
      __$$EditProfileAddNewSkillImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String skill});
}

/// @nodoc
class __$$EditProfileAddNewSkillImplCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res, _$EditProfileAddNewSkillImpl>
    implements _$$EditProfileAddNewSkillImplCopyWith<$Res> {
  __$$EditProfileAddNewSkillImplCopyWithImpl(
      _$EditProfileAddNewSkillImpl _value,
      $Res Function(_$EditProfileAddNewSkillImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skill = null,
  }) {
    return _then(_$EditProfileAddNewSkillImpl(
      null == skill
          ? _value.skill
          : skill // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditProfileAddNewSkillImpl implements EditProfileAddNewSkill {
  const _$EditProfileAddNewSkillImpl(this.skill);

  @override
  final String skill;

  @override
  String toString() {
    return 'EditProfileEvent.addNewSkill(skill: $skill)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileAddNewSkillImpl &&
            (identical(other.skill, skill) || other.skill == skill));
  }

  @override
  int get hashCode => Object.hash(runtimeType, skill);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileAddNewSkillImplCopyWith<_$EditProfileAddNewSkillImpl>
      get copyWith => __$$EditProfileAddNewSkillImplCopyWithImpl<
          _$EditProfileAddNewSkillImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EducationModel educationModel) addNewEducation,
    required TResult Function(ExperienceModel experienceModel) addNewExperience,
    required TResult Function(CertificateModel certificateModel)
        addNewCertificate,
    required TResult Function(UserInfoModel userInfoModel) updateUserInfo,
    required TResult Function() getUserinfo,
    required TResult Function(String skill) addNewSkill,
    required TResult Function(int languageID) addNewLanguage,
  }) {
    return addNewSkill(skill);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EducationModel educationModel)? addNewEducation,
    TResult? Function(ExperienceModel experienceModel)? addNewExperience,
    TResult? Function(CertificateModel certificateModel)? addNewCertificate,
    TResult? Function(UserInfoModel userInfoModel)? updateUserInfo,
    TResult? Function()? getUserinfo,
    TResult? Function(String skill)? addNewSkill,
    TResult? Function(int languageID)? addNewLanguage,
  }) {
    return addNewSkill?.call(skill);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EducationModel educationModel)? addNewEducation,
    TResult Function(ExperienceModel experienceModel)? addNewExperience,
    TResult Function(CertificateModel certificateModel)? addNewCertificate,
    TResult Function(UserInfoModel userInfoModel)? updateUserInfo,
    TResult Function()? getUserinfo,
    TResult Function(String skill)? addNewSkill,
    TResult Function(int languageID)? addNewLanguage,
    required TResult orElse(),
  }) {
    if (addNewSkill != null) {
      return addNewSkill(skill);
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
    required TResult Function(EditProfileAddNewSkill value) addNewSkill,
    required TResult Function(EditProfileAddNewLanguage value) addNewLanguage,
  }) {
    return addNewSkill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileAddNewEducation value)? addNewEducation,
    TResult? Function(EditProfileAddNewExperience value)? addNewExperience,
    TResult? Function(EditProfileAddNewCertificate value)? addNewCertificate,
    TResult? Function(EditProfileUpdateUserInfo value)? updateUserInfo,
    TResult? Function(EditProfileGetUserInfo value)? getUserinfo,
    TResult? Function(EditProfileAddNewSkill value)? addNewSkill,
    TResult? Function(EditProfileAddNewLanguage value)? addNewLanguage,
  }) {
    return addNewSkill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileAddNewEducation value)? addNewEducation,
    TResult Function(EditProfileAddNewExperience value)? addNewExperience,
    TResult Function(EditProfileAddNewCertificate value)? addNewCertificate,
    TResult Function(EditProfileUpdateUserInfo value)? updateUserInfo,
    TResult Function(EditProfileGetUserInfo value)? getUserinfo,
    TResult Function(EditProfileAddNewSkill value)? addNewSkill,
    TResult Function(EditProfileAddNewLanguage value)? addNewLanguage,
    required TResult orElse(),
  }) {
    if (addNewSkill != null) {
      return addNewSkill(this);
    }
    return orElse();
  }
}

abstract class EditProfileAddNewSkill implements EditProfileEvent {
  const factory EditProfileAddNewSkill(final String skill) =
      _$EditProfileAddNewSkillImpl;

  String get skill;
  @JsonKey(ignore: true)
  _$$EditProfileAddNewSkillImplCopyWith<_$EditProfileAddNewSkillImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProfileAddNewLanguageImplCopyWith<$Res> {
  factory _$$EditProfileAddNewLanguageImplCopyWith(
          _$EditProfileAddNewLanguageImpl value,
          $Res Function(_$EditProfileAddNewLanguageImpl) then) =
      __$$EditProfileAddNewLanguageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int languageID});
}

/// @nodoc
class __$$EditProfileAddNewLanguageImplCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res,
        _$EditProfileAddNewLanguageImpl>
    implements _$$EditProfileAddNewLanguageImplCopyWith<$Res> {
  __$$EditProfileAddNewLanguageImplCopyWithImpl(
      _$EditProfileAddNewLanguageImpl _value,
      $Res Function(_$EditProfileAddNewLanguageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageID = null,
  }) {
    return _then(_$EditProfileAddNewLanguageImpl(
      null == languageID
          ? _value.languageID
          : languageID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EditProfileAddNewLanguageImpl implements EditProfileAddNewLanguage {
  const _$EditProfileAddNewLanguageImpl(this.languageID);

  @override
  final int languageID;

  @override
  String toString() {
    return 'EditProfileEvent.addNewLanguage(languageID: $languageID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileAddNewLanguageImpl &&
            (identical(other.languageID, languageID) ||
                other.languageID == languageID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, languageID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileAddNewLanguageImplCopyWith<_$EditProfileAddNewLanguageImpl>
      get copyWith => __$$EditProfileAddNewLanguageImplCopyWithImpl<
          _$EditProfileAddNewLanguageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EducationModel educationModel) addNewEducation,
    required TResult Function(ExperienceModel experienceModel) addNewExperience,
    required TResult Function(CertificateModel certificateModel)
        addNewCertificate,
    required TResult Function(UserInfoModel userInfoModel) updateUserInfo,
    required TResult Function() getUserinfo,
    required TResult Function(String skill) addNewSkill,
    required TResult Function(int languageID) addNewLanguage,
  }) {
    return addNewLanguage(languageID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EducationModel educationModel)? addNewEducation,
    TResult? Function(ExperienceModel experienceModel)? addNewExperience,
    TResult? Function(CertificateModel certificateModel)? addNewCertificate,
    TResult? Function(UserInfoModel userInfoModel)? updateUserInfo,
    TResult? Function()? getUserinfo,
    TResult? Function(String skill)? addNewSkill,
    TResult? Function(int languageID)? addNewLanguage,
  }) {
    return addNewLanguage?.call(languageID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EducationModel educationModel)? addNewEducation,
    TResult Function(ExperienceModel experienceModel)? addNewExperience,
    TResult Function(CertificateModel certificateModel)? addNewCertificate,
    TResult Function(UserInfoModel userInfoModel)? updateUserInfo,
    TResult Function()? getUserinfo,
    TResult Function(String skill)? addNewSkill,
    TResult Function(int languageID)? addNewLanguage,
    required TResult orElse(),
  }) {
    if (addNewLanguage != null) {
      return addNewLanguage(languageID);
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
    required TResult Function(EditProfileAddNewSkill value) addNewSkill,
    required TResult Function(EditProfileAddNewLanguage value) addNewLanguage,
  }) {
    return addNewLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileAddNewEducation value)? addNewEducation,
    TResult? Function(EditProfileAddNewExperience value)? addNewExperience,
    TResult? Function(EditProfileAddNewCertificate value)? addNewCertificate,
    TResult? Function(EditProfileUpdateUserInfo value)? updateUserInfo,
    TResult? Function(EditProfileGetUserInfo value)? getUserinfo,
    TResult? Function(EditProfileAddNewSkill value)? addNewSkill,
    TResult? Function(EditProfileAddNewLanguage value)? addNewLanguage,
  }) {
    return addNewLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileAddNewEducation value)? addNewEducation,
    TResult Function(EditProfileAddNewExperience value)? addNewExperience,
    TResult Function(EditProfileAddNewCertificate value)? addNewCertificate,
    TResult Function(EditProfileUpdateUserInfo value)? updateUserInfo,
    TResult Function(EditProfileGetUserInfo value)? getUserinfo,
    TResult Function(EditProfileAddNewSkill value)? addNewSkill,
    TResult Function(EditProfileAddNewLanguage value)? addNewLanguage,
    required TResult orElse(),
  }) {
    if (addNewLanguage != null) {
      return addNewLanguage(this);
    }
    return orElse();
  }
}

abstract class EditProfileAddNewLanguage implements EditProfileEvent {
  const factory EditProfileAddNewLanguage(final int languageID) =
      _$EditProfileAddNewLanguageImpl;

  int get languageID;
  @JsonKey(ignore: true)
  _$$EditProfileAddNewLanguageImplCopyWith<_$EditProfileAddNewLanguageImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(UserSkillModel skillModel) addNewSkillSuccess,
    required TResult Function(UserLanguageModel languageModel)
        addNewLanguageSuccess,
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
    TResult? Function(UserSkillModel skillModel)? addNewSkillSuccess,
    TResult? Function(UserLanguageModel languageModel)? addNewLanguageSuccess,
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
    TResult Function(UserSkillModel skillModel)? addNewSkillSuccess,
    TResult Function(UserLanguageModel languageModel)? addNewLanguageSuccess,
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
    required TResult Function(EditProfileAddNewSkillSuccess value)
        addNewSkillSuccess,
    required TResult Function(EditProfileAddNewLanguageSuccess value)
        addNewLanguageSuccess,
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
    TResult? Function(EditProfileAddNewSkillSuccess value)? addNewSkillSuccess,
    TResult? Function(EditProfileAddNewLanguageSuccess value)?
        addNewLanguageSuccess,
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
    TResult Function(EditProfileAddNewSkillSuccess value)? addNewSkillSuccess,
    TResult Function(EditProfileAddNewLanguageSuccess value)?
        addNewLanguageSuccess,
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
    required TResult Function(UserSkillModel skillModel) addNewSkillSuccess,
    required TResult Function(UserLanguageModel languageModel)
        addNewLanguageSuccess,
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
    TResult? Function(UserSkillModel skillModel)? addNewSkillSuccess,
    TResult? Function(UserLanguageModel languageModel)? addNewLanguageSuccess,
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
    TResult Function(UserSkillModel skillModel)? addNewSkillSuccess,
    TResult Function(UserLanguageModel languageModel)? addNewLanguageSuccess,
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
    required TResult Function(EditProfileAddNewSkillSuccess value)
        addNewSkillSuccess,
    required TResult Function(EditProfileAddNewLanguageSuccess value)
        addNewLanguageSuccess,
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
    TResult? Function(EditProfileAddNewSkillSuccess value)? addNewSkillSuccess,
    TResult? Function(EditProfileAddNewLanguageSuccess value)?
        addNewLanguageSuccess,
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
    TResult Function(EditProfileAddNewSkillSuccess value)? addNewSkillSuccess,
    TResult Function(EditProfileAddNewLanguageSuccess value)?
        addNewLanguageSuccess,
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
    required TResult Function(UserSkillModel skillModel) addNewSkillSuccess,
    required TResult Function(UserLanguageModel languageModel)
        addNewLanguageSuccess,
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
    TResult? Function(UserSkillModel skillModel)? addNewSkillSuccess,
    TResult? Function(UserLanguageModel languageModel)? addNewLanguageSuccess,
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
    TResult Function(UserSkillModel skillModel)? addNewSkillSuccess,
    TResult Function(UserLanguageModel languageModel)? addNewLanguageSuccess,
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
    required TResult Function(EditProfileAddNewSkillSuccess value)
        addNewSkillSuccess,
    required TResult Function(EditProfileAddNewLanguageSuccess value)
        addNewLanguageSuccess,
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
    TResult? Function(EditProfileAddNewSkillSuccess value)? addNewSkillSuccess,
    TResult? Function(EditProfileAddNewLanguageSuccess value)?
        addNewLanguageSuccess,
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
    TResult Function(EditProfileAddNewSkillSuccess value)? addNewSkillSuccess,
    TResult Function(EditProfileAddNewLanguageSuccess value)?
        addNewLanguageSuccess,
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
    required TResult Function(UserSkillModel skillModel) addNewSkillSuccess,
    required TResult Function(UserLanguageModel languageModel)
        addNewLanguageSuccess,
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
    TResult? Function(UserSkillModel skillModel)? addNewSkillSuccess,
    TResult? Function(UserLanguageModel languageModel)? addNewLanguageSuccess,
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
    TResult Function(UserSkillModel skillModel)? addNewSkillSuccess,
    TResult Function(UserLanguageModel languageModel)? addNewLanguageSuccess,
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
    required TResult Function(EditProfileAddNewSkillSuccess value)
        addNewSkillSuccess,
    required TResult Function(EditProfileAddNewLanguageSuccess value)
        addNewLanguageSuccess,
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
    TResult? Function(EditProfileAddNewSkillSuccess value)? addNewSkillSuccess,
    TResult? Function(EditProfileAddNewLanguageSuccess value)?
        addNewLanguageSuccess,
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
    TResult Function(EditProfileAddNewSkillSuccess value)? addNewSkillSuccess,
    TResult Function(EditProfileAddNewLanguageSuccess value)?
        addNewLanguageSuccess,
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
    required TResult Function(UserSkillModel skillModel) addNewSkillSuccess,
    required TResult Function(UserLanguageModel languageModel)
        addNewLanguageSuccess,
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
    TResult? Function(UserSkillModel skillModel)? addNewSkillSuccess,
    TResult? Function(UserLanguageModel languageModel)? addNewLanguageSuccess,
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
    TResult Function(UserSkillModel skillModel)? addNewSkillSuccess,
    TResult Function(UserLanguageModel languageModel)? addNewLanguageSuccess,
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
    required TResult Function(EditProfileAddNewSkillSuccess value)
        addNewSkillSuccess,
    required TResult Function(EditProfileAddNewLanguageSuccess value)
        addNewLanguageSuccess,
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
    TResult? Function(EditProfileAddNewSkillSuccess value)? addNewSkillSuccess,
    TResult? Function(EditProfileAddNewLanguageSuccess value)?
        addNewLanguageSuccess,
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
    TResult Function(EditProfileAddNewSkillSuccess value)? addNewSkillSuccess,
    TResult Function(EditProfileAddNewLanguageSuccess value)?
        addNewLanguageSuccess,
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
    required TResult Function(UserSkillModel skillModel) addNewSkillSuccess,
    required TResult Function(UserLanguageModel languageModel)
        addNewLanguageSuccess,
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
    TResult? Function(UserSkillModel skillModel)? addNewSkillSuccess,
    TResult? Function(UserLanguageModel languageModel)? addNewLanguageSuccess,
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
    TResult Function(UserSkillModel skillModel)? addNewSkillSuccess,
    TResult Function(UserLanguageModel languageModel)? addNewLanguageSuccess,
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
    required TResult Function(EditProfileAddNewSkillSuccess value)
        addNewSkillSuccess,
    required TResult Function(EditProfileAddNewLanguageSuccess value)
        addNewLanguageSuccess,
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
    TResult? Function(EditProfileAddNewSkillSuccess value)? addNewSkillSuccess,
    TResult? Function(EditProfileAddNewLanguageSuccess value)?
        addNewLanguageSuccess,
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
    TResult Function(EditProfileAddNewSkillSuccess value)? addNewSkillSuccess,
    TResult Function(EditProfileAddNewLanguageSuccess value)?
        addNewLanguageSuccess,
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
    required TResult Function(UserSkillModel skillModel) addNewSkillSuccess,
    required TResult Function(UserLanguageModel languageModel)
        addNewLanguageSuccess,
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
    TResult? Function(UserSkillModel skillModel)? addNewSkillSuccess,
    TResult? Function(UserLanguageModel languageModel)? addNewLanguageSuccess,
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
    TResult Function(UserSkillModel skillModel)? addNewSkillSuccess,
    TResult Function(UserLanguageModel languageModel)? addNewLanguageSuccess,
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
    required TResult Function(EditProfileAddNewSkillSuccess value)
        addNewSkillSuccess,
    required TResult Function(EditProfileAddNewLanguageSuccess value)
        addNewLanguageSuccess,
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
    TResult? Function(EditProfileAddNewSkillSuccess value)? addNewSkillSuccess,
    TResult? Function(EditProfileAddNewLanguageSuccess value)?
        addNewLanguageSuccess,
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
    TResult Function(EditProfileAddNewSkillSuccess value)? addNewSkillSuccess,
    TResult Function(EditProfileAddNewLanguageSuccess value)?
        addNewLanguageSuccess,
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
    required TResult Function(UserSkillModel skillModel) addNewSkillSuccess,
    required TResult Function(UserLanguageModel languageModel)
        addNewLanguageSuccess,
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
    TResult? Function(UserSkillModel skillModel)? addNewSkillSuccess,
    TResult? Function(UserLanguageModel languageModel)? addNewLanguageSuccess,
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
    TResult Function(UserSkillModel skillModel)? addNewSkillSuccess,
    TResult Function(UserLanguageModel languageModel)? addNewLanguageSuccess,
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
    required TResult Function(EditProfileAddNewSkillSuccess value)
        addNewSkillSuccess,
    required TResult Function(EditProfileAddNewLanguageSuccess value)
        addNewLanguageSuccess,
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
    TResult? Function(EditProfileAddNewSkillSuccess value)? addNewSkillSuccess,
    TResult? Function(EditProfileAddNewLanguageSuccess value)?
        addNewLanguageSuccess,
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
    TResult Function(EditProfileAddNewSkillSuccess value)? addNewSkillSuccess,
    TResult Function(EditProfileAddNewLanguageSuccess value)?
        addNewLanguageSuccess,
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
    required TResult Function(UserSkillModel skillModel) addNewSkillSuccess,
    required TResult Function(UserLanguageModel languageModel)
        addNewLanguageSuccess,
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
    TResult? Function(UserSkillModel skillModel)? addNewSkillSuccess,
    TResult? Function(UserLanguageModel languageModel)? addNewLanguageSuccess,
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
    TResult Function(UserSkillModel skillModel)? addNewSkillSuccess,
    TResult Function(UserLanguageModel languageModel)? addNewLanguageSuccess,
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
    required TResult Function(EditProfileAddNewSkillSuccess value)
        addNewSkillSuccess,
    required TResult Function(EditProfileAddNewLanguageSuccess value)
        addNewLanguageSuccess,
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
    TResult? Function(EditProfileAddNewSkillSuccess value)? addNewSkillSuccess,
    TResult? Function(EditProfileAddNewLanguageSuccess value)?
        addNewLanguageSuccess,
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
    TResult Function(EditProfileAddNewSkillSuccess value)? addNewSkillSuccess,
    TResult Function(EditProfileAddNewLanguageSuccess value)?
        addNewLanguageSuccess,
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

/// @nodoc
abstract class _$$EditProfileAddNewSkillSuccessImplCopyWith<$Res> {
  factory _$$EditProfileAddNewSkillSuccessImplCopyWith(
          _$EditProfileAddNewSkillSuccessImpl value,
          $Res Function(_$EditProfileAddNewSkillSuccessImpl) then) =
      __$$EditProfileAddNewSkillSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserSkillModel skillModel});

  $UserSkillModelCopyWith<$Res> get skillModel;
}

/// @nodoc
class __$$EditProfileAddNewSkillSuccessImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res,
        _$EditProfileAddNewSkillSuccessImpl>
    implements _$$EditProfileAddNewSkillSuccessImplCopyWith<$Res> {
  __$$EditProfileAddNewSkillSuccessImplCopyWithImpl(
      _$EditProfileAddNewSkillSuccessImpl _value,
      $Res Function(_$EditProfileAddNewSkillSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skillModel = null,
  }) {
    return _then(_$EditProfileAddNewSkillSuccessImpl(
      null == skillModel
          ? _value.skillModel
          : skillModel // ignore: cast_nullable_to_non_nullable
              as UserSkillModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserSkillModelCopyWith<$Res> get skillModel {
    return $UserSkillModelCopyWith<$Res>(_value.skillModel, (value) {
      return _then(_value.copyWith(skillModel: value));
    });
  }
}

/// @nodoc

class _$EditProfileAddNewSkillSuccessImpl
    implements EditProfileAddNewSkillSuccess {
  const _$EditProfileAddNewSkillSuccessImpl(this.skillModel);

  @override
  final UserSkillModel skillModel;

  @override
  String toString() {
    return 'EditProfileState.addNewSkillSuccess(skillModel: $skillModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileAddNewSkillSuccessImpl &&
            (identical(other.skillModel, skillModel) ||
                other.skillModel == skillModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, skillModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileAddNewSkillSuccessImplCopyWith<
          _$EditProfileAddNewSkillSuccessImpl>
      get copyWith => __$$EditProfileAddNewSkillSuccessImplCopyWithImpl<
          _$EditProfileAddNewSkillSuccessImpl>(this, _$identity);

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
    required TResult Function(UserSkillModel skillModel) addNewSkillSuccess,
    required TResult Function(UserLanguageModel languageModel)
        addNewLanguageSuccess,
  }) {
    return addNewSkillSuccess(skillModel);
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
    TResult? Function(UserSkillModel skillModel)? addNewSkillSuccess,
    TResult? Function(UserLanguageModel languageModel)? addNewLanguageSuccess,
  }) {
    return addNewSkillSuccess?.call(skillModel);
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
    TResult Function(UserSkillModel skillModel)? addNewSkillSuccess,
    TResult Function(UserLanguageModel languageModel)? addNewLanguageSuccess,
    required TResult orElse(),
  }) {
    if (addNewSkillSuccess != null) {
      return addNewSkillSuccess(skillModel);
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
    required TResult Function(EditProfileAddNewSkillSuccess value)
        addNewSkillSuccess,
    required TResult Function(EditProfileAddNewLanguageSuccess value)
        addNewLanguageSuccess,
  }) {
    return addNewSkillSuccess(this);
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
    TResult? Function(EditProfileAddNewSkillSuccess value)? addNewSkillSuccess,
    TResult? Function(EditProfileAddNewLanguageSuccess value)?
        addNewLanguageSuccess,
  }) {
    return addNewSkillSuccess?.call(this);
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
    TResult Function(EditProfileAddNewSkillSuccess value)? addNewSkillSuccess,
    TResult Function(EditProfileAddNewLanguageSuccess value)?
        addNewLanguageSuccess,
    required TResult orElse(),
  }) {
    if (addNewSkillSuccess != null) {
      return addNewSkillSuccess(this);
    }
    return orElse();
  }
}

abstract class EditProfileAddNewSkillSuccess implements EditProfileState {
  const factory EditProfileAddNewSkillSuccess(final UserSkillModel skillModel) =
      _$EditProfileAddNewSkillSuccessImpl;

  UserSkillModel get skillModel;
  @JsonKey(ignore: true)
  _$$EditProfileAddNewSkillSuccessImplCopyWith<
          _$EditProfileAddNewSkillSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProfileAddNewLanguageSuccessImplCopyWith<$Res> {
  factory _$$EditProfileAddNewLanguageSuccessImplCopyWith(
          _$EditProfileAddNewLanguageSuccessImpl value,
          $Res Function(_$EditProfileAddNewLanguageSuccessImpl) then) =
      __$$EditProfileAddNewLanguageSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserLanguageModel languageModel});

  $UserLanguageModelCopyWith<$Res> get languageModel;
}

/// @nodoc
class __$$EditProfileAddNewLanguageSuccessImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res,
        _$EditProfileAddNewLanguageSuccessImpl>
    implements _$$EditProfileAddNewLanguageSuccessImplCopyWith<$Res> {
  __$$EditProfileAddNewLanguageSuccessImplCopyWithImpl(
      _$EditProfileAddNewLanguageSuccessImpl _value,
      $Res Function(_$EditProfileAddNewLanguageSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageModel = null,
  }) {
    return _then(_$EditProfileAddNewLanguageSuccessImpl(
      null == languageModel
          ? _value.languageModel
          : languageModel // ignore: cast_nullable_to_non_nullable
              as UserLanguageModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserLanguageModelCopyWith<$Res> get languageModel {
    return $UserLanguageModelCopyWith<$Res>(_value.languageModel, (value) {
      return _then(_value.copyWith(languageModel: value));
    });
  }
}

/// @nodoc

class _$EditProfileAddNewLanguageSuccessImpl
    implements EditProfileAddNewLanguageSuccess {
  const _$EditProfileAddNewLanguageSuccessImpl(this.languageModel);

  @override
  final UserLanguageModel languageModel;

  @override
  String toString() {
    return 'EditProfileState.addNewLanguageSuccess(languageModel: $languageModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileAddNewLanguageSuccessImpl &&
            (identical(other.languageModel, languageModel) ||
                other.languageModel == languageModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, languageModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileAddNewLanguageSuccessImplCopyWith<
          _$EditProfileAddNewLanguageSuccessImpl>
      get copyWith => __$$EditProfileAddNewLanguageSuccessImplCopyWithImpl<
          _$EditProfileAddNewLanguageSuccessImpl>(this, _$identity);

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
    required TResult Function(UserSkillModel skillModel) addNewSkillSuccess,
    required TResult Function(UserLanguageModel languageModel)
        addNewLanguageSuccess,
  }) {
    return addNewLanguageSuccess(languageModel);
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
    TResult? Function(UserSkillModel skillModel)? addNewSkillSuccess,
    TResult? Function(UserLanguageModel languageModel)? addNewLanguageSuccess,
  }) {
    return addNewLanguageSuccess?.call(languageModel);
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
    TResult Function(UserSkillModel skillModel)? addNewSkillSuccess,
    TResult Function(UserLanguageModel languageModel)? addNewLanguageSuccess,
    required TResult orElse(),
  }) {
    if (addNewLanguageSuccess != null) {
      return addNewLanguageSuccess(languageModel);
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
    required TResult Function(EditProfileAddNewSkillSuccess value)
        addNewSkillSuccess,
    required TResult Function(EditProfileAddNewLanguageSuccess value)
        addNewLanguageSuccess,
  }) {
    return addNewLanguageSuccess(this);
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
    TResult? Function(EditProfileAddNewSkillSuccess value)? addNewSkillSuccess,
    TResult? Function(EditProfileAddNewLanguageSuccess value)?
        addNewLanguageSuccess,
  }) {
    return addNewLanguageSuccess?.call(this);
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
    TResult Function(EditProfileAddNewSkillSuccess value)? addNewSkillSuccess,
    TResult Function(EditProfileAddNewLanguageSuccess value)?
        addNewLanguageSuccess,
    required TResult orElse(),
  }) {
    if (addNewLanguageSuccess != null) {
      return addNewLanguageSuccess(this);
    }
    return orElse();
  }
}

abstract class EditProfileAddNewLanguageSuccess implements EditProfileState {
  const factory EditProfileAddNewLanguageSuccess(
          final UserLanguageModel languageModel) =
      _$EditProfileAddNewLanguageSuccessImpl;

  UserLanguageModel get languageModel;
  @JsonKey(ignore: true)
  _$$EditProfileAddNewLanguageSuccessImplCopyWith<
          _$EditProfileAddNewLanguageSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
