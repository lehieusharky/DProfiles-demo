// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_features_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AiFeaturesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAutoGenerateHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAutoGenerateHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAutoGenerateHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAutoGenerateHistory value)
        getAutoGenerateHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAutoGenerateHistory value)? getAutoGenerateHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAutoGenerateHistory value)? getAutoGenerateHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiFeaturesEventCopyWith<$Res> {
  factory $AiFeaturesEventCopyWith(
          AiFeaturesEvent value, $Res Function(AiFeaturesEvent) then) =
      _$AiFeaturesEventCopyWithImpl<$Res, AiFeaturesEvent>;
}

/// @nodoc
class _$AiFeaturesEventCopyWithImpl<$Res, $Val extends AiFeaturesEvent>
    implements $AiFeaturesEventCopyWith<$Res> {
  _$AiFeaturesEventCopyWithImpl(this._value, this._then);

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
    extends _$AiFeaturesEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'AiFeaturesEvent.started()';
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
    required TResult Function() getAutoGenerateHistory,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAutoGenerateHistory,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAutoGenerateHistory,
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
    required TResult Function(GetAutoGenerateHistory value)
        getAutoGenerateHistory,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAutoGenerateHistory value)? getAutoGenerateHistory,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAutoGenerateHistory value)? getAutoGenerateHistory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AiFeaturesEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetAutoGenerateHistoryImplCopyWith<$Res> {
  factory _$$GetAutoGenerateHistoryImplCopyWith(
          _$GetAutoGenerateHistoryImpl value,
          $Res Function(_$GetAutoGenerateHistoryImpl) then) =
      __$$GetAutoGenerateHistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAutoGenerateHistoryImplCopyWithImpl<$Res>
    extends _$AiFeaturesEventCopyWithImpl<$Res, _$GetAutoGenerateHistoryImpl>
    implements _$$GetAutoGenerateHistoryImplCopyWith<$Res> {
  __$$GetAutoGenerateHistoryImplCopyWithImpl(
      _$GetAutoGenerateHistoryImpl _value,
      $Res Function(_$GetAutoGenerateHistoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAutoGenerateHistoryImpl implements GetAutoGenerateHistory {
  const _$GetAutoGenerateHistoryImpl();

  @override
  String toString() {
    return 'AiFeaturesEvent.getAutoGenerateHistory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAutoGenerateHistoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAutoGenerateHistory,
  }) {
    return getAutoGenerateHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAutoGenerateHistory,
  }) {
    return getAutoGenerateHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAutoGenerateHistory,
    required TResult orElse(),
  }) {
    if (getAutoGenerateHistory != null) {
      return getAutoGenerateHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAutoGenerateHistory value)
        getAutoGenerateHistory,
  }) {
    return getAutoGenerateHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAutoGenerateHistory value)? getAutoGenerateHistory,
  }) {
    return getAutoGenerateHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAutoGenerateHistory value)? getAutoGenerateHistory,
    required TResult orElse(),
  }) {
    if (getAutoGenerateHistory != null) {
      return getAutoGenerateHistory(this);
    }
    return orElse();
  }
}

abstract class GetAutoGenerateHistory implements AiFeaturesEvent {
  const factory GetAutoGenerateHistory() = _$GetAutoGenerateHistoryImpl;
}

