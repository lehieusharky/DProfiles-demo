// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFeeds,
    required TResult Function() refreshNewsFeed,
    required TResult Function() loadMoreNewsFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFeeds,
    TResult? Function()? refreshNewsFeed,
    TResult? Function()? loadMoreNewsFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFeeds,
    TResult Function()? refreshNewsFeed,
    TResult Function()? loadMoreNewsFeed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeGetFeeds value) getFeeds,
    required TResult Function(HomeRefreshNewsFeed value) refreshNewsFeed,
    required TResult Function(HomeLoadMoreNewsFeed value) loadMoreNewsFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeGetFeeds value)? getFeeds,
    TResult? Function(HomeRefreshNewsFeed value)? refreshNewsFeed,
    TResult? Function(HomeLoadMoreNewsFeed value)? loadMoreNewsFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeGetFeeds value)? getFeeds,
    TResult Function(HomeRefreshNewsFeed value)? refreshNewsFeed,
    TResult Function(HomeLoadMoreNewsFeed value)? loadMoreNewsFeed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeGetFeedsImplCopyWith<$Res> {
  factory _$$HomeGetFeedsImplCopyWith(
          _$HomeGetFeedsImpl value, $Res Function(_$HomeGetFeedsImpl) then) =
      __$$HomeGetFeedsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeGetFeedsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeGetFeedsImpl>
    implements _$$HomeGetFeedsImplCopyWith<$Res> {
  __$$HomeGetFeedsImplCopyWithImpl(
      _$HomeGetFeedsImpl _value, $Res Function(_$HomeGetFeedsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeGetFeedsImpl implements HomeGetFeeds {
  const _$HomeGetFeedsImpl();

  @override
  String toString() {
    return 'HomeEvent.getFeeds()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeGetFeedsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFeeds,
    required TResult Function() refreshNewsFeed,
    required TResult Function() loadMoreNewsFeed,
  }) {
    return getFeeds();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFeeds,
    TResult? Function()? refreshNewsFeed,
    TResult? Function()? loadMoreNewsFeed,
  }) {
    return getFeeds?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFeeds,
    TResult Function()? refreshNewsFeed,
    TResult Function()? loadMoreNewsFeed,
    required TResult orElse(),
  }) {
    if (getFeeds != null) {
      return getFeeds();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeGetFeeds value) getFeeds,
    required TResult Function(HomeRefreshNewsFeed value) refreshNewsFeed,
    required TResult Function(HomeLoadMoreNewsFeed value) loadMoreNewsFeed,
  }) {
    return getFeeds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeGetFeeds value)? getFeeds,
    TResult? Function(HomeRefreshNewsFeed value)? refreshNewsFeed,
    TResult? Function(HomeLoadMoreNewsFeed value)? loadMoreNewsFeed,
  }) {
    return getFeeds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeGetFeeds value)? getFeeds,
    TResult Function(HomeRefreshNewsFeed value)? refreshNewsFeed,
    TResult Function(HomeLoadMoreNewsFeed value)? loadMoreNewsFeed,
    required TResult orElse(),
  }) {
    if (getFeeds != null) {
      return getFeeds(this);
    }
    return orElse();
  }
}

abstract class HomeGetFeeds implements HomeEvent {
  const factory HomeGetFeeds() = _$HomeGetFeedsImpl;
}

