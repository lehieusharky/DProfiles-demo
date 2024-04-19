// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
    required TResult Function() deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
    TResult? Function()? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardLogOut value) logout,
    required TResult Function(DashboardDeleteAccount value) deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardLogOut value)? logout,
    TResult? Function(DashboardDeleteAccount value)? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardLogOut value)? logout,
    TResult Function(DashboardDeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
          DashboardEvent value, $Res Function(DashboardEvent) then) =
      _$DashboardEventCopyWithImpl<$Res, DashboardEvent>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res, $Val extends DashboardEvent>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DashboardLogOutImplCopyWith<$Res> {
  factory _$$DashboardLogOutImplCopyWith(_$DashboardLogOutImpl value,
          $Res Function(_$DashboardLogOutImpl) then) =
      __$$DashboardLogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardLogOutImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$DashboardLogOutImpl>
    implements _$$DashboardLogOutImplCopyWith<$Res> {
  __$$DashboardLogOutImplCopyWithImpl(
      _$DashboardLogOutImpl _value, $Res Function(_$DashboardLogOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DashboardLogOutImpl implements DashboardLogOut {
  const _$DashboardLogOutImpl();

  @override
  String toString() {
    return 'DashboardEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DashboardLogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
    required TResult Function() deleteAccount,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
    TResult? Function()? deleteAccount,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardLogOut value) logout,
    required TResult Function(DashboardDeleteAccount value) deleteAccount,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardLogOut value)? logout,
    TResult? Function(DashboardDeleteAccount value)? deleteAccount,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardLogOut value)? logout,
    TResult Function(DashboardDeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class DashboardLogOut implements DashboardEvent {
  const factory DashboardLogOut() = _$DashboardLogOutImpl;
}

/// @nodoc
abstract class _$$DashboardDeleteAccountImplCopyWith<$Res> {
  factory _$$DashboardDeleteAccountImplCopyWith(
          _$DashboardDeleteAccountImpl value,
          $Res Function(_$DashboardDeleteAccountImpl) then) =
      __$$DashboardDeleteAccountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardDeleteAccountImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$DashboardDeleteAccountImpl>
    implements _$$DashboardDeleteAccountImplCopyWith<$Res> {
  __$$DashboardDeleteAccountImplCopyWithImpl(
      _$DashboardDeleteAccountImpl _value,
      $Res Function(_$DashboardDeleteAccountImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DashboardDeleteAccountImpl implements DashboardDeleteAccount {
  const _$DashboardDeleteAccountImpl();

  @override
  String toString() {
    return 'DashboardEvent.deleteAccount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardDeleteAccountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
    required TResult Function() deleteAccount,
  }) {
    return deleteAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
    TResult? Function()? deleteAccount,
  }) {
    return deleteAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardLogOut value) logout,
    required TResult Function(DashboardDeleteAccount value) deleteAccount,
  }) {
    return deleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardLogOut value)? logout,
    TResult? Function(DashboardDeleteAccount value)? deleteAccount,
  }) {
    return deleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardLogOut value)? logout,
    TResult Function(DashboardDeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(this);
    }
    return orElse();
  }
}

abstract class DashboardDeleteAccount implements DashboardEvent {
  const factory DashboardDeleteAccount() = _$DashboardDeleteAccountImpl;
}

/// @nodoc
mixin _$DashboardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() logoutSuccess,
    required TResult Function() deleteAccountSuccess,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? logoutSuccess,
    TResult? Function()? deleteAccountSuccess,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? logoutSuccess,
    TResult Function()? deleteAccountSuccess,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DashboardLogOutSuccess value) logoutSuccess,
    required TResult Function(DashboardDeleteAccountSuccess value)
        deleteAccountSuccess,
    required TResult Function(DashboardLoading value) loading,
    required TResult Function(DashboardError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DashboardLogOutSuccess value)? logoutSuccess,
    TResult? Function(DashboardDeleteAccountSuccess value)?
        deleteAccountSuccess,
    TResult? Function(DashboardLoading value)? loading,
    TResult? Function(DashboardError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DashboardLogOutSuccess value)? logoutSuccess,
    TResult Function(DashboardDeleteAccountSuccess value)? deleteAccountSuccess,
    TResult Function(DashboardLoading value)? loading,
    TResult Function(DashboardError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

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
    extends _$DashboardStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'DashboardState.initial()';
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
    required TResult Function() logoutSuccess,
    required TResult Function() deleteAccountSuccess,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? logoutSuccess,
    TResult? Function()? deleteAccountSuccess,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? logoutSuccess,
    TResult Function()? deleteAccountSuccess,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
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
    required TResult Function(DashboardLogOutSuccess value) logoutSuccess,
    required TResult Function(DashboardDeleteAccountSuccess value)
        deleteAccountSuccess,
    required TResult Function(DashboardLoading value) loading,
    required TResult Function(DashboardError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DashboardLogOutSuccess value)? logoutSuccess,
    TResult? Function(DashboardDeleteAccountSuccess value)?
        deleteAccountSuccess,
    TResult? Function(DashboardLoading value)? loading,
    TResult? Function(DashboardError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DashboardLogOutSuccess value)? logoutSuccess,
    TResult Function(DashboardDeleteAccountSuccess value)? deleteAccountSuccess,
    TResult Function(DashboardLoading value)? loading,
    TResult Function(DashboardError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DashboardState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$DashboardLogOutSuccessImplCopyWith<$Res> {
  factory _$$DashboardLogOutSuccessImplCopyWith(
          _$DashboardLogOutSuccessImpl value,
          $Res Function(_$DashboardLogOutSuccessImpl) then) =
      __$$DashboardLogOutSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardLogOutSuccessImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardLogOutSuccessImpl>
    implements _$$DashboardLogOutSuccessImplCopyWith<$Res> {
  __$$DashboardLogOutSuccessImplCopyWithImpl(
      _$DashboardLogOutSuccessImpl _value,
      $Res Function(_$DashboardLogOutSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DashboardLogOutSuccessImpl implements DashboardLogOutSuccess {
  const _$DashboardLogOutSuccessImpl();

  @override
  String toString() {
    return 'DashboardState.logoutSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardLogOutSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() logoutSuccess,
    required TResult Function() deleteAccountSuccess,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
  }) {
    return logoutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? logoutSuccess,
    TResult? Function()? deleteAccountSuccess,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
  }) {
    return logoutSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? logoutSuccess,
    TResult Function()? deleteAccountSuccess,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    required TResult orElse(),
  }) {
    if (logoutSuccess != null) {
      return logoutSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DashboardLogOutSuccess value) logoutSuccess,
    required TResult Function(DashboardDeleteAccountSuccess value)
        deleteAccountSuccess,
    required TResult Function(DashboardLoading value) loading,
    required TResult Function(DashboardError value) error,
  }) {
    return logoutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DashboardLogOutSuccess value)? logoutSuccess,
    TResult? Function(DashboardDeleteAccountSuccess value)?
        deleteAccountSuccess,
    TResult? Function(DashboardLoading value)? loading,
    TResult? Function(DashboardError value)? error,
  }) {
    return logoutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DashboardLogOutSuccess value)? logoutSuccess,
    TResult Function(DashboardDeleteAccountSuccess value)? deleteAccountSuccess,
    TResult Function(DashboardLoading value)? loading,
    TResult Function(DashboardError value)? error,
    required TResult orElse(),
  }) {
    if (logoutSuccess != null) {
      return logoutSuccess(this);
    }
    return orElse();
  }
}

