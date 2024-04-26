// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? keyWord, int page, int? limit) searchBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? keyWord, int page, int? limit)? searchBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? keyWord, int page, int? limit)? searchBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SearchBarDoRequest value) searchBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SearchBarDoRequest value)? searchBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SearchBarDoRequest value)? searchBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

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
    extends _$SearchEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SearchEvent.started()';
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
    required TResult Function(String? keyWord, int page, int? limit) searchBar,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? keyWord, int page, int? limit)? searchBar,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? keyWord, int page, int? limit)? searchBar,
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
    required TResult Function(SearchBarDoRequest value) searchBar,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SearchBarDoRequest value)? searchBar,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SearchBarDoRequest value)? searchBar,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SearchEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SearchBarDoRequestImplCopyWith<$Res> {
  factory _$$SearchBarDoRequestImplCopyWith(_$SearchBarDoRequestImpl value,
          $Res Function(_$SearchBarDoRequestImpl) then) =
      __$$SearchBarDoRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? keyWord, int page, int? limit});
}

/// @nodoc
class __$$SearchBarDoRequestImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchBarDoRequestImpl>
    implements _$$SearchBarDoRequestImplCopyWith<$Res> {
  __$$SearchBarDoRequestImplCopyWithImpl(_$SearchBarDoRequestImpl _value,
      $Res Function(_$SearchBarDoRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyWord = freezed,
    Object? page = null,
    Object? limit = freezed,
  }) {
    return _then(_$SearchBarDoRequestImpl(
      keyWord: freezed == keyWord
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SearchBarDoRequestImpl implements SearchBarDoRequest {
  const _$SearchBarDoRequestImpl(
      {this.keyWord, required this.page, this.limit});

  @override
  final String? keyWord;
  @override
  final int page;
  @override
  final int? limit;

  @override
  String toString() {
    return 'SearchEvent.searchBar(keyWord: $keyWord, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchBarDoRequestImpl &&
            (identical(other.keyWord, keyWord) || other.keyWord == keyWord) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyWord, page, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchBarDoRequestImplCopyWith<_$SearchBarDoRequestImpl> get copyWith =>
      __$$SearchBarDoRequestImplCopyWithImpl<_$SearchBarDoRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? keyWord, int page, int? limit) searchBar,
  }) {
    return searchBar(keyWord, page, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? keyWord, int page, int? limit)? searchBar,
  }) {
    return searchBar?.call(keyWord, page, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? keyWord, int page, int? limit)? searchBar,
    required TResult orElse(),
  }) {
    if (searchBar != null) {
      return searchBar(keyWord, page, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SearchBarDoRequest value) searchBar,
  }) {
    return searchBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SearchBarDoRequest value)? searchBar,
  }) {
    return searchBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SearchBarDoRequest value)? searchBar,
    required TResult orElse(),
  }) {
    if (searchBar != null) {
      return searchBar(this);
    }
    return orElse();
  }
}

abstract class SearchBarDoRequest implements SearchEvent {
  const factory SearchBarDoRequest(
      {final String? keyWord,
      required final int page,
      final int? limit}) = _$SearchBarDoRequestImpl;