/// @nodoc
abstract class _$$HomeRefreshNewsFeedImplCopyWith<$Res> {
  factory _$$HomeRefreshNewsFeedImplCopyWith(_$HomeRefreshNewsFeedImpl value,
          $Res Function(_$HomeRefreshNewsFeedImpl) then) =
      __$$HomeRefreshNewsFeedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeRefreshNewsFeedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeRefreshNewsFeedImpl>
    implements _$$HomeRefreshNewsFeedImplCopyWith<$Res> {
  __$$HomeRefreshNewsFeedImplCopyWithImpl(_$HomeRefreshNewsFeedImpl _value,
      $Res Function(_$HomeRefreshNewsFeedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeRefreshNewsFeedImpl implements HomeRefreshNewsFeed {
  const _$HomeRefreshNewsFeedImpl();

  @override
  String toString() {
    return 'HomeEvent.refreshNewsFeed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeRefreshNewsFeedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFeeds,
    required TResult Function() refreshNewsFeed,
    required TResult Function() loadMoreNewsFeed,
  }) {
    return refreshNewsFeed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFeeds,
    TResult? Function()? refreshNewsFeed,
    TResult? Function()? loadMoreNewsFeed,
  }) {
    return refreshNewsFeed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFeeds,
    TResult Function()? refreshNewsFeed,
    TResult Function()? loadMoreNewsFeed,
    required TResult orElse(),
  }) {
    if (refreshNewsFeed != null) {
      return refreshNewsFeed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeGetFeeds value) getFeeds,
    required TResult Function(HomeRefreshNewsFeed value) refreshNewsFeed,
    required TResult Function(HomeLoadMoreNewsFeed value) loadMoreNewsFeed,
  }) {
    return refreshNewsFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeGetFeeds value)? getFeeds,
    TResult? Function(HomeRefreshNewsFeed value)? refreshNewsFeed,
    TResult? Function(HomeLoadMoreNewsFeed value)? loadMoreNewsFeed,
  }) {
    return refreshNewsFeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeGetFeeds value)? getFeeds,
    TResult Function(HomeRefreshNewsFeed value)? refreshNewsFeed,
    TResult Function(HomeLoadMoreNewsFeed value)? loadMoreNewsFeed,
    required TResult orElse(),
  }) {
    if (refreshNewsFeed != null) {
      return refreshNewsFeed(this);
    }
    return orElse();
  }
}

abstract class HomeRefreshNewsFeed implements HomeEvent {
  const factory HomeRefreshNewsFeed() = _$HomeRefreshNewsFeedImpl;
}

/// @nodoc
abstract class _$$HomeLoadMoreNewsFeedImplCopyWith<$Res> {
  factory _$$HomeLoadMoreNewsFeedImplCopyWith(_$HomeLoadMoreNewsFeedImpl value,
          $Res Function(_$HomeLoadMoreNewsFeedImpl) then) =
      __$$HomeLoadMoreNewsFeedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeLoadMoreNewsFeedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeLoadMoreNewsFeedImpl>
    implements _$$HomeLoadMoreNewsFeedImplCopyWith<$Res> {
  __$$HomeLoadMoreNewsFeedImplCopyWithImpl(_$HomeLoadMoreNewsFeedImpl _value,
      $Res Function(_$HomeLoadMoreNewsFeedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeLoadMoreNewsFeedImpl implements HomeLoadMoreNewsFeed {
  const _$HomeLoadMoreNewsFeedImpl();

  @override
  String toString() {
    return 'HomeEvent.loadMoreNewsFeed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeLoadMoreNewsFeedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFeeds,
    required TResult Function() refreshNewsFeed,
    required TResult Function() loadMoreNewsFeed,
  }) {
    return loadMoreNewsFeed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFeeds,
    TResult? Function()? refreshNewsFeed,
    TResult? Function()? loadMoreNewsFeed,
  }) {
    return loadMoreNewsFeed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFeeds,
    TResult Function()? refreshNewsFeed,
    TResult Function()? loadMoreNewsFeed,
    required TResult orElse(),
  }) {
    if (loadMoreNewsFeed != null) {
      return loadMoreNewsFeed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeGetFeeds value) getFeeds,
    required TResult Function(HomeRefreshNewsFeed value) refreshNewsFeed,
    required TResult Function(HomeLoadMoreNewsFeed value) loadMoreNewsFeed,
  }) {
    return loadMoreNewsFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeGetFeeds value)? getFeeds,
    TResult? Function(HomeRefreshNewsFeed value)? refreshNewsFeed,
    TResult? Function(HomeLoadMoreNewsFeed value)? loadMoreNewsFeed,
  }) {
    return loadMoreNewsFeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeGetFeeds value)? getFeeds,
    TResult Function(HomeRefreshNewsFeed value)? refreshNewsFeed,
    TResult Function(HomeLoadMoreNewsFeed value)? loadMoreNewsFeed,
    required TResult orElse(),
  }) {
    if (loadMoreNewsFeed != null) {
      return loadMoreNewsFeed(this);
    }
    return orElse();
  }
}

