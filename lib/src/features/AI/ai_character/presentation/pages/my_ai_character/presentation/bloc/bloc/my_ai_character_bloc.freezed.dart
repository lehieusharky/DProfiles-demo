// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_ai_character_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyAiCharacterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, bool isPopularBot) getChatBotDetail,
    required TResult Function(int chatBotID, int page, int limit, String search)
        getChatWithBotHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, bool isPopularBot)? getChatBotDetail,
    TResult? Function(int chatBotID, int page, int limit, String search)?
        getChatWithBotHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, bool isPopularBot)? getChatBotDetail,
    TResult Function(int chatBotID, int page, int limit, String search)?
        getChatWithBotHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyAiCharacterGetChatBotDetail value)
        getChatBotDetail,
    required TResult Function(MyAiCharacterGetChatWithBotHistory value)
        getChatWithBotHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyAiCharacterGetChatBotDetail value)? getChatBotDetail,
    TResult? Function(MyAiCharacterGetChatWithBotHistory value)?
        getChatWithBotHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyAiCharacterGetChatBotDetail value)? getChatBotDetail,
    TResult Function(MyAiCharacterGetChatWithBotHistory value)?
        getChatWithBotHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyAiCharacterEventCopyWith<$Res> {
  factory $MyAiCharacterEventCopyWith(
          MyAiCharacterEvent value, $Res Function(MyAiCharacterEvent) then) =
      _$MyAiCharacterEventCopyWithImpl<$Res, MyAiCharacterEvent>;
}

/// @nodoc
class _$MyAiCharacterEventCopyWithImpl<$Res, $Val extends MyAiCharacterEvent>
    implements $MyAiCharacterEventCopyWith<$Res> {
  _$MyAiCharacterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MyAiCharacterGetChatBotDetailImplCopyWith<$Res> {
  factory _$$MyAiCharacterGetChatBotDetailImplCopyWith(
          _$MyAiCharacterGetChatBotDetailImpl value,
          $Res Function(_$MyAiCharacterGetChatBotDetailImpl) then) =
      __$$MyAiCharacterGetChatBotDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, bool isPopularBot});
}

/// @nodoc
class __$$MyAiCharacterGetChatBotDetailImplCopyWithImpl<$Res>
    extends _$MyAiCharacterEventCopyWithImpl<$Res,
        _$MyAiCharacterGetChatBotDetailImpl>
    implements _$$MyAiCharacterGetChatBotDetailImplCopyWith<$Res> {
  __$$MyAiCharacterGetChatBotDetailImplCopyWithImpl(
      _$MyAiCharacterGetChatBotDetailImpl _value,
      $Res Function(_$MyAiCharacterGetChatBotDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isPopularBot = null,
  }) {
    return _then(_$MyAiCharacterGetChatBotDetailImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == isPopularBot
          ? _value.isPopularBot
          : isPopularBot // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MyAiCharacterGetChatBotDetailImpl
    implements MyAiCharacterGetChatBotDetail {
  const _$MyAiCharacterGetChatBotDetailImpl(this.id, this.isPopularBot);

  @override
  final int id;
  @override
  final bool isPopularBot;

  @override
  String toString() {
    return 'MyAiCharacterEvent.getChatBotDetail(id: $id, isPopularBot: $isPopularBot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyAiCharacterGetChatBotDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isPopularBot, isPopularBot) ||
                other.isPopularBot == isPopularBot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isPopularBot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyAiCharacterGetChatBotDetailImplCopyWith<
          _$MyAiCharacterGetChatBotDetailImpl>
      get copyWith => __$$MyAiCharacterGetChatBotDetailImplCopyWithImpl<
          _$MyAiCharacterGetChatBotDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, bool isPopularBot) getChatBotDetail,
    required TResult Function(int chatBotID, int page, int limit, String search)
        getChatWithBotHistory,
  }) {
    return getChatBotDetail(id, isPopularBot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, bool isPopularBot)? getChatBotDetail,
    TResult? Function(int chatBotID, int page, int limit, String search)?
        getChatWithBotHistory,
  }) {
    return getChatBotDetail?.call(id, isPopularBot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, bool isPopularBot)? getChatBotDetail,
    TResult Function(int chatBotID, int page, int limit, String search)?
        getChatWithBotHistory,
    required TResult orElse(),
  }) {
    if (getChatBotDetail != null) {
      return getChatBotDetail(id, isPopularBot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyAiCharacterGetChatBotDetail value)
        getChatBotDetail,
    required TResult Function(MyAiCharacterGetChatWithBotHistory value)
        getChatWithBotHistory,
  }) {
    return getChatBotDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyAiCharacterGetChatBotDetail value)? getChatBotDetail,
    TResult? Function(MyAiCharacterGetChatWithBotHistory value)?
        getChatWithBotHistory,
  }) {
    return getChatBotDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyAiCharacterGetChatBotDetail value)? getChatBotDetail,
    TResult Function(MyAiCharacterGetChatWithBotHistory value)?
        getChatWithBotHistory,
    required TResult orElse(),
  }) {
    if (getChatBotDetail != null) {
      return getChatBotDetail(this);
    }
    return orElse();
  }
}