abstract class DashboardLogOutSuccess implements DashboardState {
  const factory DashboardLogOutSuccess() = _$DashboardLogOutSuccessImpl;
}

/// @nodoc
abstract class _$$DashboardDeleteAccountSuccessImplCopyWith<$Res> {
  factory _$$DashboardDeleteAccountSuccessImplCopyWith(
          _$DashboardDeleteAccountSuccessImpl value,
          $Res Function(_$DashboardDeleteAccountSuccessImpl) then) =
      __$$DashboardDeleteAccountSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardDeleteAccountSuccessImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res,
        _$DashboardDeleteAccountSuccessImpl>
    implements _$$DashboardDeleteAccountSuccessImplCopyWith<$Res> {
  __$$DashboardDeleteAccountSuccessImplCopyWithImpl(
      _$DashboardDeleteAccountSuccessImpl _value,
      $Res Function(_$DashboardDeleteAccountSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DashboardDeleteAccountSuccessImpl
    implements DashboardDeleteAccountSuccess {
  const _$DashboardDeleteAccountSuccessImpl();

  @override
  String toString() {
    return 'DashboardState.deleteAccountSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardDeleteAccountSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() logoutSuccess,
    required TResult Function() deleteAccountSuccess,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
  }) {
    return deleteAccountSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? logoutSuccess,
    TResult? Function()? deleteAccountSuccess,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
  }) {
    return deleteAccountSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? logoutSuccess,
    TResult Function()? deleteAccountSuccess,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    required TResult orElse(),
  }) {
    if (deleteAccountSuccess != null) {
      return deleteAccountSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DashboardLogOutSuccess value) logoutSuccess,
    required TResult Function(DashboardDeleteAccountSuccess value)
        deleteAccountSuccess,
    required TResult Function(DashboardLoading value) loading,
    required TResult Function(DashboardError value) error,
  }) {
    return deleteAccountSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DashboardLogOutSuccess value)? logoutSuccess,
    TResult? Function(DashboardDeleteAccountSuccess value)?
        deleteAccountSuccess,
    TResult? Function(DashboardLoading value)? loading,
    TResult? Function(DashboardError value)? error,
  }) {
    return deleteAccountSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DashboardLogOutSuccess value)? logoutSuccess,
    TResult Function(DashboardDeleteAccountSuccess value)? deleteAccountSuccess,
    TResult Function(DashboardLoading value)? loading,
    TResult Function(DashboardError value)? error,
    required TResult orElse(),
  }) {
    if (deleteAccountSuccess != null) {
      return deleteAccountSuccess(this);
    }
    return orElse();
  }
}