abstract class HomeLoadMoreNewsFeed implements HomeEvent {
  const factory HomeLoadMoreNewsFeed() = _$HomeLoadMoreNewsFeedImpl;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, String title) error,
    required TResult Function(List<NewFeedModel> newsFeed) getFeedsSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String title)? error,
    TResult? Function(List<NewFeedModel> newsFeed)? getFeedsSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String title)? error,
    TResult Function(List<NewFeedModel> newsFeed)? getFeedsSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeLoading value) loading,
    required TResult Function(HomeError value) error,
    required TResult Function(HomeGetFeedsSuccess value) getFeedsSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeLoading value)? loading,
    TResult? Function(HomeError value)? error,
    TResult? Function(HomeGetFeedsSuccess value)? getFeedsSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeLoading value)? loading,
    TResult Function(HomeError value)? error,
    TResult Function(HomeGetFeedsSuccess value)? getFeedsSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

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
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'HomeState.initial()';
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
    required TResult Function(String message, String title) error,
    required TResult Function(List<NewFeedModel> newsFeed) getFeedsSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String title)? error,
    TResult? Function(List<NewFeedModel> newsFeed)? getFeedsSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String title)? error,
    TResult Function(List<NewFeedModel> newsFeed)? getFeedsSuccess,
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
    required TResult Function(HomeLoading value) loading,
    required TResult Function(HomeError value) error,
    required TResult Function(HomeGetFeedsSuccess value) getFeedsSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeLoading value)? loading,
    TResult? Function(HomeError value)? error,
    TResult? Function(HomeGetFeedsSuccess value)? getFeedsSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeLoading value)? loading,
    TResult Function(HomeError value)? error,
    TResult Function(HomeGetFeedsSuccess value)? getFeedsSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$HomeLoadingImplCopyWith<$Res> {
  factory _$$HomeLoadingImplCopyWith(
          _$HomeLoadingImpl value, $Res Function(_$HomeLoadingImpl) then) =
      __$$HomeLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoadingImpl>
    implements _$$HomeLoadingImplCopyWith<$Res> {
  __$$HomeLoadingImplCopyWithImpl(
      _$HomeLoadingImpl _value, $Res Function(_$HomeLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeLoadingImpl implements HomeLoading {
  const _$HomeLoadingImpl();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, String title) error,
    required TResult Function(List<NewFeedModel> newsFeed) getFeedsSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String title)? error,
    TResult? Function(List<NewFeedModel> newsFeed)? getFeedsSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String title)? error,
    TResult Function(List<NewFeedModel> newsFeed)? getFeedsSuccess,
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
    required TResult Function(HomeLoading value) loading,
    required TResult Function(HomeError value) error,
    required TResult Function(HomeGetFeedsSuccess value) getFeedsSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeLoading value)? loading,
    TResult? Function(HomeError value)? error,
    TResult? Function(HomeGetFeedsSuccess value)? getFeedsSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeLoading value)? loading,
    TResult Function(HomeError value)? error,
    TResult Function(HomeGetFeedsSuccess value)? getFeedsSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeLoading implements HomeState {
  const factory HomeLoading() = _$HomeLoadingImpl;
}

/// @nodoc
abstract class _$$HomeErrorImplCopyWith<$Res> {
  factory _$$HomeErrorImplCopyWith(
          _$HomeErrorImpl value, $Res Function(_$HomeErrorImpl) then) =
      __$$HomeErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String title});
}

/// @nodoc
class __$$HomeErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeErrorImpl>
    implements _$$HomeErrorImplCopyWith<$Res> {
  __$$HomeErrorImplCopyWithImpl(
      _$HomeErrorImpl _value, $Res Function(_$HomeErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? title = null,
  }) {
    return _then(_$HomeErrorImpl(
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

class _$HomeErrorImpl implements HomeError {
  const _$HomeErrorImpl({required this.message, required this.title});

  @override
  final String message;
  @override
  final String title;

  @override
  String toString() {
    return 'HomeState.error(message: $message, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeErrorImplCopyWith<_$HomeErrorImpl> get copyWith =>
      __$$HomeErrorImplCopyWithImpl<_$HomeErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, String title) error,
    required TResult Function(List<NewFeedModel> newsFeed) getFeedsSuccess,
  }) {
    return error(message, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String title)? error,
    TResult? Function(List<NewFeedModel> newsFeed)? getFeedsSuccess,
  }) {
    return error?.call(message, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String title)? error,
    TResult Function(List<NewFeedModel> newsFeed)? getFeedsSuccess,
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
    required TResult Function(HomeLoading value) loading,
    required TResult Function(HomeError value) error,
    required TResult Function(HomeGetFeedsSuccess value) getFeedsSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeLoading value)? loading,
    TResult? Function(HomeError value)? error,
    TResult? Function(HomeGetFeedsSuccess value)? getFeedsSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeLoading value)? loading,
    TResult Function(HomeError value)? error,
    TResult Function(HomeGetFeedsSuccess value)? getFeedsSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HomeError implements HomeState {
  const factory HomeError(
      {required final String message,
      required final String title}) = _$HomeErrorImpl;

  String get message;
  String get title;
  @JsonKey(ignore: true)
  _$$HomeErrorImplCopyWith<_$HomeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeGetFeedsSuccessImplCopyWith<$Res> {
  factory _$$HomeGetFeedsSuccessImplCopyWith(_$HomeGetFeedsSuccessImpl value,
          $Res Function(_$HomeGetFeedsSuccessImpl) then) =
      __$$HomeGetFeedsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NewFeedModel> newsFeed});
}

