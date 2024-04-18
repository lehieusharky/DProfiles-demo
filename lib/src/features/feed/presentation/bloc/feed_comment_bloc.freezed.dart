// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_comment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FeedCommentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int? parentComment) comment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int? parentComment)? comment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int? parentComment)? comment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeedCommentFetchEvent value) fetch,
    required TResult Function(FeedCommentCommentEvent value) comment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeedCommentFetchEvent value)? fetch,
    TResult? Function(FeedCommentCommentEvent value)? comment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeedCommentFetchEvent value)? fetch,
    TResult Function(FeedCommentCommentEvent value)? comment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedCommentEventCopyWith<$Res> {
  factory $FeedCommentEventCopyWith(
          FeedCommentEvent value, $Res Function(FeedCommentEvent) then) =
      _$FeedCommentEventCopyWithImpl<$Res, FeedCommentEvent>;
}

/// @nodoc
class _$FeedCommentEventCopyWithImpl<$Res, $Val extends FeedCommentEvent>
    implements $FeedCommentEventCopyWith<$Res> {
  _$FeedCommentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FeedCommentFetchEventImplCopyWith<$Res> {
  factory _$$FeedCommentFetchEventImplCopyWith(
          _$FeedCommentFetchEventImpl value,
          $Res Function(_$FeedCommentFetchEventImpl) then) =
      __$$FeedCommentFetchEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedCommentFetchEventImplCopyWithImpl<$Res>
    extends _$FeedCommentEventCopyWithImpl<$Res, _$FeedCommentFetchEventImpl>
    implements _$$FeedCommentFetchEventImplCopyWith<$Res> {
  __$$FeedCommentFetchEventImplCopyWithImpl(_$FeedCommentFetchEventImpl _value,
      $Res Function(_$FeedCommentFetchEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FeedCommentFetchEventImpl implements FeedCommentFetchEvent {
  const _$FeedCommentFetchEventImpl();

  @override
  String toString() {
    return 'FeedCommentEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedCommentFetchEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int? parentComment) comment,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int? parentComment)? comment,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int? parentComment)? comment,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeedCommentFetchEvent value) fetch,
    required TResult Function(FeedCommentCommentEvent value) comment,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeedCommentFetchEvent value)? fetch,
    TResult? Function(FeedCommentCommentEvent value)? comment,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeedCommentFetchEvent value)? fetch,
    TResult Function(FeedCommentCommentEvent value)? comment,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FeedCommentFetchEvent implements FeedCommentEvent {
  const factory FeedCommentFetchEvent() = _$FeedCommentFetchEventImpl;
}

/// @nodoc
abstract class _$$FeedCommentCommentEventImplCopyWith<$Res> {
  factory _$$FeedCommentCommentEventImplCopyWith(
          _$FeedCommentCommentEventImpl value,
          $Res Function(_$FeedCommentCommentEventImpl) then) =
      __$$FeedCommentCommentEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? parentComment});
}

/// @nodoc
class __$$FeedCommentCommentEventImplCopyWithImpl<$Res>
    extends _$FeedCommentEventCopyWithImpl<$Res, _$FeedCommentCommentEventImpl>
    implements _$$FeedCommentCommentEventImplCopyWith<$Res> {
  __$$FeedCommentCommentEventImplCopyWithImpl(
      _$FeedCommentCommentEventImpl _value,
      $Res Function(_$FeedCommentCommentEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentComment = freezed,
  }) {
    return _then(_$FeedCommentCommentEventImpl(
      parentComment: freezed == parentComment
          ? _value.parentComment
          : parentComment // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FeedCommentCommentEventImpl implements FeedCommentCommentEvent {
  const _$FeedCommentCommentEventImpl({this.parentComment});

  @override
  final int? parentComment;

  @override
  String toString() {
    return 'FeedCommentEvent.comment(parentComment: $parentComment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedCommentCommentEventImpl &&
            (identical(other.parentComment, parentComment) ||
                other.parentComment == parentComment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, parentComment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedCommentCommentEventImplCopyWith<_$FeedCommentCommentEventImpl>
      get copyWith => __$$FeedCommentCommentEventImplCopyWithImpl<
          _$FeedCommentCommentEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int? parentComment) comment,
  }) {
    return comment(parentComment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int? parentComment)? comment,
  }) {
    return comment?.call(parentComment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int? parentComment)? comment,
    required TResult orElse(),
  }) {
    if (comment != null) {
      return comment(parentComment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeedCommentFetchEvent value) fetch,
    required TResult Function(FeedCommentCommentEvent value) comment,
  }) {
    return comment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeedCommentFetchEvent value)? fetch,
    TResult? Function(FeedCommentCommentEvent value)? comment,
  }) {
    return comment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeedCommentFetchEvent value)? fetch,
    TResult Function(FeedCommentCommentEvent value)? comment,
    required TResult orElse(),
  }) {
    if (comment != null) {
      return comment(this);
    }
    return orElse();
  }
}

abstract class FeedCommentCommentEvent implements FeedCommentEvent {
  const factory FeedCommentCommentEvent({final int? parentComment}) =
      _$FeedCommentCommentEventImpl;