abstract class MyAiCharacterGetChatBotDetail implements MyAiCharacterEvent {
  const factory MyAiCharacterGetChatBotDetail(
          final int id, final bool isPopularBot) =
      _$MyAiCharacterGetChatBotDetailImpl;

  int get id;
  bool get isPopularBot;
  @JsonKey(ignore: true)
  _$$MyAiCharacterGetChatBotDetailImplCopyWith<
          _$MyAiCharacterGetChatBotDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MyAiCharacterGetChatWithBotHistoryImplCopyWith<$Res> {
  factory _$$MyAiCharacterGetChatWithBotHistoryImplCopyWith(
          _$MyAiCharacterGetChatWithBotHistoryImpl value,
          $Res Function(_$MyAiCharacterGetChatWithBotHistoryImpl) then) =
      __$$MyAiCharacterGetChatWithBotHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int chatBotID, int page, int limit, String search});
}

/// @nodoc
class __$$MyAiCharacterGetChatWithBotHistoryImplCopyWithImpl<$Res>
    extends _$MyAiCharacterEventCopyWithImpl<$Res,
        _$MyAiCharacterGetChatWithBotHistoryImpl>
    implements _$$MyAiCharacterGetChatWithBotHistoryImplCopyWith<$Res> {
  __$$MyAiCharacterGetChatWithBotHistoryImplCopyWithImpl(
      _$MyAiCharacterGetChatWithBotHistoryImpl _value,
      $Res Function(_$MyAiCharacterGetChatWithBotHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatBotID = null,
    Object? page = null,
    Object? limit = null,
    Object? search = null,
  }) {
    return _then(_$MyAiCharacterGetChatWithBotHistoryImpl(
      chatBotID: null == chatBotID
          ? _value.chatBotID
          : chatBotID // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MyAiCharacterGetChatWithBotHistoryImpl
    implements MyAiCharacterGetChatWithBotHistory {
  const _$MyAiCharacterGetChatWithBotHistoryImpl(
      {required this.chatBotID,
      required this.page,
      required this.limit,
      required this.search});

  @override
  final int chatBotID;
  @override
  final int page;
  @override
  final int limit;
  @override
  final String search;

  @override
  String toString() {
    return 'MyAiCharacterEvent.getChatWithBotHistory(chatBotID: $chatBotID, page: $page, limit: $limit, search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyAiCharacterGetChatWithBotHistoryImpl &&
            (identical(other.chatBotID, chatBotID) ||
                other.chatBotID == chatBotID) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatBotID, page, limit, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyAiCharacterGetChatWithBotHistoryImplCopyWith<
          _$MyAiCharacterGetChatWithBotHistoryImpl>
      get copyWith => __$$MyAiCharacterGetChatWithBotHistoryImplCopyWithImpl<
          _$MyAiCharacterGetChatWithBotHistoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, bool isPopularBot) getChatBotDetail,
    required TResult Function(int chatBotID, int page, int limit, String search)
        getChatWithBotHistory,
  }) {
    return getChatWithBotHistory(chatBotID, page, limit, search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, bool isPopularBot)? getChatBotDetail,
    TResult? Function(int chatBotID, int page, int limit, String search)?
        getChatWithBotHistory,
  }) {
    return getChatWithBotHistory?.call(chatBotID, page, limit, search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, bool isPopularBot)? getChatBotDetail,
    TResult Function(int chatBotID, int page, int limit, String search)?
        getChatWithBotHistory,
    required TResult orElse(),
  }) {
    if (getChatWithBotHistory != null) {
      return getChatWithBotHistory(chatBotID, page, limit, search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyAiCharacterGetChatBotDetail value)
        getChatBotDetail,
    required TResult Function(MyAiCharacterGetChatWithBotHistory value)
        getChatWithBotHistory,
  }) {
    return getChatWithBotHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyAiCharacterGetChatBotDetail value)? getChatBotDetail,
    TResult? Function(MyAiCharacterGetChatWithBotHistory value)?
        getChatWithBotHistory,
  }) {
    return getChatWithBotHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyAiCharacterGetChatBotDetail value)? getChatBotDetail,
    TResult Function(MyAiCharacterGetChatWithBotHistory value)?
        getChatWithBotHistory,
    required TResult orElse(),
  }) {
    if (getChatWithBotHistory != null) {
      return getChatWithBotHistory(this);
    }
    return orElse();
  }
}

