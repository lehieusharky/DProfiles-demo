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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? getBasicInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? getBasicInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PublicProfileGetBasicInfo value) getBasicInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PublicProfileGetBasicInfo value)? getBasicInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PublicProfileGetBasicInfo value)? getBasicInfo,
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
  }) {
    return getBasicInfo(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? getBasicInfo,
  }) {
    return getBasicInfo?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? getBasicInfo,
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
  }) {
    return getBasicInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PublicProfileGetBasicInfo value)? getBasicInfo,
  }) {
    return getBasicInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PublicProfileGetBasicInfo value)? getBasicInfo,
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
mixin _$PublicProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
    required TResult Function(PublicUserInfoModel userInfo) getBasicInfoSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
    TResult? Function(PublicUserInfoModel userInfo)? getBasicInfoSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    TResult Function(PublicUserInfoModel userInfo)? getBasicInfoSuccess,
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PublicProfileLoading value)? loading,
    TResult? Function(PublicProfileError value)? error,
    TResult? Function(PublicProfileGetBasicInfoSuccess value)?
        getBasicInfoSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PublicProfileLoading value)? loading,
    TResult Function(PublicProfileError value)? error,
    TResult Function(PublicProfileGetBasicInfoSuccess value)?
        getBasicInfoSuccess,
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
