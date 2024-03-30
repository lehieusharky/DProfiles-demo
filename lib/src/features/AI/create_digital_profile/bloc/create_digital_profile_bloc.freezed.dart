// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_digital_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateDigitalProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isNext) changeCreationStep,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isNext)? changeCreationStep,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isNext)? changeCreationStep,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChangeCreationStep value) changeCreationStep,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangeCreationStep value)? changeCreationStep,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangeCreationStep value)? changeCreationStep,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateDigitalProfileEventCopyWith<$Res> {
  factory $CreateDigitalProfileEventCopyWith(CreateDigitalProfileEvent value,
          $Res Function(CreateDigitalProfileEvent) then) =
      _$CreateDigitalProfileEventCopyWithImpl<$Res, CreateDigitalProfileEvent>;
}

/// @nodoc
class _$CreateDigitalProfileEventCopyWithImpl<$Res,
        $Val extends CreateDigitalProfileEvent>
    implements $CreateDigitalProfileEventCopyWith<$Res> {
  _$CreateDigitalProfileEventCopyWithImpl(this._value, this._then);

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
    extends _$CreateDigitalProfileEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'CreateDigitalProfileEvent.started()';
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
    required TResult Function(bool isNext) changeCreationStep,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isNext)? changeCreationStep,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isNext)? changeCreationStep,
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
    required TResult Function(ChangeCreationStep value) changeCreationStep,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangeCreationStep value)? changeCreationStep,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangeCreationStep value)? changeCreationStep,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CreateDigitalProfileEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ChangeCreationStepImplCopyWith<$Res> {
  factory _$$ChangeCreationStepImplCopyWith(_$ChangeCreationStepImpl value,
          $Res Function(_$ChangeCreationStepImpl) then) =
      __$$ChangeCreationStepImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isNext});
}

/// @nodoc
class __$$ChangeCreationStepImplCopyWithImpl<$Res>
    extends _$CreateDigitalProfileEventCopyWithImpl<$Res,
        _$ChangeCreationStepImpl>
    implements _$$ChangeCreationStepImplCopyWith<$Res> {
  __$$ChangeCreationStepImplCopyWithImpl(_$ChangeCreationStepImpl _value,
      $Res Function(_$ChangeCreationStepImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isNext = null,
  }) {
    return _then(_$ChangeCreationStepImpl(
      isNext: null == isNext
          ? _value.isNext
          : isNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeCreationStepImpl implements ChangeCreationStep {
  const _$ChangeCreationStepImpl({required this.isNext});

  @override
  final bool isNext;

  @override
  String toString() {
    return 'CreateDigitalProfileEvent.changeCreationStep(isNext: $isNext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCreationStepImpl &&
            (identical(other.isNext, isNext) || other.isNext == isNext));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isNext);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCreationStepImplCopyWith<_$ChangeCreationStepImpl> get copyWith =>
      __$$ChangeCreationStepImplCopyWithImpl<_$ChangeCreationStepImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isNext) changeCreationStep,
  }) {
    return changeCreationStep(isNext);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isNext)? changeCreationStep,
  }) {
    return changeCreationStep?.call(isNext);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isNext)? changeCreationStep,
    required TResult orElse(),
  }) {
    if (changeCreationStep != null) {
      return changeCreationStep(isNext);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChangeCreationStep value) changeCreationStep,
  }) {
    return changeCreationStep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangeCreationStep value)? changeCreationStep,
  }) {
    return changeCreationStep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangeCreationStep value)? changeCreationStep,
    required TResult orElse(),
  }) {
    if (changeCreationStep != null) {
      return changeCreationStep(this);
    }
    return orElse();
  }
}

abstract class ChangeCreationStep implements CreateDigitalProfileEvent {
  const factory ChangeCreationStep({required final bool isNext}) =
      _$ChangeCreationStepImpl;