abstract class MyAiCharacterGetChatWithBotHistory
    implements MyAiCharacterEvent {
  const factory MyAiCharacterGetChatWithBotHistory(
      {required final int chatBotID,
      required final int page,
      required final int limit,
      required final String search}) = _$MyAiCharacterGetChatWithBotHistoryImpl;

  int get chatBotID;
  int get page;
  int get limit;
  String get search;
  @JsonKey(ignore: true)
  _$$MyAiCharacterGetChatWithBotHistoryImplCopyWith<
          _$MyAiCharacterGetChatWithBotHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MyAiCharacterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> message, String? title) error,
    required TResult Function(AICharacterBotModel characterBotDetail)
        getChatBotDetailSuccess,
    required TResult Function(List<ChatBotMessageHistoryModel> messagesHistory)
        getChatWithBotHistorySuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> message, String? title)? error,
    TResult? Function(AICharacterBotModel characterBotDetail)?
        getChatBotDetailSuccess,
    TResult? Function(List<ChatBotMessageHistoryModel> messagesHistory)?
        getChatWithBotHistorySuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> message, String? title)? error,
    TResult Function(AICharacterBotModel characterBotDetail)?
        getChatBotDetailSuccess,
    TResult Function(List<ChatBotMessageHistoryModel> messagesHistory)?
        getChatWithBotHistorySuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MyAiCharacterLoading value) loading,
    required TResult Function(MyAiCharacterError value) error,
    required TResult Function(MyAiCharacterGetChatBotDetailSuccess value)
        getChatBotDetailSuccess,
    required TResult Function(MyAiCharacterGetChatWithBotHistorySuccess value)
        getChatWithBotHistorySuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MyAiCharacterLoading value)? loading,
    TResult? Function(MyAiCharacterError value)? error,
    TResult? Function(MyAiCharacterGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
    TResult? Function(MyAiCharacterGetChatWithBotHistorySuccess value)?
        getChatWithBotHistorySuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MyAiCharacterLoading value)? loading,
    TResult Function(MyAiCharacterError value)? error,
    TResult Function(MyAiCharacterGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
    TResult Function(MyAiCharacterGetChatWithBotHistorySuccess value)?
        getChatWithBotHistorySuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyAiCharacterStateCopyWith<$Res> {
  factory $MyAiCharacterStateCopyWith(
          MyAiCharacterState value, $Res Function(MyAiCharacterState) then) =
      _$MyAiCharacterStateCopyWithImpl<$Res, MyAiCharacterState>;
}

/// @nodoc
class _$MyAiCharacterStateCopyWithImpl<$Res, $Val extends MyAiCharacterState>
    implements $MyAiCharacterStateCopyWith<$Res> {
  _$MyAiCharacterStateCopyWithImpl(this._value, this._then);

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
    extends _$MyAiCharacterStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'MyAiCharacterState.initial()';
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
    required TResult Function(List<String> message, String? title) error,
    required TResult Function(AICharacterBotModel characterBotDetail)
        getChatBotDetailSuccess,
    required TResult Function(List<ChatBotMessageHistoryModel> messagesHistory)
        getChatWithBotHistorySuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> message, String? title)? error,
    TResult? Function(AICharacterBotModel characterBotDetail)?
        getChatBotDetailSuccess,
    TResult? Function(List<ChatBotMessageHistoryModel> messagesHistory)?
        getChatWithBotHistorySuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> message, String? title)? error,
    TResult Function(AICharacterBotModel characterBotDetail)?
        getChatBotDetailSuccess,
    TResult Function(List<ChatBotMessageHistoryModel> messagesHistory)?
        getChatWithBotHistorySuccess,
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
    required TResult Function(MyAiCharacterLoading value) loading,
    required TResult Function(MyAiCharacterError value) error,
    required TResult Function(MyAiCharacterGetChatBotDetailSuccess value)
        getChatBotDetailSuccess,
    required TResult Function(MyAiCharacterGetChatWithBotHistorySuccess value)
        getChatWithBotHistorySuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MyAiCharacterLoading value)? loading,
    TResult? Function(MyAiCharacterError value)? error,
    TResult? Function(MyAiCharacterGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
    TResult? Function(MyAiCharacterGetChatWithBotHistorySuccess value)?
        getChatWithBotHistorySuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MyAiCharacterLoading value)? loading,
    TResult Function(MyAiCharacterError value)? error,
    TResult Function(MyAiCharacterGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
    TResult Function(MyAiCharacterGetChatWithBotHistorySuccess value)?
        getChatWithBotHistorySuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MyAiCharacterState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$MyAiCharacterLoadingImplCopyWith<$Res> {
  factory _$$MyAiCharacterLoadingImplCopyWith(_$MyAiCharacterLoadingImpl value,
          $Res Function(_$MyAiCharacterLoadingImpl) then) =
      __$$MyAiCharacterLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MyAiCharacterLoadingImplCopyWithImpl<$Res>
    extends _$MyAiCharacterStateCopyWithImpl<$Res, _$MyAiCharacterLoadingImpl>
    implements _$$MyAiCharacterLoadingImplCopyWith<$Res> {
  __$$MyAiCharacterLoadingImplCopyWithImpl(_$MyAiCharacterLoadingImpl _value,
      $Res Function(_$MyAiCharacterLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MyAiCharacterLoadingImpl implements MyAiCharacterLoading {
  const _$MyAiCharacterLoadingImpl();

  @override
  String toString() {
    return 'MyAiCharacterState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyAiCharacterLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> message, String? title) error,
    required TResult Function(AICharacterBotModel characterBotDetail)
        getChatBotDetailSuccess,
    required TResult Function(List<ChatBotMessageHistoryModel> messagesHistory)
        getChatWithBotHistorySuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> message, String? title)? error,
    TResult? Function(AICharacterBotModel characterBotDetail)?
        getChatBotDetailSuccess,
    TResult? Function(List<ChatBotMessageHistoryModel> messagesHistory)?
        getChatWithBotHistorySuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> message, String? title)? error,
    TResult Function(AICharacterBotModel characterBotDetail)?
        getChatBotDetailSuccess,
    TResult Function(List<ChatBotMessageHistoryModel> messagesHistory)?
        getChatWithBotHistorySuccess,
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
    required TResult Function(MyAiCharacterLoading value) loading,
    required TResult Function(MyAiCharacterError value) error,
    required TResult Function(MyAiCharacterGetChatBotDetailSuccess value)
        getChatBotDetailSuccess,
    required TResult Function(MyAiCharacterGetChatWithBotHistorySuccess value)
        getChatWithBotHistorySuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MyAiCharacterLoading value)? loading,
    TResult? Function(MyAiCharacterError value)? error,
    TResult? Function(MyAiCharacterGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
    TResult? Function(MyAiCharacterGetChatWithBotHistorySuccess value)?
        getChatWithBotHistorySuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MyAiCharacterLoading value)? loading,
    TResult Function(MyAiCharacterError value)? error,
    TResult Function(MyAiCharacterGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
    TResult Function(MyAiCharacterGetChatWithBotHistorySuccess value)?
        getChatWithBotHistorySuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MyAiCharacterLoading implements MyAiCharacterState {
  const factory MyAiCharacterLoading() = _$MyAiCharacterLoadingImpl;
}

/// @nodoc
abstract class _$$MyAiCharacterErrorImplCopyWith<$Res> {
  factory _$$MyAiCharacterErrorImplCopyWith(_$MyAiCharacterErrorImpl value,
          $Res Function(_$MyAiCharacterErrorImpl) then) =
      __$$MyAiCharacterErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> message, String? title});
}

/// @nodoc
class __$$MyAiCharacterErrorImplCopyWithImpl<$Res>
    extends _$MyAiCharacterStateCopyWithImpl<$Res, _$MyAiCharacterErrorImpl>
    implements _$$MyAiCharacterErrorImplCopyWith<$Res> {
  __$$MyAiCharacterErrorImplCopyWithImpl(_$MyAiCharacterErrorImpl _value,
      $Res Function(_$MyAiCharacterErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? title = freezed,
  }) {
    return _then(_$MyAiCharacterErrorImpl(
      message: null == message
          ? _value._message
          : message // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MyAiCharacterErrorImpl implements MyAiCharacterError {
  const _$MyAiCharacterErrorImpl(
      {required final List<String> message, this.title})
      : _message = message;

  final List<String> _message;
  @override
  List<String> get message {
    if (_message is EqualUnmodifiableListView) return _message;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_message);
  }

  @override
  final String? title;

  @override
  String toString() {
    return 'MyAiCharacterState.error(message: $message, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyAiCharacterErrorImpl &&
            const DeepCollectionEquality().equals(other._message, _message) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_message), title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyAiCharacterErrorImplCopyWith<_$MyAiCharacterErrorImpl> get copyWith =>
      __$$MyAiCharacterErrorImplCopyWithImpl<_$MyAiCharacterErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> message, String? title) error,
    required TResult Function(AICharacterBotModel characterBotDetail)
        getChatBotDetailSuccess,
    required TResult Function(List<ChatBotMessageHistoryModel> messagesHistory)
        getChatWithBotHistorySuccess,
  }) {
    return error(message, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> message, String? title)? error,
    TResult? Function(AICharacterBotModel characterBotDetail)?
        getChatBotDetailSuccess,
    TResult? Function(List<ChatBotMessageHistoryModel> messagesHistory)?
        getChatWithBotHistorySuccess,
  }) {
    return error?.call(message, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> message, String? title)? error,
    TResult Function(AICharacterBotModel characterBotDetail)?
        getChatBotDetailSuccess,
    TResult Function(List<ChatBotMessageHistoryModel> messagesHistory)?
        getChatWithBotHistorySuccess,
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
    required TResult Function(MyAiCharacterLoading value) loading,
    required TResult Function(MyAiCharacterError value) error,
    required TResult Function(MyAiCharacterGetChatBotDetailSuccess value)
        getChatBotDetailSuccess,
    required TResult Function(MyAiCharacterGetChatWithBotHistorySuccess value)
        getChatWithBotHistorySuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MyAiCharacterLoading value)? loading,
    TResult? Function(MyAiCharacterError value)? error,
    TResult? Function(MyAiCharacterGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
    TResult? Function(MyAiCharacterGetChatWithBotHistorySuccess value)?
        getChatWithBotHistorySuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MyAiCharacterLoading value)? loading,
    TResult Function(MyAiCharacterError value)? error,
    TResult Function(MyAiCharacterGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
    TResult Function(MyAiCharacterGetChatWithBotHistorySuccess value)?
        getChatWithBotHistorySuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MyAiCharacterError implements MyAiCharacterState {
  const factory MyAiCharacterError(
      {required final List<String> message,
      final String? title}) = _$MyAiCharacterErrorImpl;

  List<String> get message;
  String? get title;
  @JsonKey(ignore: true)
  _$$MyAiCharacterErrorImplCopyWith<_$MyAiCharacterErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MyAiCharacterGetChatBotDetailSuccessImplCopyWith<$Res> {
  factory _$$MyAiCharacterGetChatBotDetailSuccessImplCopyWith(
          _$MyAiCharacterGetChatBotDetailSuccessImpl value,
          $Res Function(_$MyAiCharacterGetChatBotDetailSuccessImpl) then) =
      __$$MyAiCharacterGetChatBotDetailSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AICharacterBotModel characterBotDetail});

  $AICharacterBotModelCopyWith<$Res> get characterBotDetail;
}

/// @nodoc
class __$$MyAiCharacterGetChatBotDetailSuccessImplCopyWithImpl<$Res>
    extends _$MyAiCharacterStateCopyWithImpl<$Res,
        _$MyAiCharacterGetChatBotDetailSuccessImpl>
    implements _$$MyAiCharacterGetChatBotDetailSuccessImplCopyWith<$Res> {
  __$$MyAiCharacterGetChatBotDetailSuccessImplCopyWithImpl(
      _$MyAiCharacterGetChatBotDetailSuccessImpl _value,
      $Res Function(_$MyAiCharacterGetChatBotDetailSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterBotDetail = null,
  }) {
    return _then(_$MyAiCharacterGetChatBotDetailSuccessImpl(
      null == characterBotDetail
          ? _value.characterBotDetail
          : characterBotDetail // ignore: cast_nullable_to_non_nullable
              as AICharacterBotModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AICharacterBotModelCopyWith<$Res> get characterBotDetail {
    return $AICharacterBotModelCopyWith<$Res>(_value.characterBotDetail,
        (value) {
      return _then(_value.copyWith(characterBotDetail: value));
    });
  }
}

/// @nodoc

class _$MyAiCharacterGetChatBotDetailSuccessImpl
    implements MyAiCharacterGetChatBotDetailSuccess {
  const _$MyAiCharacterGetChatBotDetailSuccessImpl(this.characterBotDetail);

  @override
  final AICharacterBotModel characterBotDetail;

  @override
  String toString() {
    return 'MyAiCharacterState.getChatBotDetailSuccess(characterBotDetail: $characterBotDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyAiCharacterGetChatBotDetailSuccessImpl &&
            (identical(other.characterBotDetail, characterBotDetail) ||
                other.characterBotDetail == characterBotDetail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characterBotDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyAiCharacterGetChatBotDetailSuccessImplCopyWith<
          _$MyAiCharacterGetChatBotDetailSuccessImpl>
      get copyWith => __$$MyAiCharacterGetChatBotDetailSuccessImplCopyWithImpl<
          _$MyAiCharacterGetChatBotDetailSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> message, String? title) error,
    required TResult Function(AICharacterBotModel characterBotDetail)
        getChatBotDetailSuccess,
    required TResult Function(List<ChatBotMessageHistoryModel> messagesHistory)
        getChatWithBotHistorySuccess,
  }) {
    return getChatBotDetailSuccess(characterBotDetail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> message, String? title)? error,
    TResult? Function(AICharacterBotModel characterBotDetail)?
        getChatBotDetailSuccess,
    TResult? Function(List<ChatBotMessageHistoryModel> messagesHistory)?
        getChatWithBotHistorySuccess,
  }) {
    return getChatBotDetailSuccess?.call(characterBotDetail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> message, String? title)? error,
    TResult Function(AICharacterBotModel characterBotDetail)?
        getChatBotDetailSuccess,
    TResult Function(List<ChatBotMessageHistoryModel> messagesHistory)?
        getChatWithBotHistorySuccess,
    required TResult orElse(),
  }) {
    if (getChatBotDetailSuccess != null) {
      return getChatBotDetailSuccess(characterBotDetail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MyAiCharacterLoading value) loading,
    required TResult Function(MyAiCharacterError value) error,
    required TResult Function(MyAiCharacterGetChatBotDetailSuccess value)
        getChatBotDetailSuccess,
    required TResult Function(MyAiCharacterGetChatWithBotHistorySuccess value)
        getChatWithBotHistorySuccess,
  }) {
    return getChatBotDetailSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MyAiCharacterLoading value)? loading,
    TResult? Function(MyAiCharacterError value)? error,
    TResult? Function(MyAiCharacterGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
    TResult? Function(MyAiCharacterGetChatWithBotHistorySuccess value)?
        getChatWithBotHistorySuccess,
  }) {
    return getChatBotDetailSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MyAiCharacterLoading value)? loading,
    TResult Function(MyAiCharacterError value)? error,
    TResult Function(MyAiCharacterGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
    TResult Function(MyAiCharacterGetChatWithBotHistorySuccess value)?
        getChatWithBotHistorySuccess,
    required TResult orElse(),
  }) {
    if (getChatBotDetailSuccess != null) {
      return getChatBotDetailSuccess(this);
    }
    return orElse();
  }
}