/// @nodoc
class __$$HomeGetFeedsSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeGetFeedsSuccessImpl>
    implements _$$HomeGetFeedsSuccessImplCopyWith<$Res> {
  __$$HomeGetFeedsSuccessImplCopyWithImpl(_$HomeGetFeedsSuccessImpl _value,
      $Res Function(_$HomeGetFeedsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newsFeed = null,
  }) {
    return _then(_$HomeGetFeedsSuccessImpl(
      null == newsFeed
          ? _value._newsFeed
          : newsFeed // ignore: cast_nullable_to_non_nullable
              as List<NewFeedModel>,
    ));
  }
}

/// @nodoc

class _$HomeGetFeedsSuccessImpl implements HomeGetFeedsSuccess {
  const _$HomeGetFeedsSuccessImpl(final List<NewFeedModel> newsFeed)
      : _newsFeed = newsFeed;

  final List<NewFeedModel> _newsFeed;
  @override
  List<NewFeedModel> get newsFeed {
    if (_newsFeed is EqualUnmodifiableListView) return _newsFeed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newsFeed);
  }

  @override
  String toString() {
    return 'HomeState.getFeedsSuccess(newsFeed: $newsFeed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeGetFeedsSuccessImpl &&
            const DeepCollectionEquality().equals(other._newsFeed, _newsFeed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_newsFeed));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeGetFeedsSuccessImplCopyWith<_$HomeGetFeedsSuccessImpl> get copyWith =>
      __$$HomeGetFeedsSuccessImplCopyWithImpl<_$HomeGetFeedsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, String title) error,
    required TResult Function(List<NewFeedModel> newsFeed) getFeedsSuccess,
  }) {
    return getFeedsSuccess(newsFeed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, String title)? error,
    TResult? Function(List<NewFeedModel> newsFeed)? getFeedsSuccess,
  }) {
    return getFeedsSuccess?.call(newsFeed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, String title)? error,
    TResult Function(List<NewFeedModel> newsFeed)? getFeedsSuccess,
    required TResult orElse(),
  }) {
    if (getFeedsSuccess != null) {
      return getFeedsSuccess(newsFeed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeLoading value) loading,
    required TResult Function(HomeError value) error,
    required TResult Function(HomeGetFeedsSuccess value) getFeedsSuccess,
  }) {
    return getFeedsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeLoading value)? loading,
    TResult? Function(HomeError value)? error,
    TResult? Function(HomeGetFeedsSuccess value)? getFeedsSuccess,
  }) {
    return getFeedsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeLoading value)? loading,
    TResult Function(HomeError value)? error,
    TResult Function(HomeGetFeedsSuccess value)? getFeedsSuccess,
    required TResult orElse(),
  }) {
    if (getFeedsSuccess != null) {
      return getFeedsSuccess(this);
    }
    return orElse();
  }
}

abstract class HomeGetFeedsSuccess implements HomeState {
  const factory HomeGetFeedsSuccess(final List<NewFeedModel> newsFeed) =
      _$HomeGetFeedsSuccessImpl;

  List<NewFeedModel> get newsFeed;
  @JsonKey(ignore: true)
  _$$HomeGetFeedsSuccessImplCopyWith<_$HomeGetFeedsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
