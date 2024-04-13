// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_cubit.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ForgotPasswordStateCWProxy {
  ForgotPasswordState status(SimpleStateStatus status);

  ForgotPasswordState submitEnabled(bool submitEnabled);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ForgotPasswordState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ForgotPasswordState(...).copyWith(id: 12, name: "My name")
  /// ````
  ForgotPasswordState call({
    SimpleStateStatus? status,
    bool? submitEnabled,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfForgotPasswordState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfForgotPasswordState.copyWith.fieldName(...)`
class _$ForgotPasswordStateCWProxyImpl implements _$ForgotPasswordStateCWProxy {
  const _$ForgotPasswordStateCWProxyImpl(this._value);

  final ForgotPasswordState _value;

  @override
  ForgotPasswordState status(SimpleStateStatus status) => this(status: status);

  @override
  ForgotPasswordState submitEnabled(bool submitEnabled) =>
      this(submitEnabled: submitEnabled);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ForgotPasswordState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ForgotPasswordState(...).copyWith(id: 12, name: "My name")
  /// ````
  ForgotPasswordState call({
    Object? status = const $CopyWithPlaceholder(),
    Object? submitEnabled = const $CopyWithPlaceholder(),
  }) {
    return ForgotPasswordState(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as SimpleStateStatus,
      submitEnabled:
          submitEnabled == const $CopyWithPlaceholder() || submitEnabled == null
              ? _value.submitEnabled
              // ignore: cast_nullable_to_non_nullable
              : submitEnabled as bool,
    );
  }
}

extension $ForgotPasswordStateCopyWith on ForgotPasswordState {
  /// Returns a callable class that can be used as follows: `instanceOfForgotPasswordState.copyWith(...)` or like so:`instanceOfForgotPasswordState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ForgotPasswordStateCWProxy get copyWith =>
      _$ForgotPasswordStateCWProxyImpl(this);
}