/// @nodoc
mixin _$AiFeaturesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message, String title) error,
    required TResult Function() loading,
    required TResult Function(
            List<AutoGenerateHistoryModel> autoGenerateHistories)
        getAutoGenerateHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message, String title)? error,
    TResult? Function()? loading,
    TResult? Function(List<AutoGenerateHistoryModel> autoGenerateHistories)?
        getAutoGenerateHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message, String title)? error,
    TResult Function()? loading,
    TResult Function(List<AutoGenerateHistoryModel> autoGenerateHistories)?
        getAutoGenerateHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AiFeaturesError value) error,
    required TResult Function(AiFeaturesLoading value) loading,
    required TResult Function(GetAutoGenerateHistorySuccess value)
        getAutoGenerateHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AiFeaturesError value)? error,
    TResult? Function(AiFeaturesLoading value)? loading,
    TResult? Function(GetAutoGenerateHistorySuccess value)?
        getAutoGenerateHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AiFeaturesError value)? error,
    TResult Function(AiFeaturesLoading value)? loading,
    TResult Function(GetAutoGenerateHistorySuccess value)?
        getAutoGenerateHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiFeaturesStateCopyWith<$Res> {
  factory $AiFeaturesStateCopyWith(
          AiFeaturesState value, $Res Function(AiFeaturesState) then) =
      _$AiFeaturesStateCopyWithImpl<$Res, AiFeaturesState>;
}

/// @nodoc
class _$AiFeaturesStateCopyWithImpl<$Res, $Val extends AiFeaturesState>
    implements $AiFeaturesStateCopyWith<$Res> {
  _$AiFeaturesStateCopyWithImpl(this._value, this._then);

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
    extends _$AiFeaturesStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AiFeaturesState.initial()';
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
    required TResult Function(
            List<AutoGenerateHistoryModel> autoGenerateHistories)
        getAutoGenerateHistory,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message, String title)? error,
    TResult? Function()? loading,
    TResult? Function(List<AutoGenerateHistoryModel> autoGenerateHistories)?
        getAutoGenerateHistory,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message, String title)? error,
    TResult Function()? loading,
    TResult Function(List<AutoGenerateHistoryModel> autoGenerateHistories)?
        getAutoGenerateHistory,
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
    required TResult Function(AiFeaturesError value) error,
    required TResult Function(AiFeaturesLoading value) loading,
    required TResult Function(GetAutoGenerateHistorySuccess value)
        getAutoGenerateHistory,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AiFeaturesError value)? error,
    TResult? Function(AiFeaturesLoading value)? loading,
    TResult? Function(GetAutoGenerateHistorySuccess value)?
        getAutoGenerateHistory,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AiFeaturesError value)? error,
    TResult Function(AiFeaturesLoading value)? loading,
    TResult Function(GetAutoGenerateHistorySuccess value)?
        getAutoGenerateHistory,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AiFeaturesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AiFeaturesErrorImplCopyWith<$Res> {
  factory _$$AiFeaturesErrorImplCopyWith(_$AiFeaturesErrorImpl value,
          $Res Function(_$AiFeaturesErrorImpl) then) =
      __$$AiFeaturesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String title});
}