  bool get isNext;
  @JsonKey(ignore: true)
  _$$ChangeCreationStepImplCopyWith<_$ChangeCreationStepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateDigitalProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int currentStep) changeCreationStepSuccess,
    required TResult Function() loading,
    required TResult Function(String message, String? title) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int currentStep)? changeCreationStepSuccess,
    TResult? Function()? loading,
    TResult? Function(String message, String? title)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentStep)? changeCreationStepSuccess,
    TResult Function()? loading,
    TResult Function(String message, String? title)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChangeCreationStepSuccess value)
        changeCreationStepSuccess,
    required TResult Function(CreateDigitalProfileLoading value) loading,
    required TResult Function(CreateDigitalProfileError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeCreationStepSuccess value)?
        changeCreationStepSuccess,
    TResult? Function(CreateDigitalProfileLoading value)? loading,
    TResult? Function(CreateDigitalProfileError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeCreationStepSuccess value)?
        changeCreationStepSuccess,
    TResult Function(CreateDigitalProfileLoading value)? loading,
    TResult Function(CreateDigitalProfileError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateDigitalProfileStateCopyWith<$Res> {
  factory $CreateDigitalProfileStateCopyWith(CreateDigitalProfileState value,
          $Res Function(CreateDigitalProfileState) then) =
      _$CreateDigitalProfileStateCopyWithImpl<$Res, CreateDigitalProfileState>;
}

/// @nodoc
class _$CreateDigitalProfileStateCopyWithImpl<$Res,
        $Val extends CreateDigitalProfileState>
    implements $CreateDigitalProfileStateCopyWith<$Res> {
  _$CreateDigitalProfileStateCopyWithImpl(this._value, this._then);

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
    extends _$CreateDigitalProfileStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CreateDigitalProfileState.initial()';
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
    required TResult Function(int currentStep) changeCreationStepSuccess,
    required TResult Function() loading,
    required TResult Function(String message, String? title) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int currentStep)? changeCreationStepSuccess,
    TResult? Function()? loading,
    TResult? Function(String message, String? title)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentStep)? changeCreationStepSuccess,
    TResult Function()? loading,
    TResult Function(String message, String? title)? error,
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
    required TResult Function(ChangeCreationStepSuccess value)
        changeCreationStepSuccess,
    required TResult Function(CreateDigitalProfileLoading value) loading,
    required TResult Function(CreateDigitalProfileError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeCreationStepSuccess value)?
        changeCreationStepSuccess,
    TResult? Function(CreateDigitalProfileLoading value)? loading,
    TResult? Function(CreateDigitalProfileError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeCreationStepSuccess value)?
        changeCreationStepSuccess,
    TResult Function(CreateDigitalProfileLoading value)? loading,
    TResult Function(CreateDigitalProfileError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateDigitalProfileState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ChangeCreationStepSuccessImplCopyWith<$Res> {
  factory _$$ChangeCreationStepSuccessImplCopyWith(
          _$ChangeCreationStepSuccessImpl value,
          $Res Function(_$ChangeCreationStepSuccessImpl) then) =
      __$$ChangeCreationStepSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int currentStep});
}

/// @nodoc
class __$$ChangeCreationStepSuccessImplCopyWithImpl<$Res>
    extends _$CreateDigitalProfileStateCopyWithImpl<$Res,
        _$ChangeCreationStepSuccessImpl>
    implements _$$ChangeCreationStepSuccessImplCopyWith<$Res> {
  __$$ChangeCreationStepSuccessImplCopyWithImpl(
      _$ChangeCreationStepSuccessImpl _value,
      $Res Function(_$ChangeCreationStepSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStep = null,
  }) {
    return _then(_$ChangeCreationStepSuccessImpl(
      null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeCreationStepSuccessImpl implements ChangeCreationStepSuccess {
  const _$ChangeCreationStepSuccessImpl(this.currentStep);

  @override
  final int currentStep;

  @override
  String toString() {
    return 'CreateDigitalProfileState.changeCreationStepSuccess(currentStep: $currentStep)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCreationStepSuccessImpl &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentStep);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCreationStepSuccessImplCopyWith<_$ChangeCreationStepSuccessImpl>
      get copyWith => __$$ChangeCreationStepSuccessImplCopyWithImpl<
          _$ChangeCreationStepSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int currentStep) changeCreationStepSuccess,
    required TResult Function() loading,
    required TResult Function(String message, String? title) error,
  }) {
    return changeCreationStepSuccess(currentStep);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int currentStep)? changeCreationStepSuccess,
    TResult? Function()? loading,
    TResult? Function(String message, String? title)? error,
  }) {
    return changeCreationStepSuccess?.call(currentStep);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentStep)? changeCreationStepSuccess,
    TResult Function()? loading,
    TResult Function(String message, String? title)? error,
    required TResult orElse(),
  }) {
    if (changeCreationStepSuccess != null) {
      return changeCreationStepSuccess(currentStep);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChangeCreationStepSuccess value)
        changeCreationStepSuccess,
    required TResult Function(CreateDigitalProfileLoading value) loading,
    required TResult Function(CreateDigitalProfileError value) error,
  }) {
    return changeCreationStepSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeCreationStepSuccess value)?
        changeCreationStepSuccess,
    TResult? Function(CreateDigitalProfileLoading value)? loading,
    TResult? Function(CreateDigitalProfileError value)? error,
  }) {
    return changeCreationStepSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeCreationStepSuccess value)?
        changeCreationStepSuccess,
    TResult Function(CreateDigitalProfileLoading value)? loading,
    TResult Function(CreateDigitalProfileError value)? error,
    required TResult orElse(),
  }) {
    if (changeCreationStepSuccess != null) {
      return changeCreationStepSuccess(this);
    }
    return orElse();
  }
}

abstract class ChangeCreationStepSuccess implements CreateDigitalProfileState {
  const factory ChangeCreationStepSuccess(final int currentStep) =
      _$ChangeCreationStepSuccessImpl;

