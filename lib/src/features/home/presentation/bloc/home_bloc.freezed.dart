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
    required TResult Function() increase,
    required TResult Function() decrease,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? increase,
    TResult? Function()? decrease,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? increase,
    TResult Function()? decrease,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeIncrease value) increase,
    required TResult Function(HomeDecrease value) decrease,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeIncrease value)? increase,
    TResult? Function(HomeDecrease value)? decrease,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeIncrease value)? increase,
    TResult Function(HomeDecrease value)? decrease,
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
abstract class _$$HomeIncreaseImplCopyWith<$Res> {
  factory _$$HomeIncreaseImplCopyWith(
          _$HomeIncreaseImpl value, $Res Function(_$HomeIncreaseImpl) then) =
      __$$HomeIncreaseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeIncreaseImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeIncreaseImpl>
    implements _$$HomeIncreaseImplCopyWith<$Res> {
  __$$HomeIncreaseImplCopyWithImpl(
      _$HomeIncreaseImpl _value, $Res Function(_$HomeIncreaseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeIncreaseImpl implements HomeIncrease {
  const _$HomeIncreaseImpl();

  @override
  String toString() {
    return 'HomeEvent.increase()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeIncreaseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() increase,
    required TResult Function() decrease,
  }) {
    return increase();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? increase,
    TResult? Function()? decrease,
  }) {
    return increase?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? increase,
    TResult Function()? decrease,
    required TResult orElse(),
  }) {
    if (increase != null) {
      return increase();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeIncrease value) increase,
    required TResult Function(HomeDecrease value) decrease,
  }) {
    return increase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeIncrease value)? increase,
    TResult? Function(HomeDecrease value)? decrease,
  }) {
    return increase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeIncrease value)? increase,
    TResult Function(HomeDecrease value)? decrease,
    required TResult orElse(),
  }) {
    if (increase != null) {
      return increase(this);
    }
    return orElse();
  }
}

abstract class HomeIncrease implements HomeEvent {
  const factory HomeIncrease() = _$HomeIncreaseImpl;
}

/// @nodoc
abstract class _$$HomeDecreaseImplCopyWith<$Res> {
  factory _$$HomeDecreaseImplCopyWith(
          _$HomeDecreaseImpl value, $Res Function(_$HomeDecreaseImpl) then) =
      __$$HomeDecreaseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeDecreaseImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeDecreaseImpl>
    implements _$$HomeDecreaseImplCopyWith<$Res> {
  __$$HomeDecreaseImplCopyWithImpl(
      _$HomeDecreaseImpl _value, $Res Function(_$HomeDecreaseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeDecreaseImpl implements HomeDecrease {
  const _$HomeDecreaseImpl();

  @override
  String toString() {
    return 'HomeEvent.decrease()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeDecreaseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() increase,
    required TResult Function() decrease,
  }) {
    return decrease();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? increase,
    TResult? Function()? decrease,
  }) {
    return decrease?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? increase,
    TResult Function()? decrease,
    required TResult orElse(),
  }) {
    if (decrease != null) {
      return decrease();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeIncrease value) increase,
    required TResult Function(HomeDecrease value) decrease,
  }) {
    return decrease(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeIncrease value)? increase,
    TResult? Function(HomeDecrease value)? decrease,
  }) {
    return decrease?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeIncrease value)? increase,
    TResult Function(HomeDecrease value)? decrease,
    required TResult orElse(),
  }) {
    if (decrease != null) {
      return decrease(this);
    }
    return orElse();
  }
}

abstract class HomeDecrease implements HomeEvent {
  const factory HomeDecrease() = _$HomeDecreaseImpl;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() increaseSuccessful,
    required TResult Function() decreaseSuccessful,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? increaseSuccessful,
    TResult? Function()? decreaseSuccessful,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? increaseSuccessful,
    TResult Function()? decreaseSuccessful,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeIncreaseSuccessful value) increaseSuccessful,
    required TResult Function(HomeDecreaseSuccessful value) decreaseSuccessful,
    required TResult Function(HomeError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeIncreaseSuccessful value)? increaseSuccessful,
    TResult? Function(HomeDecreaseSuccessful value)? decreaseSuccessful,
    TResult? Function(HomeError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeIncreaseSuccessful value)? increaseSuccessful,
    TResult Function(HomeDecreaseSuccessful value)? decreaseSuccessful,
    TResult Function(HomeError value)? error,
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
    required TResult Function() increaseSuccessful,
    required TResult Function() decreaseSuccessful,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? increaseSuccessful,
    TResult? Function()? decreaseSuccessful,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? increaseSuccessful,
    TResult Function()? decreaseSuccessful,
    TResult Function()? error,
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
    required TResult Function(HomeIncreaseSuccessful value) increaseSuccessful,
    required TResult Function(HomeDecreaseSuccessful value) decreaseSuccessful,
    required TResult Function(HomeError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeIncreaseSuccessful value)? increaseSuccessful,
    TResult? Function(HomeDecreaseSuccessful value)? decreaseSuccessful,
    TResult? Function(HomeError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeIncreaseSuccessful value)? increaseSuccessful,
    TResult Function(HomeDecreaseSuccessful value)? decreaseSuccessful,
    TResult Function(HomeError value)? error,
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
abstract class _$$HomeIncreaseSuccessfulImplCopyWith<$Res> {
  factory _$$HomeIncreaseSuccessfulImplCopyWith(
          _$HomeIncreaseSuccessfulImpl value,
          $Res Function(_$HomeIncreaseSuccessfulImpl) then) =
      __$$HomeIncreaseSuccessfulImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeIncreaseSuccessfulImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeIncreaseSuccessfulImpl>
    implements _$$HomeIncreaseSuccessfulImplCopyWith<$Res> {
  __$$HomeIncreaseSuccessfulImplCopyWithImpl(
      _$HomeIncreaseSuccessfulImpl _value,
      $Res Function(_$HomeIncreaseSuccessfulImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeIncreaseSuccessfulImpl implements HomeIncreaseSuccessful {
  const _$HomeIncreaseSuccessfulImpl();

  @override
  String toString() {
    return 'HomeState.increaseSuccessful()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeIncreaseSuccessfulImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() increaseSuccessful,
    required TResult Function() decreaseSuccessful,
    required TResult Function() error,
  }) {
    return increaseSuccessful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? increaseSuccessful,
    TResult? Function()? decreaseSuccessful,
    TResult? Function()? error,
  }) {
    return increaseSuccessful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? increaseSuccessful,
    TResult Function()? decreaseSuccessful,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (increaseSuccessful != null) {
      return increaseSuccessful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeIncreaseSuccessful value) increaseSuccessful,
    required TResult Function(HomeDecreaseSuccessful value) decreaseSuccessful,
    required TResult Function(HomeError value) error,
  }) {
    return increaseSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeIncreaseSuccessful value)? increaseSuccessful,
    TResult? Function(HomeDecreaseSuccessful value)? decreaseSuccessful,
    TResult? Function(HomeError value)? error,
  }) {
    return increaseSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeIncreaseSuccessful value)? increaseSuccessful,
    TResult Function(HomeDecreaseSuccessful value)? decreaseSuccessful,
    TResult Function(HomeError value)? error,
    required TResult orElse(),
  }) {
    if (increaseSuccessful != null) {
      return increaseSuccessful(this);
    }
    return orElse();
  }
}