  String? get keyWord;
  int get page;
  int? get limit;
  @JsonKey(ignore: true)
  _$$SearchBarDoRequestImplCopyWith<_$SearchBarDoRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
    required TResult Function(List<SearchBarResultModel> result)
        searchBarSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
    TResult? Function(List<SearchBarResultModel> result)? searchBarSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    TResult Function(List<SearchBarResultModel> result)? searchBarSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchError value) error,
    required TResult Function(SearchBarDoRequestSuccess value) searchBarSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? loading,
    TResult? Function(SearchError value)? error,
    TResult? Function(SearchBarDoRequestSuccess value)? searchBarSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchError value)? error,
    TResult Function(SearchBarDoRequestSuccess value)? searchBarSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

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
    extends _$SearchStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SearchState.initial()';
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
    required TResult Function(List<SearchBarResultModel> result)
        searchBarSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
    TResult? Function(List<SearchBarResultModel> result)? searchBarSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    TResult Function(List<SearchBarResultModel> result)? searchBarSuccess,
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
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchError value) error,
    required TResult Function(SearchBarDoRequestSuccess value) searchBarSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? loading,
    TResult? Function(SearchError value)? error,
    TResult? Function(SearchBarDoRequestSuccess value)? searchBarSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchError value)? error,
    TResult Function(SearchBarDoRequestSuccess value)? searchBarSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SearchLoadingImplCopyWith<$Res> {
  factory _$$SearchLoadingImplCopyWith(
          _$SearchLoadingImpl value, $Res Function(_$SearchLoadingImpl) then) =
      __$$SearchLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchLoadingImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchLoadingImpl>
    implements _$$SearchLoadingImplCopyWith<$Res> {
  __$$SearchLoadingImplCopyWithImpl(
      _$SearchLoadingImpl _value, $Res Function(_$SearchLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchLoadingImpl implements SearchLoading {
  const _$SearchLoadingImpl();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
    required TResult Function(List<SearchBarResultModel> result)
        searchBarSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
    TResult? Function(List<SearchBarResultModel> result)? searchBarSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    TResult Function(List<SearchBarResultModel> result)? searchBarSuccess,
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
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchError value) error,
    required TResult Function(SearchBarDoRequestSuccess value) searchBarSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? loading,
    TResult? Function(SearchError value)? error,
    TResult? Function(SearchBarDoRequestSuccess value)? searchBarSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchError value)? error,
    TResult Function(SearchBarDoRequestSuccess value)? searchBarSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchLoading implements SearchState {
  const factory SearchLoading() = _$SearchLoadingImpl;
}

/// @nodoc
abstract class _$$SearchErrorImplCopyWith<$Res> {
  factory _$$SearchErrorImplCopyWith(
          _$SearchErrorImpl value, $Res Function(_$SearchErrorImpl) then) =
      __$$SearchErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String msg});
}

/// @nodoc
class __$$SearchErrorImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchErrorImpl>
    implements _$$SearchErrorImplCopyWith<$Res> {
  __$$SearchErrorImplCopyWithImpl(
      _$SearchErrorImpl _value, $Res Function(_$SearchErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? msg = null,
  }) {
    return _then(_$SearchErrorImpl(
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

class _$SearchErrorImpl implements SearchError {
  const _$SearchErrorImpl({required this.title, required this.msg});

  @override
  final String title;
  @override
  final String msg;

  @override
  String toString() {
    return 'SearchState.error(title: $title, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchErrorImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchErrorImplCopyWith<_$SearchErrorImpl> get copyWith =>
      __$$SearchErrorImplCopyWithImpl<_$SearchErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
    required TResult Function(List<SearchBarResultModel> result)
        searchBarSuccess,
  }) {
    return error(title, msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
    TResult? Function(List<SearchBarResultModel> result)? searchBarSuccess,
  }) {
    return error?.call(title, msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    TResult Function(List<SearchBarResultModel> result)? searchBarSuccess,
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
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchError value) error,
    required TResult Function(SearchBarDoRequestSuccess value) searchBarSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? loading,
    TResult? Function(SearchError value)? error,
    TResult? Function(SearchBarDoRequestSuccess value)? searchBarSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchError value)? error,
    TResult Function(SearchBarDoRequestSuccess value)? searchBarSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchError implements SearchState {
  const factory SearchError(
      {required final String title,
      required final String msg}) = _$SearchErrorImpl;

  String get title;
  String get msg;
  @JsonKey(ignore: true)
  _$$SearchErrorImplCopyWith<_$SearchErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchBarDoRequestSuccessImplCopyWith<$Res> {
  factory _$$SearchBarDoRequestSuccessImplCopyWith(
          _$SearchBarDoRequestSuccessImpl value,
          $Res Function(_$SearchBarDoRequestSuccessImpl) then) =
      __$$SearchBarDoRequestSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SearchBarResultModel> result});
}

/// @nodoc
class __$$SearchBarDoRequestSuccessImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchBarDoRequestSuccessImpl>
    implements _$$SearchBarDoRequestSuccessImplCopyWith<$Res> {
  __$$SearchBarDoRequestSuccessImplCopyWithImpl(
      _$SearchBarDoRequestSuccessImpl _value,
      $Res Function(_$SearchBarDoRequestSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$SearchBarDoRequestSuccessImpl(
      null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<SearchBarResultModel>,
    ));
  }
}

/// @nodoc

class _$SearchBarDoRequestSuccessImpl implements SearchBarDoRequestSuccess {
  const _$SearchBarDoRequestSuccessImpl(final List<SearchBarResultModel> result)
      : _result = result;

  final List<SearchBarResultModel> _result;
  @override
  List<SearchBarResultModel> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'SearchState.searchBarSuccess(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchBarDoRequestSuccessImpl &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchBarDoRequestSuccessImplCopyWith<_$SearchBarDoRequestSuccessImpl>
      get copyWith => __$$SearchBarDoRequestSuccessImplCopyWithImpl<
          _$SearchBarDoRequestSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
    required TResult Function(List<SearchBarResultModel> result)
        searchBarSuccess,
  }) {
    return searchBarSuccess(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
    TResult? Function(List<SearchBarResultModel> result)? searchBarSuccess,
  }) {
    return searchBarSuccess?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    TResult Function(List<SearchBarResultModel> result)? searchBarSuccess,
    required TResult orElse(),
  }) {
    if (searchBarSuccess != null) {
      return searchBarSuccess(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchError value) error,
    required TResult Function(SearchBarDoRequestSuccess value) searchBarSuccess,
  }) {
    return searchBarSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? loading,
    TResult? Function(SearchError value)? error,
    TResult? Function(SearchBarDoRequestSuccess value)? searchBarSuccess,
  }) {
    return searchBarSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchError value)? error,
    TResult Function(SearchBarDoRequestSuccess value)? searchBarSuccess,
    required TResult orElse(),
  }) {
    if (searchBarSuccess != null) {
      return searchBarSuccess(this);
    }
    return orElse();
  }
}

abstract class SearchBarDoRequestSuccess implements SearchState {
  const factory SearchBarDoRequestSuccess(
          final List<SearchBarResultModel> result) =
      _$SearchBarDoRequestSuccessImpl;

  List<SearchBarResultModel> get result;
  @JsonKey(ignore: true)
  _$$SearchBarDoRequestSuccessImplCopyWith<_$SearchBarDoRequestSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
