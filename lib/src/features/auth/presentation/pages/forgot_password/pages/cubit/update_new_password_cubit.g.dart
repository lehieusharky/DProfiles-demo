// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_new_password_cubit.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateNewPasswordStateCWProxy {
  UpdateNewPasswordState status(SimpleStateStatus status);

  UpdateNewPasswordState submitEnabled(bool submitEnabled);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateNewPasswordState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateNewPasswordState(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateNewPasswordState call({
    SimpleStateStatus? status,
    bool? submitEnabled,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdateNewPasswordState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdateNewPasswordState.copyWith.fieldName(...)`
class _$UpdateNewPasswordStateCWProxyImpl
    implements _$UpdateNewPasswordStateCWProxy {
  const _$UpdateNewPasswordStateCWProxyImpl(this._value);

  final UpdateNewPasswordState _value;

  @override
  UpdateNewPasswordState status(SimpleStateStatus status) =>
      this(status: status);

  @override
  UpdateNewPasswordState submitEnabled(bool submitEnabled) =>
      this(submitEnabled: submitEnabled);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateNewPasswordState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateNewPasswordState(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateNewPasswordState call({
    Object? status = const $CopyWithPlaceholder(),
    Object? submitEnabled = const $CopyWithPlaceholder(),
  }) {
    return UpdateNewPasswordState(
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

extension $UpdateNewPasswordStateCopyWith on UpdateNewPasswordState {
  /// Returns a callable class that can be used as follows: `instanceOfUpdateNewPasswordState.copyWith(...)` or like so:`instanceOfUpdateNewPasswordState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateNewPasswordStateCWProxy get copyWith =>
      _$UpdateNewPasswordStateCWProxyImpl(this);
}
