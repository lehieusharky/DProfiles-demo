// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_detail_cubit.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FeedDetailStateCWProxy {
  FeedDetailState feed(NewFeedModel feed);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FeedDetailState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FeedDetailState(...).copyWith(id: 12, name: "My name")
  /// ````
  FeedDetailState call({
    NewFeedModel? feed,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFeedDetailState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFeedDetailState.copyWith.fieldName(...)`
class _$FeedDetailStateCWProxyImpl implements _$FeedDetailStateCWProxy {
  const _$FeedDetailStateCWProxyImpl(this._value);

  final FeedDetailState _value;

  @override
  FeedDetailState feed(NewFeedModel feed) => this(feed: feed);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FeedDetailState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FeedDetailState(...).copyWith(id: 12, name: "My name")
  /// ````
  FeedDetailState call({
    Object? feed = const $CopyWithPlaceholder(),
  }) {
    return FeedDetailState(
      feed == const $CopyWithPlaceholder() || feed == null
          ? _value.feed
          // ignore: cast_nullable_to_non_nullable
          : feed as NewFeedModel,
    );
  }
}

extension $FeedDetailStateCopyWith on FeedDetailState {
  /// Returns a callable class that can be used as follows: `instanceOfFeedDetailState.copyWith(...)` or like so:`instanceOfFeedDetailState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FeedDetailStateCWProxy get copyWith => _$FeedDetailStateCWProxyImpl(this);
}