abstract class MyAiCharacterGetChatBotDetailSuccess
    implements MyAiCharacterState {
  const factory MyAiCharacterGetChatBotDetailSuccess(
          final AICharacterBotModel characterBotDetail) =
      _$MyAiCharacterGetChatBotDetailSuccessImpl;

  AICharacterBotModel get characterBotDetail;
  @JsonKey(ignore: true)
  _$$MyAiCharacterGetChatBotDetailSuccessImplCopyWith<
          _$MyAiCharacterGetChatBotDetailSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MyAiCharacterGetChatWithBotHistorySuccessImplCopyWith<$Res> {
  factory _$$MyAiCharacterGetChatWithBotHistorySuccessImplCopyWith(
          _$MyAiCharacterGetChatWithBotHistorySuccessImpl value,
          $Res Function(_$MyAiCharacterGetChatWithBotHistorySuccessImpl) then) =
      __$$MyAiCharacterGetChatWithBotHistorySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatBotMessageHistoryModel> messagesHistory});
}

/// @nodoc
class __$$MyAiCharacterGetChatWithBotHistorySuccessImplCopyWithImpl<$Res>
    extends _$MyAiCharacterStateCopyWithImpl<$Res,
        _$MyAiCharacterGetChatWithBotHistorySuccessImpl>
    implements _$$MyAiCharacterGetChatWithBotHistorySuccessImplCopyWith<$Res> {
  __$$MyAiCharacterGetChatWithBotHistorySuccessImplCopyWithImpl(
      _$MyAiCharacterGetChatWithBotHistorySuccessImpl _value,
      $Res Function(_$MyAiCharacterGetChatWithBotHistorySuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messagesHistory = null,
  }) {
    return _then(_$MyAiCharacterGetChatWithBotHistorySuccessImpl(
      null == messagesHistory
          ? _value._messagesHistory
          : messagesHistory // ignore: cast_nullable_to_non_nullable
              as List<ChatBotMessageHistoryModel>,
    ));
  }
}