  int? get parentComment;
  @JsonKey(ignore: true)
  _$$FeedCommentCommentEventImplCopyWith<_$FeedCommentCommentEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FeedCommentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FeedCommentModel> comments) loaded,
    required TResult Function(String err) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FeedCommentModel> comments)? loaded,
    TResult? Function(String err)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FeedCommentModel> comments)? loaded,
    TResult Function(String err)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeedCommentInitial value) initial,
    required TResult Function(FeedCommentLoading value) loading,
    required TResult Function(FeedCommentLoaded value) loaded,
    required TResult Function(FeedCommentFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeedCommentInitial value)? initial,
    TResult? Function(FeedCommentLoading value)? loading,
    TResult? Function(FeedCommentLoaded value)? loaded,
    TResult? Function(FeedCommentFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeedCommentInitial value)? initial,
    TResult Function(FeedCommentLoading value)? loading,
    TResult Function(FeedCommentLoaded value)? loaded,
    TResult Function(FeedCommentFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedCommentStateCopyWith<$Res> {
  factory $FeedCommentStateCopyWith(
          FeedCommentState value, $Res Function(FeedCommentState) then) =
      _$FeedCommentStateCopyWithImpl<$Res, FeedCommentState>;
}

/// @nodoc
class _$FeedCommentStateCopyWithImpl<$Res, $Val extends FeedCommentState>
    implements $FeedCommentStateCopyWith<$Res> {
  _$FeedCommentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FeedCommentInitialImplCopyWith<$Res> {
  factory _$$FeedCommentInitialImplCopyWith(_$FeedCommentInitialImpl value,
          $Res Function(_$FeedCommentInitialImpl) then) =
      __$$FeedCommentInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedCommentInitialImplCopyWithImpl<$Res>
    extends _$FeedCommentStateCopyWithImpl<$Res, _$FeedCommentInitialImpl>
    implements _$$FeedCommentInitialImplCopyWith<$Res> {
  __$$FeedCommentInitialImplCopyWithImpl(_$FeedCommentInitialImpl _value,
      $Res Function(_$FeedCommentInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FeedCommentInitialImpl implements FeedCommentInitial {
  const _$FeedCommentInitialImpl();

  @override
  String toString() {
    return 'FeedCommentState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FeedCommentInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FeedCommentModel> comments) loaded,
    required TResult Function(String err) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FeedCommentModel> comments)? loaded,
    TResult? Function(String err)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FeedCommentModel> comments)? loaded,
    TResult Function(String err)? failed,
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
    required TResult Function(FeedCommentInitial value) initial,
    required TResult Function(FeedCommentLoading value) loading,
    required TResult Function(FeedCommentLoaded value) loaded,
    required TResult Function(FeedCommentFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeedCommentInitial value)? initial,
    TResult? Function(FeedCommentLoading value)? loading,
    TResult? Function(FeedCommentLoaded value)? loaded,
    TResult? Function(FeedCommentFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeedCommentInitial value)? initial,
    TResult Function(FeedCommentLoading value)? loading,
    TResult Function(FeedCommentLoaded value)? loaded,
    TResult Function(FeedCommentFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FeedCommentInitial implements FeedCommentState {
  const factory FeedCommentInitial() = _$FeedCommentInitialImpl;
}

/// @nodoc
abstract class _$$FeedCommentLoadingImplCopyWith<$Res> {
  factory _$$FeedCommentLoadingImplCopyWith(_$FeedCommentLoadingImpl value,
          $Res Function(_$FeedCommentLoadingImpl) then) =
      __$$FeedCommentLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedCommentLoadingImplCopyWithImpl<$Res>
    extends _$FeedCommentStateCopyWithImpl<$Res, _$FeedCommentLoadingImpl>
    implements _$$FeedCommentLoadingImplCopyWith<$Res> {
  __$$FeedCommentLoadingImplCopyWithImpl(_$FeedCommentLoadingImpl _value,
      $Res Function(_$FeedCommentLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FeedCommentLoadingImpl implements FeedCommentLoading {
  const _$FeedCommentLoadingImpl();

  @override
  String toString() {
    return 'FeedCommentState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FeedCommentLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FeedCommentModel> comments) loaded,
    required TResult Function(String err) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FeedCommentModel> comments)? loaded,
    TResult? Function(String err)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FeedCommentModel> comments)? loaded,
    TResult Function(String err)? failed,
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
    required TResult Function(FeedCommentInitial value) initial,
    required TResult Function(FeedCommentLoading value) loading,
    required TResult Function(FeedCommentLoaded value) loaded,
    required TResult Function(FeedCommentFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeedCommentInitial value)? initial,
    TResult? Function(FeedCommentLoading value)? loading,
    TResult? Function(FeedCommentLoaded value)? loaded,
    TResult? Function(FeedCommentFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeedCommentInitial value)? initial,
    TResult Function(FeedCommentLoading value)? loading,
    TResult Function(FeedCommentLoaded value)? loaded,
    TResult Function(FeedCommentFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FeedCommentLoading implements FeedCommentState {
  const factory FeedCommentLoading() = _$FeedCommentLoadingImpl;
}

/// @nodoc
abstract class _$$FeedCommentLoadedImplCopyWith<$Res> {
  factory _$$FeedCommentLoadedImplCopyWith(_$FeedCommentLoadedImpl value,
          $Res Function(_$FeedCommentLoadedImpl) then) =
      __$$FeedCommentLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FeedCommentModel> comments});
}

/// @nodoc
class __$$FeedCommentLoadedImplCopyWithImpl<$Res>
    extends _$FeedCommentStateCopyWithImpl<$Res, _$FeedCommentLoadedImpl>
    implements _$$FeedCommentLoadedImplCopyWith<$Res> {
  __$$FeedCommentLoadedImplCopyWithImpl(_$FeedCommentLoadedImpl _value,
      $Res Function(_$FeedCommentLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_$FeedCommentLoadedImpl(
      null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<FeedCommentModel>,
    ));
  }
}

/// @nodoc

class _$FeedCommentLoadedImpl implements FeedCommentLoaded {
  const _$FeedCommentLoadedImpl(final List<FeedCommentModel> comments)
      : _comments = comments;

  final List<FeedCommentModel> _comments;
  @override
  List<FeedCommentModel> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'FeedCommentState.loaded(comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedCommentLoadedImpl &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedCommentLoadedImplCopyWith<_$FeedCommentLoadedImpl> get copyWith =>
      __$$FeedCommentLoadedImplCopyWithImpl<_$FeedCommentLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FeedCommentModel> comments) loaded,
    required TResult Function(String err) failed,
  }) {
    return loaded(comments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FeedCommentModel> comments)? loaded,
    TResult? Function(String err)? failed,
  }) {
    return loaded?.call(comments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FeedCommentModel> comments)? loaded,
    TResult Function(String err)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeedCommentInitial value) initial,
    required TResult Function(FeedCommentLoading value) loading,
    required TResult Function(FeedCommentLoaded value) loaded,
    required TResult Function(FeedCommentFailed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeedCommentInitial value)? initial,
    TResult? Function(FeedCommentLoading value)? loading,
    TResult? Function(FeedCommentLoaded value)? loaded,
    TResult? Function(FeedCommentFailed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeedCommentInitial value)? initial,
    TResult Function(FeedCommentLoading value)? loading,
    TResult Function(FeedCommentLoaded value)? loaded,
    TResult Function(FeedCommentFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FeedCommentLoaded implements FeedCommentState {
  const factory FeedCommentLoaded(final List<FeedCommentModel> comments) =
      _$FeedCommentLoadedImpl;

  List<FeedCommentModel> get comments;
  @JsonKey(ignore: true)
  _$$FeedCommentLoadedImplCopyWith<_$FeedCommentLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeedCommentFailedImplCopyWith<$Res> {
  factory _$$FeedCommentFailedImplCopyWith(_$FeedCommentFailedImpl value,
          $Res Function(_$FeedCommentFailedImpl) then) =
      __$$FeedCommentFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String err});
}

/// @nodoc
class __$$FeedCommentFailedImplCopyWithImpl<$Res>
    extends _$FeedCommentStateCopyWithImpl<$Res, _$FeedCommentFailedImpl>
    implements _$$FeedCommentFailedImplCopyWith<$Res> {
  __$$FeedCommentFailedImplCopyWithImpl(_$FeedCommentFailedImpl _value,
      $Res Function(_$FeedCommentFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$FeedCommentFailedImpl(
      null == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FeedCommentFailedImpl implements FeedCommentFailed {
  const _$FeedCommentFailedImpl(this.err);

  @override
  final String err;

  @override
  String toString() {
    return 'FeedCommentState.failed(err: $err)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedCommentFailedImpl &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, err);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedCommentFailedImplCopyWith<_$FeedCommentFailedImpl> get copyWith =>
      __$$FeedCommentFailedImplCopyWithImpl<_$FeedCommentFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FeedCommentModel> comments) loaded,
    required TResult Function(String err) failed,
  }) {
    return failed(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FeedCommentModel> comments)? loaded,
    TResult? Function(String err)? failed,
  }) {
    return failed?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FeedCommentModel> comments)? loaded,
    TResult Function(String err)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeedCommentInitial value) initial,
    required TResult Function(FeedCommentLoading value) loading,
    required TResult Function(FeedCommentLoaded value) loaded,
    required TResult Function(FeedCommentFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeedCommentInitial value)? initial,
    TResult? Function(FeedCommentLoading value)? loading,
    TResult? Function(FeedCommentLoaded value)? loaded,
    TResult? Function(FeedCommentFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeedCommentInitial value)? initial,
    TResult Function(FeedCommentLoading value)? loading,
    TResult Function(FeedCommentLoaded value)? loaded,
    TResult Function(FeedCommentFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class FeedCommentFailed implements FeedCommentState {
  const factory FeedCommentFailed(final String err) = _$FeedCommentFailedImpl;

  String get err;
  @JsonKey(ignore: true)
  _$$FeedCommentFailedImplCopyWith<_$FeedCommentFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