abstract class HomeIncreaseSuccessful implements HomeState {
  const factory HomeIncreaseSuccessful() = _$HomeIncreaseSuccessfulImpl;
}

/// @nodoc
abstract class _$$HomeDecreaseSuccessfulImplCopyWith<$Res> {
  factory _$$HomeDecreaseSuccessfulImplCopyWith(
          _$HomeDecreaseSuccessfulImpl value,
          $Res Function(_$HomeDecreaseSuccessfulImpl) then) =
      __$$HomeDecreaseSuccessfulImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeDecreaseSuccessfulImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeDecreaseSuccessfulImpl>
    implements _$$HomeDecreaseSuccessfulImplCopyWith<$Res> {
  __$$HomeDecreaseSuccessfulImplCopyWithImpl(
      _$HomeDecreaseSuccessfulImpl _value,
      $Res Function(_$HomeDecreaseSuccessfulImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeDecreaseSuccessfulImpl implements HomeDecreaseSuccessful {
  const _$HomeDecreaseSuccessfulImpl();

  @override
  String toString() {
    return 'HomeState.decreaseSuccessful()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDecreaseSuccessfulImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() increaseSuccessful,
    required TResult Function() decreaseSuccessful,
    required TResult Function() error,
  }) {
    return decreaseSuccessful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? increaseSuccessful,
    TResult? Function()? decreaseSuccessful,
    TResult? Function()? error,
  }) {
    return decreaseSuccessful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? increaseSuccessful,
    TResult Function()? decreaseSuccessful,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (decreaseSuccessful != null) {
      return decreaseSuccessful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeIncreaseSuccessful value) increaseSuccessful,
    required TResult Function(HomeDecreaseSuccessful value) decreaseSuccessful,
    required TResult Function(HomeError value) error,
  }) {
    return decreaseSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeIncreaseSuccessful value)? increaseSuccessful,
    TResult? Function(HomeDecreaseSuccessful value)? decreaseSuccessful,
    TResult? Function(HomeError value)? error,
  }) {
    return decreaseSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeIncreaseSuccessful value)? increaseSuccessful,
    TResult Function(HomeDecreaseSuccessful value)? decreaseSuccessful,
    TResult Function(HomeError value)? error,
    required TResult orElse(),
  }) {
    if (decreaseSuccessful != null) {
      return decreaseSuccessful(this);
    }
    return orElse();
  }
}

abstract class HomeDecreaseSuccessful implements HomeState {
  const factory HomeDecreaseSuccessful() = _$HomeDecreaseSuccessfulImpl;
}

/// @nodoc
abstract class _$$HomeErrorImplCopyWith<$Res> {
  factory _$$HomeErrorImplCopyWith(
          _$HomeErrorImpl value, $Res Function(_$HomeErrorImpl) then) =
      __$$HomeErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeErrorImpl>
    implements _$$HomeErrorImplCopyWith<$Res> {
  __$$HomeErrorImplCopyWithImpl(
      _$HomeErrorImpl _value, $Res Function(_$HomeErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeErrorImpl implements HomeError {
  const _$HomeErrorImpl();

  @override
  String toString() {
    return 'HomeState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() increaseSuccessful,
    required TResult Function() decreaseSuccessful,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? increaseSuccessful,
    TResult? Function()? decreaseSuccessful,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? increaseSuccessful,
    TResult Function()? decreaseSuccessful,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeIncreaseSuccessful value) increaseSuccessful,
    required TResult Function(HomeDecreaseSuccessful value) decreaseSuccessful,
    required TResult Function(HomeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeIncreaseSuccessful value)? increaseSuccessful,
    TResult? Function(HomeDecreaseSuccessful value)? decreaseSuccessful,
    TResult? Function(HomeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeIncreaseSuccessful value)? increaseSuccessful,
    TResult Function(HomeDecreaseSuccessful value)? decreaseSuccessful,
    TResult Function(HomeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HomeError implements HomeState {
  const factory HomeError() = _$HomeErrorImpl;
}