  int get currentStep;
  @JsonKey(ignore: true)
  _$$ChangeCreationStepSuccessImplCopyWith<_$ChangeCreationStepSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateDigitalProfileLoadingImplCopyWith<$Res> {
  factory _$$CreateDigitalProfileLoadingImplCopyWith(
          _$CreateDigitalProfileLoadingImpl value,
          $Res Function(_$CreateDigitalProfileLoadingImpl) then) =
      __$$CreateDigitalProfileLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateDigitalProfileLoadingImplCopyWithImpl<$Res>
    extends _$CreateDigitalProfileStateCopyWithImpl<$Res,
        _$CreateDigitalProfileLoadingImpl>
    implements _$$CreateDigitalProfileLoadingImplCopyWith<$Res> {
  __$$CreateDigitalProfileLoadingImplCopyWithImpl(
      _$CreateDigitalProfileLoadingImpl _value,
      $Res Function(_$CreateDigitalProfileLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateDigitalProfileLoadingImpl implements CreateDigitalProfileLoading {
  const _$CreateDigitalProfileLoadingImpl();

  @override
  String toString() {
    return 'CreateDigitalProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDigitalProfileLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int currentStep) changeCreationStepSuccess,
    required TResult Function() loading,
    required TResult Function(String message, String? title) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int currentStep)? changeCreationStepSuccess,
    TResult? Function()? loading,
    TResult? Function(String message, String? title)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentStep)? changeCreationStepSuccess,
    TResult Function()? loading,
    TResult Function(String message, String? title)? error,
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
    required TResult Function(ChangeCreationStepSuccess value)
        changeCreationStepSuccess,
    required TResult Function(CreateDigitalProfileLoading value) loading,
    required TResult Function(CreateDigitalProfileError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeCreationStepSuccess value)?
        changeCreationStepSuccess,
    TResult? Function(CreateDigitalProfileLoading value)? loading,
    TResult? Function(CreateDigitalProfileError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeCreationStepSuccess value)?
        changeCreationStepSuccess,
    TResult Function(CreateDigitalProfileLoading value)? loading,
    TResult Function(CreateDigitalProfileError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateDigitalProfileLoading
    implements CreateDigitalProfileState {
  const factory CreateDigitalProfileLoading() =
      _$CreateDigitalProfileLoadingImpl;
}

/// @nodoc
abstract class _$$CreateDigitalProfileErrorImplCopyWith<$Res> {
  factory _$$CreateDigitalProfileErrorImplCopyWith(
          _$CreateDigitalProfileErrorImpl value,
          $Res Function(_$CreateDigitalProfileErrorImpl) then) =
      __$$CreateDigitalProfileErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String? title});
}

/// @nodoc
class __$$CreateDigitalProfileErrorImplCopyWithImpl<$Res>
    extends _$CreateDigitalProfileStateCopyWithImpl<$Res,
        _$CreateDigitalProfileErrorImpl>
    implements _$$CreateDigitalProfileErrorImplCopyWith<$Res> {
  __$$CreateDigitalProfileErrorImplCopyWithImpl(
      _$CreateDigitalProfileErrorImpl _value,
      $Res Function(_$CreateDigitalProfileErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? title = freezed,
  }) {
    return _then(_$CreateDigitalProfileErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreateDigitalProfileErrorImpl implements CreateDigitalProfileError {
  const _$CreateDigitalProfileErrorImpl({required this.message, this.title});

  @override
  final String message;
  @override
  final String? title;

  @override
  String toString() {
    return 'CreateDigitalProfileState.error(message: $message, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDigitalProfileErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateDigitalProfileErrorImplCopyWith<_$CreateDigitalProfileErrorImpl>
      get copyWith => __$$CreateDigitalProfileErrorImplCopyWithImpl<
          _$CreateDigitalProfileErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int currentStep) changeCreationStepSuccess,
    required TResult Function() loading,
    required TResult Function(String message, String? title) error,
  }) {
    return error(message, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int currentStep)? changeCreationStepSuccess,
    TResult? Function()? loading,
    TResult? Function(String message, String? title)? error,
  }) {
    return error?.call(message, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentStep)? changeCreationStepSuccess,
    TResult Function()? loading,
    TResult Function(String message, String? title)? error,
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
    required TResult Function(ChangeCreationStepSuccess value)
        changeCreationStepSuccess,
    required TResult Function(CreateDigitalProfileLoading value) loading,
    required TResult Function(CreateDigitalProfileError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeCreationStepSuccess value)?
        changeCreationStepSuccess,
    TResult? Function(CreateDigitalProfileLoading value)? loading,
    TResult? Function(CreateDigitalProfileError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeCreationStepSuccess value)?
        changeCreationStepSuccess,
    TResult Function(CreateDigitalProfileLoading value)? loading,
    TResult Function(CreateDigitalProfileError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateDigitalProfileError implements CreateDigitalProfileState {
  const factory CreateDigitalProfileError(
      {required final String message,
      final String? title}) = _$CreateDigitalProfileErrorImpl;

  String get message;
  String? get title;
  @JsonKey(ignore: true)
  _$$CreateDigitalProfileErrorImplCopyWith<_$CreateDigitalProfileErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