/// @nodoc

class _$MyAiCharacterGetChatWithBotHistorySuccessImpl
    implements MyAiCharacterGetChatWithBotHistorySuccess {
  const _$MyAiCharacterGetChatWithBotHistorySuccessImpl(
      final List<ChatBotMessageHistoryModel> messagesHistory)
      : _messagesHistory = messagesHistory;

  final List<ChatBotMessageHistoryModel> _messagesHistory;
  @override
  List<ChatBotMessageHistoryModel> get messagesHistory {
    if (_messagesHistory is EqualUnmodifiableListView) return _messagesHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messagesHistory);
  }

  @override
  String toString() {
    return 'MyAiCharacterState.getChatWithBotHistorySuccess(messagesHistory: $messagesHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyAiCharacterGetChatWithBotHistorySuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._messagesHistory, _messagesHistory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_messagesHistory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyAiCharacterGetChatWithBotHistorySuccessImplCopyWith<
          _$MyAiCharacterGetChatWithBotHistorySuccessImpl>
      get copyWith =>
          __$$MyAiCharacterGetChatWithBotHistorySuccessImplCopyWithImpl<
                  _$MyAiCharacterGetChatWithBotHistorySuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> message, String? title) error,
    required TResult Function(AICharacterBotModel characterBotDetail)
        getChatBotDetailSuccess,
    required TResult Function(List<ChatBotMessageHistoryModel> messagesHistory)
        getChatWithBotHistorySuccess,
  }) {
    return getChatWithBotHistorySuccess(messagesHistory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> message, String? title)? error,
    TResult? Function(AICharacterBotModel characterBotDetail)?
        getChatBotDetailSuccess,
    TResult? Function(List<ChatBotMessageHistoryModel> messagesHistory)?
        getChatWithBotHistorySuccess,
  }) {
    return getChatWithBotHistorySuccess?.call(messagesHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> message, String? title)? error,
    TResult Function(AICharacterBotModel characterBotDetail)?
        getChatBotDetailSuccess,
    TResult Function(List<ChatBotMessageHistoryModel> messagesHistory)?
        getChatWithBotHistorySuccess,
    required TResult orElse(),
  }) {
    if (getChatWithBotHistorySuccess != null) {
      return getChatWithBotHistorySuccess(messagesHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MyAiCharacterLoading value) loading,
    required TResult Function(MyAiCharacterError value) error,
    required TResult Function(MyAiCharacterGetChatBotDetailSuccess value)
        getChatBotDetailSuccess,
    required TResult Function(MyAiCharacterGetChatWithBotHistorySuccess value)
        getChatWithBotHistorySuccess,
  }) {
    return getChatWithBotHistorySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MyAiCharacterLoading value)? loading,
    TResult? Function(MyAiCharacterError value)? error,
    TResult? Function(MyAiCharacterGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
    TResult? Function(MyAiCharacterGetChatWithBotHistorySuccess value)?
        getChatWithBotHistorySuccess,
  }) {
    return getChatWithBotHistorySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MyAiCharacterLoading value)? loading,
    TResult Function(MyAiCharacterError value)? error,
    TResult Function(MyAiCharacterGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
    TResult Function(MyAiCharacterGetChatWithBotHistorySuccess value)?
        getChatWithBotHistorySuccess,
    required TResult orElse(),
  }) {
    if (getChatWithBotHistorySuccess != null) {
      return getChatWithBotHistorySuccess(this);
    }
    return orElse();
  }
}

abstract class MyAiCharacterGetChatWithBotHistorySuccess
    implements MyAiCharacterState {
  const factory MyAiCharacterGetChatWithBotHistorySuccess(
          final List<ChatBotMessageHistoryModel> messagesHistory) =
      _$MyAiCharacterGetChatWithBotHistorySuccessImpl;

  List<ChatBotMessageHistoryModel> get messagesHistory;
  @JsonKey(ignore: true)
  _$$MyAiCharacterGetChatWithBotHistorySuccessImplCopyWith<
          _$MyAiCharacterGetChatWithBotHistorySuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