abstract class DashboardDeleteAccountSuccess implements DashboardState {
  const factory DashboardDeleteAccountSuccess() =
      _$DashboardDeleteAccountSuccessImpl;
}

/// @nodoc
abstract class _$$DashboardLoadingImplCopyWith<$Res> {
  factory _$$DashboardLoadingImplCopyWith(_$DashboardLoadingImpl value,
          $Res Function(_$DashboardLoadingImpl) then) =
      __$$DashboardLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardLoadingImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardLoadingImpl>
    implements _$$DashboardLoadingImplCopyWith<$Res> {
  __$$DashboardLoadingImplCopyWithImpl(_$DashboardLoadingImpl _value,
      $Res Function(_$DashboardLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DashboardLoadingImpl implements DashboardLoading {
  const _$DashboardLoadingImpl();

  @override
  String toString() {
    return 'DashboardState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DashboardLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() logoutSuccess,
    required TResult Function() deleteAccountSuccess,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? logoutSuccess,
    TResult? Function()? deleteAccountSuccess,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? logoutSuccess,
    TResult Function()? deleteAccountSuccess,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
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
    required TResult Function(DashboardLogOutSuccess value) logoutSuccess,
    required TResult Function(DashboardDeleteAccountSuccess value)
        deleteAccountSuccess,
    required TResult Function(DashboardLoading value) loading,
    required TResult Function(DashboardError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DashboardLogOutSuccess value)? logoutSuccess,
    TResult? Function(DashboardDeleteAccountSuccess value)?
        deleteAccountSuccess,
    TResult? Function(DashboardLoading value)? loading,
    TResult? Function(DashboardError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DashboardLogOutSuccess value)? logoutSuccess,
    TResult Function(DashboardDeleteAccountSuccess value)? deleteAccountSuccess,
    TResult Function(DashboardLoading value)? loading,
    TResult Function(DashboardError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DashboardLoading implements DashboardState {
  const factory DashboardLoading() = _$DashboardLoadingImpl;
}

/// @nodoc
abstract class _$$DashboardErrorImplCopyWith<$Res> {
  factory _$$DashboardErrorImplCopyWith(_$DashboardErrorImpl value,
          $Res Function(_$DashboardErrorImpl) then) =
      __$$DashboardErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String msg});
}

/// @nodoc
class __$$DashboardErrorImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardErrorImpl>
    implements _$$DashboardErrorImplCopyWith<$Res> {
  __$$DashboardErrorImplCopyWithImpl(
      _$DashboardErrorImpl _value, $Res Function(_$DashboardErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? msg = null,
  }) {
    return _then(_$DashboardErrorImpl(
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

class _$DashboardErrorImpl implements DashboardError {
  const _$DashboardErrorImpl({required this.title, required this.msg});

  @override
  final String title;
  @override
  final String msg;

  @override
  String toString() {
    return 'DashboardState.error(title: $title, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardErrorImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardErrorImplCopyWith<_$DashboardErrorImpl> get copyWith =>
      __$$DashboardErrorImplCopyWithImpl<_$DashboardErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() logoutSuccess,
    required TResult Function() deleteAccountSuccess,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
  }) {
    return error(title, msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? logoutSuccess,
    TResult? Function()? deleteAccountSuccess,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
  }) {
    return error?.call(title, msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? logoutSuccess,
    TResult Function()? deleteAccountSuccess,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
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
    required TResult Function(DashboardLogOutSuccess value) logoutSuccess,
    required TResult Function(DashboardDeleteAccountSuccess value)
        deleteAccountSuccess,
    required TResult Function(DashboardLoading value) loading,
    required TResult Function(DashboardError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DashboardLogOutSuccess value)? logoutSuccess,
    TResult? Function(DashboardDeleteAccountSuccess value)?
        deleteAccountSuccess,
    TResult? Function(DashboardLoading value)? loading,
    TResult? Function(DashboardError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DashboardLogOutSuccess value)? logoutSuccess,
    TResult Function(DashboardDeleteAccountSuccess value)? deleteAccountSuccess,
    TResult Function(DashboardLoading value)? loading,
    TResult Function(DashboardError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DashboardError implements DashboardState {
  const factory DashboardError(
      {required final String title,
      required final String msg}) = _$DashboardErrorImpl;

  String get title;
  String get msg;
  @JsonKey(ignore: true)
  _$$DashboardErrorImplCopyWith<_$DashboardErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
