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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserinfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserinfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProfileGetUserInfo value) getUserinfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ProfileGetUserInfo value)? getUserinfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProfileGetUserInfo value)? getUserinfo,
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
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserinfo,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserinfo,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ProfileGetUserInfo value)? getUserinfo,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProfileGetUserInfo value)? getUserinfo,
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
  }) {
    return getUserinfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserinfo,
  }) {
    return getUserinfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
    required TResult Function(_Started value) started,
    required TResult Function(ProfileGetUserInfo value) getUserinfo,
  }) {
    return getUserinfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ProfileGetUserInfo value)? getUserinfo,
  }) {
    return getUserinfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProfileGetUserInfo value)? getUserinfo,
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
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message, String title) error,
    required TResult Function() loading,
    required TResult Function(UserInfoModel userInfoModel) getUserInfoSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message, String title)? error,
    TResult? Function()? loading,
    TResult? Function(UserInfoModel userInfoModel)? getUserInfoSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message, String title)? error,
    TResult Function()? loading,
    TResult Function(UserInfoModel userInfoModel)? getUserInfoSuccess,
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileError value)? error,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileGetUserInfoSuccess value)? getUserInfoSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileError value)? error,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileGetUserInfoSuccess value)? getUserInfoSuccess,
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