/// @nodoc
class __$$AiFeaturesErrorImplCopyWithImpl<$Res>
    extends _$AiFeaturesStateCopyWithImpl<$Res, _$AiFeaturesErrorImpl>
    implements _$$AiFeaturesErrorImplCopyWith<$Res> {
  __$$AiFeaturesErrorImplCopyWithImpl(
      _$AiFeaturesErrorImpl _value, $Res Function(_$AiFeaturesErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? title = null,
  }) {
    return _then(_$AiFeaturesErrorImpl(
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

class _$AiFeaturesErrorImpl implements AiFeaturesError {
  const _$AiFeaturesErrorImpl({required this.message, required this.title});

  @override
  final String message;
  @override
  final String title;

  @override
  String toString() {
    return 'AiFeaturesState.error(message: $message, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiFeaturesErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AiFeaturesErrorImplCopyWith<_$AiFeaturesErrorImpl> get copyWith =>
      __$$AiFeaturesErrorImplCopyWithImpl<_$AiFeaturesErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message, String title) error,
    required TResult Function() loading,
    required TResult Function(
            List<AutoGenerateHistoryModel> autoGenerateHistories)
        getAutoGenerateHistory,
  }) {
    return error(message, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message, String title)? error,
    TResult? Function()? loading,
    TResult? Function(List<AutoGenerateHistoryModel> autoGenerateHistories)?
        getAutoGenerateHistory,
  }) {
    return error?.call(message, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message, String title)? error,
    TResult Function()? loading,
    TResult Function(List<AutoGenerateHistoryModel> autoGenerateHistories)?
        getAutoGenerateHistory,
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
    required TResult Function(AiFeaturesError value) error,
    required TResult Function(AiFeaturesLoading value) loading,
    required TResult Function(GetAutoGenerateHistorySuccess value)
        getAutoGenerateHistory,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AiFeaturesError value)? error,
    TResult? Function(AiFeaturesLoading value)? loading,
    TResult? Function(GetAutoGenerateHistorySuccess value)?
        getAutoGenerateHistory,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AiFeaturesError value)? error,
    TResult Function(AiFeaturesLoading value)? loading,
    TResult Function(GetAutoGenerateHistorySuccess value)?
        getAutoGenerateHistory,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AiFeaturesError implements AiFeaturesState {
  const factory AiFeaturesError(
      {required final String message,
      required final String title}) = _$AiFeaturesErrorImpl;

  String get message;
  String get title;
  @JsonKey(ignore: true)
  _$$AiFeaturesErrorImplCopyWith<_$AiFeaturesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AiFeaturesLoadingImplCopyWith<$Res> {
  factory _$$AiFeaturesLoadingImplCopyWith(_$AiFeaturesLoadingImpl value,
          $Res Function(_$AiFeaturesLoadingImpl) then) =
      __$$AiFeaturesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AiFeaturesLoadingImplCopyWithImpl<$Res>
    extends _$AiFeaturesStateCopyWithImpl<$Res, _$AiFeaturesLoadingImpl>
    implements _$$AiFeaturesLoadingImplCopyWith<$Res> {
  __$$AiFeaturesLoadingImplCopyWithImpl(_$AiFeaturesLoadingImpl _value,
      $Res Function(_$AiFeaturesLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AiFeaturesLoadingImpl implements AiFeaturesLoading {
  const _$AiFeaturesLoadingImpl();

  @override
  String toString() {
    return 'AiFeaturesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AiFeaturesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message, String title) error,
    required TResult Function() loading,
    required TResult Function(
            List<AutoGenerateHistoryModel> autoGenerateHistories)
        getAutoGenerateHistory,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message, String title)? error,
    TResult? Function()? loading,
    TResult? Function(List<AutoGenerateHistoryModel> autoGenerateHistories)?
        getAutoGenerateHistory,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message, String title)? error,
    TResult Function()? loading,
    TResult Function(List<AutoGenerateHistoryModel> autoGenerateHistories)?
        getAutoGenerateHistory,
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
    required TResult Function(AiFeaturesError value) error,
    required TResult Function(AiFeaturesLoading value) loading,
    required TResult Function(GetAutoGenerateHistorySuccess value)
        getAutoGenerateHistory,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AiFeaturesError value)? error,
    TResult? Function(AiFeaturesLoading value)? loading,
    TResult? Function(GetAutoGenerateHistorySuccess value)?
        getAutoGenerateHistory,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AiFeaturesError value)? error,
    TResult Function(AiFeaturesLoading value)? loading,
    TResult Function(GetAutoGenerateHistorySuccess value)?
        getAutoGenerateHistory,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AiFeaturesLoading implements AiFeaturesState {
  const factory AiFeaturesLoading() = _$AiFeaturesLoadingImpl;
}

/// @nodoc
abstract class _$$GetAutoGenerateHistorySuccessImplCopyWith<$Res> {
  factory _$$GetAutoGenerateHistorySuccessImplCopyWith(
          _$GetAutoGenerateHistorySuccessImpl value,
          $Res Function(_$GetAutoGenerateHistorySuccessImpl) then) =
      __$$GetAutoGenerateHistorySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AutoGenerateHistoryModel> autoGenerateHistories});
}

/// @nodoc
class __$$GetAutoGenerateHistorySuccessImplCopyWithImpl<$Res>
    extends _$AiFeaturesStateCopyWithImpl<$Res,
        _$GetAutoGenerateHistorySuccessImpl>
    implements _$$GetAutoGenerateHistorySuccessImplCopyWith<$Res> {
  __$$GetAutoGenerateHistorySuccessImplCopyWithImpl(
      _$GetAutoGenerateHistorySuccessImpl _value,
      $Res Function(_$GetAutoGenerateHistorySuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autoGenerateHistories = null,
  }) {
    return _then(_$GetAutoGenerateHistorySuccessImpl(
      null == autoGenerateHistories
          ? _value._autoGenerateHistories
          : autoGenerateHistories // ignore: cast_nullable_to_non_nullable
              as List<AutoGenerateHistoryModel>,
    ));
  }
}

/// @nodoc

class _$GetAutoGenerateHistorySuccessImpl
    implements GetAutoGenerateHistorySuccess {
  const _$GetAutoGenerateHistorySuccessImpl(
      final List<AutoGenerateHistoryModel> autoGenerateHistories)
      : _autoGenerateHistories = autoGenerateHistories;

  final List<AutoGenerateHistoryModel> _autoGenerateHistories;
  @override
  List<AutoGenerateHistoryModel> get autoGenerateHistories {
    if (_autoGenerateHistories is EqualUnmodifiableListView)
      return _autoGenerateHistories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_autoGenerateHistories);
  }

  @override
  String toString() {
    return 'AiFeaturesState.getAutoGenerateHistory(autoGenerateHistories: $autoGenerateHistories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAutoGenerateHistorySuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._autoGenerateHistories, _autoGenerateHistories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_autoGenerateHistories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAutoGenerateHistorySuccessImplCopyWith<
          _$GetAutoGenerateHistorySuccessImpl>
      get copyWith => __$$GetAutoGenerateHistorySuccessImplCopyWithImpl<
          _$GetAutoGenerateHistorySuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message, String title) error,
    required TResult Function() loading,
    required TResult Function(
            List<AutoGenerateHistoryModel> autoGenerateHistories)
        getAutoGenerateHistory,
  }) {
    return getAutoGenerateHistory(autoGenerateHistories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message, String title)? error,
    TResult? Function()? loading,
    TResult? Function(List<AutoGenerateHistoryModel> autoGenerateHistories)?
        getAutoGenerateHistory,
  }) {
    return getAutoGenerateHistory?.call(autoGenerateHistories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message, String title)? error,
    TResult Function()? loading,
    TResult Function(List<AutoGenerateHistoryModel> autoGenerateHistories)?
        getAutoGenerateHistory,
    required TResult orElse(),
  }) {
    if (getAutoGenerateHistory != null) {
      return getAutoGenerateHistory(autoGenerateHistories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AiFeaturesError value) error,
    required TResult Function(AiFeaturesLoading value) loading,
    required TResult Function(GetAutoGenerateHistorySuccess value)
        getAutoGenerateHistory,
  }) {
    return getAutoGenerateHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AiFeaturesError value)? error,
    TResult? Function(AiFeaturesLoading value)? loading,
    TResult? Function(GetAutoGenerateHistorySuccess value)?
        getAutoGenerateHistory,
  }) {
    return getAutoGenerateHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AiFeaturesError value)? error,
    TResult Function(AiFeaturesLoading value)? loading,
    TResult Function(GetAutoGenerateHistorySuccess value)?
        getAutoGenerateHistory,
    required TResult orElse(),
  }) {
    if (getAutoGenerateHistory != null) {
      return getAutoGenerateHistory(this);
    }
    return orElse();
  }
}

abstract class GetAutoGenerateHistorySuccess implements AiFeaturesState {
  const factory GetAutoGenerateHistorySuccess(
          final List<AutoGenerateHistoryModel> autoGenerateHistories) =
      _$GetAutoGenerateHistorySuccessImpl;

  List<AutoGenerateHistoryModel> get autoGenerateHistories;
  @JsonKey(ignore: true)
  _$$GetAutoGenerateHistorySuccessImplCopyWith<
          _$GetAutoGenerateHistorySuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
