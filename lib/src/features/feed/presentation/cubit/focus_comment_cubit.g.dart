// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'focus_comment_cubit.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FocusCommentStateCWProxy {
  FocusCommentState status(SimpleStateStatus status);

  FocusCommentState comment(FeedCommentModel? comment);

  FocusCommentState submitEnabled(bool submitEnabled);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FocusCommentState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FocusCommentState(...).copyWith(id: 12, name: "My name")
  /// ````
  FocusCommentState call({
    SimpleStateStatus? status,
    FeedCommentModel? comment,
    bool? submitEnabled,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFocusCommentState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFocusCommentState.copyWith.fieldName(...)`
class _$FocusCommentStateCWProxyImpl implements _$FocusCommentStateCWProxy {
  const _$FocusCommentStateCWProxyImpl(this._value);

  final FocusCommentState _value;

  @override
  FocusCommentState status(SimpleStateStatus status) => this(status: status);

  @override
  FocusCommentState comment(FeedCommentModel? comment) =>
      this(comment: comment);

  @override
  FocusCommentState submitEnabled(bool submitEnabled) =>
      this(submitEnabled: submitEnabled);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FocusCommentState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FocusCommentState(...).copyWith(id: 12, name: "My name")
  /// ````
  FocusCommentState call({
    Object? status = const $CopyWithPlaceholder(),
    Object? comment = const $CopyWithPlaceholder(),
    Object? submitEnabled = const $CopyWithPlaceholder(),
  }) {
    return FocusCommentState(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as SimpleStateStatus,
      comment: comment == const $CopyWithPlaceholder()
          ? _value.comment
          // ignore: cast_nullable_to_non_nullable
          : comment as FeedCommentModel?,
      submitEnabled:
          submitEnabled == const $CopyWithPlaceholder() || submitEnabled == null
              ? _value.submitEnabled
              // ignore: cast_nullable_to_non_nullable
              : submitEnabled as bool,
    );
  }
}

extension $FocusCommentStateCopyWith on FocusCommentState {
  /// Returns a callable class that can be used as follows: `instanceOfFocusCommentState.copyWith(...)` or like so:`instanceOfFocusCommentState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FocusCommentStateCWProxy get copyWith =>
      _$FocusCommentStateCWProxyImpl(this);
}
