// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_with_ai_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatWithAiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ChatWIthAIModel data) sendMessage,
    required TResult Function(int chatBotID) loadBotAI,
    required TResult Function(int chatBotID) getChatBotDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ChatWIthAIModel data)? sendMessage,
    TResult? Function(int chatBotID)? loadBotAI,
    TResult? Function(int chatBotID)? getChatBotDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ChatWIthAIModel data)? sendMessage,
    TResult Function(int chatBotID)? loadBotAI,
    TResult Function(int chatBotID)? getChatBotDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChatWithAISendMessage value) sendMessage,
    required TResult Function(ChatWithAILoadBotAI value) loadBotAI,
    required TResult Function(ChatWithAIGetChatBotDetail value)
        getChatBotDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChatWithAISendMessage value)? sendMessage,
    TResult? Function(ChatWithAILoadBotAI value)? loadBotAI,
    TResult? Function(ChatWithAIGetChatBotDetail value)? getChatBotDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChatWithAISendMessage value)? sendMessage,
    TResult Function(ChatWithAILoadBotAI value)? loadBotAI,
    TResult Function(ChatWithAIGetChatBotDetail value)? getChatBotDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatWithAiEventCopyWith<$Res> {
  factory $ChatWithAiEventCopyWith(
          ChatWithAiEvent value, $Res Function(ChatWithAiEvent) then) =
      _$ChatWithAiEventCopyWithImpl<$Res, ChatWithAiEvent>;
}

/// @nodoc
class _$ChatWithAiEventCopyWithImpl<$Res, $Val extends ChatWithAiEvent>
    implements $ChatWithAiEventCopyWith<$Res> {
  _$ChatWithAiEventCopyWithImpl(this._value, this._then);

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
    extends _$ChatWithAiEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'ChatWithAiEvent.started()';
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
    required TResult Function(ChatWIthAIModel data) sendMessage,
    required TResult Function(int chatBotID) loadBotAI,
    required TResult Function(int chatBotID) getChatBotDetail,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ChatWIthAIModel data)? sendMessage,
    TResult? Function(int chatBotID)? loadBotAI,
    TResult? Function(int chatBotID)? getChatBotDetail,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ChatWIthAIModel data)? sendMessage,
    TResult Function(int chatBotID)? loadBotAI,
    TResult Function(int chatBotID)? getChatBotDetail,
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
    required TResult Function(ChatWithAISendMessage value) sendMessage,
    required TResult Function(ChatWithAILoadBotAI value) loadBotAI,
    required TResult Function(ChatWithAIGetChatBotDetail value)
        getChatBotDetail,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChatWithAISendMessage value)? sendMessage,
    TResult? Function(ChatWithAILoadBotAI value)? loadBotAI,
    TResult? Function(ChatWithAIGetChatBotDetail value)? getChatBotDetail,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChatWithAISendMessage value)? sendMessage,
    TResult Function(ChatWithAILoadBotAI value)? loadBotAI,
    TResult Function(ChatWithAIGetChatBotDetail value)? getChatBotDetail,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatWithAiEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ChatWithAISendMessageImplCopyWith<$Res> {
  factory _$$ChatWithAISendMessageImplCopyWith(
          _$ChatWithAISendMessageImpl value,
          $Res Function(_$ChatWithAISendMessageImpl) then) =
      __$$ChatWithAISendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatWIthAIModel data});

  $ChatWIthAIModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$ChatWithAISendMessageImplCopyWithImpl<$Res>
    extends _$ChatWithAiEventCopyWithImpl<$Res, _$ChatWithAISendMessageImpl>
    implements _$$ChatWithAISendMessageImplCopyWith<$Res> {
  __$$ChatWithAISendMessageImplCopyWithImpl(_$ChatWithAISendMessageImpl _value,
      $Res Function(_$ChatWithAISendMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ChatWithAISendMessageImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatWIthAIModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatWIthAIModelCopyWith<$Res> get data {
    return $ChatWIthAIModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$ChatWithAISendMessageImpl implements ChatWithAISendMessage {
  const _$ChatWithAISendMessageImpl(this.data);

  @override
  final ChatWIthAIModel data;

  @override
  String toString() {
    return 'ChatWithAiEvent.sendMessage(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatWithAISendMessageImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatWithAISendMessageImplCopyWith<_$ChatWithAISendMessageImpl>
      get copyWith => __$$ChatWithAISendMessageImplCopyWithImpl<
          _$ChatWithAISendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ChatWIthAIModel data) sendMessage,
    required TResult Function(int chatBotID) loadBotAI,
    required TResult Function(int chatBotID) getChatBotDetail,
  }) {
    return sendMessage(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ChatWIthAIModel data)? sendMessage,
    TResult? Function(int chatBotID)? loadBotAI,
    TResult? Function(int chatBotID)? getChatBotDetail,
  }) {
    return sendMessage?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ChatWIthAIModel data)? sendMessage,
    TResult Function(int chatBotID)? loadBotAI,
    TResult Function(int chatBotID)? getChatBotDetail,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChatWithAISendMessage value) sendMessage,
    required TResult Function(ChatWithAILoadBotAI value) loadBotAI,
    required TResult Function(ChatWithAIGetChatBotDetail value)
        getChatBotDetail,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChatWithAISendMessage value)? sendMessage,
    TResult? Function(ChatWithAILoadBotAI value)? loadBotAI,
    TResult? Function(ChatWithAIGetChatBotDetail value)? getChatBotDetail,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChatWithAISendMessage value)? sendMessage,
    TResult Function(ChatWithAILoadBotAI value)? loadBotAI,
    TResult Function(ChatWithAIGetChatBotDetail value)? getChatBotDetail,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class ChatWithAISendMessage implements ChatWithAiEvent {
  const factory ChatWithAISendMessage(final ChatWIthAIModel data) =
      _$ChatWithAISendMessageImpl;

  ChatWIthAIModel get data;
  @JsonKey(ignore: true)
  _$$ChatWithAISendMessageImplCopyWith<_$ChatWithAISendMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatWithAILoadBotAIImplCopyWith<$Res> {
  factory _$$ChatWithAILoadBotAIImplCopyWith(_$ChatWithAILoadBotAIImpl value,
          $Res Function(_$ChatWithAILoadBotAIImpl) then) =
      __$$ChatWithAILoadBotAIImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int chatBotID});
}

/// @nodoc
class __$$ChatWithAILoadBotAIImplCopyWithImpl<$Res>
    extends _$ChatWithAiEventCopyWithImpl<$Res, _$ChatWithAILoadBotAIImpl>
    implements _$$ChatWithAILoadBotAIImplCopyWith<$Res> {
  __$$ChatWithAILoadBotAIImplCopyWithImpl(_$ChatWithAILoadBotAIImpl _value,
      $Res Function(_$ChatWithAILoadBotAIImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatBotID = null,
  }) {
    return _then(_$ChatWithAILoadBotAIImpl(
      null == chatBotID
          ? _value.chatBotID
          : chatBotID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChatWithAILoadBotAIImpl implements ChatWithAILoadBotAI {
  const _$ChatWithAILoadBotAIImpl(this.chatBotID);

  @override
  final int chatBotID;

  @override
  String toString() {
    return 'ChatWithAiEvent.loadBotAI(chatBotID: $chatBotID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatWithAILoadBotAIImpl &&
            (identical(other.chatBotID, chatBotID) ||
                other.chatBotID == chatBotID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatBotID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatWithAILoadBotAIImplCopyWith<_$ChatWithAILoadBotAIImpl> get copyWith =>
      __$$ChatWithAILoadBotAIImplCopyWithImpl<_$ChatWithAILoadBotAIImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ChatWIthAIModel data) sendMessage,
    required TResult Function(int chatBotID) loadBotAI,
    required TResult Function(int chatBotID) getChatBotDetail,
  }) {
    return loadBotAI(chatBotID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ChatWIthAIModel data)? sendMessage,
    TResult? Function(int chatBotID)? loadBotAI,
    TResult? Function(int chatBotID)? getChatBotDetail,
  }) {
    return loadBotAI?.call(chatBotID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ChatWIthAIModel data)? sendMessage,
    TResult Function(int chatBotID)? loadBotAI,
    TResult Function(int chatBotID)? getChatBotDetail,
    required TResult orElse(),
  }) {
    if (loadBotAI != null) {
      return loadBotAI(chatBotID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChatWithAISendMessage value) sendMessage,
    required TResult Function(ChatWithAILoadBotAI value) loadBotAI,
    required TResult Function(ChatWithAIGetChatBotDetail value)
        getChatBotDetail,
  }) {
    return loadBotAI(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChatWithAISendMessage value)? sendMessage,
    TResult? Function(ChatWithAILoadBotAI value)? loadBotAI,
    TResult? Function(ChatWithAIGetChatBotDetail value)? getChatBotDetail,
  }) {
    return loadBotAI?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChatWithAISendMessage value)? sendMessage,
    TResult Function(ChatWithAILoadBotAI value)? loadBotAI,
    TResult Function(ChatWithAIGetChatBotDetail value)? getChatBotDetail,
    required TResult orElse(),
  }) {
    if (loadBotAI != null) {
      return loadBotAI(this);
    }
    return orElse();
  }
}

abstract class ChatWithAILoadBotAI implements ChatWithAiEvent {
  const factory ChatWithAILoadBotAI(final int chatBotID) =
      _$ChatWithAILoadBotAIImpl;

  int get chatBotID;
  @JsonKey(ignore: true)
  _$$ChatWithAILoadBotAIImplCopyWith<_$ChatWithAILoadBotAIImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatWithAIGetChatBotDetailImplCopyWith<$Res> {
  factory _$$ChatWithAIGetChatBotDetailImplCopyWith(
          _$ChatWithAIGetChatBotDetailImpl value,
          $Res Function(_$ChatWithAIGetChatBotDetailImpl) then) =
      __$$ChatWithAIGetChatBotDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int chatBotID});
}

/// @nodoc
class __$$ChatWithAIGetChatBotDetailImplCopyWithImpl<$Res>
    extends _$ChatWithAiEventCopyWithImpl<$Res,
        _$ChatWithAIGetChatBotDetailImpl>
    implements _$$ChatWithAIGetChatBotDetailImplCopyWith<$Res> {
  __$$ChatWithAIGetChatBotDetailImplCopyWithImpl(
      _$ChatWithAIGetChatBotDetailImpl _value,
      $Res Function(_$ChatWithAIGetChatBotDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatBotID = null,
  }) {
    return _then(_$ChatWithAIGetChatBotDetailImpl(
      null == chatBotID
          ? _value.chatBotID
          : chatBotID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChatWithAIGetChatBotDetailImpl implements ChatWithAIGetChatBotDetail {
  const _$ChatWithAIGetChatBotDetailImpl(this.chatBotID);

  @override
  final int chatBotID;

  @override
  String toString() {
    return 'ChatWithAiEvent.getChatBotDetail(chatBotID: $chatBotID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatWithAIGetChatBotDetailImpl &&
            (identical(other.chatBotID, chatBotID) ||
                other.chatBotID == chatBotID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatBotID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatWithAIGetChatBotDetailImplCopyWith<_$ChatWithAIGetChatBotDetailImpl>
      get copyWith => __$$ChatWithAIGetChatBotDetailImplCopyWithImpl<
          _$ChatWithAIGetChatBotDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ChatWIthAIModel data) sendMessage,
    required TResult Function(int chatBotID) loadBotAI,
    required TResult Function(int chatBotID) getChatBotDetail,
  }) {
    return getChatBotDetail(chatBotID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ChatWIthAIModel data)? sendMessage,
    TResult? Function(int chatBotID)? loadBotAI,
    TResult? Function(int chatBotID)? getChatBotDetail,
  }) {
    return getChatBotDetail?.call(chatBotID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ChatWIthAIModel data)? sendMessage,
    TResult Function(int chatBotID)? loadBotAI,
    TResult Function(int chatBotID)? getChatBotDetail,
    required TResult orElse(),
  }) {
    if (getChatBotDetail != null) {
      return getChatBotDetail(chatBotID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChatWithAISendMessage value) sendMessage,
    required TResult Function(ChatWithAILoadBotAI value) loadBotAI,
    required TResult Function(ChatWithAIGetChatBotDetail value)
        getChatBotDetail,
  }) {
    return getChatBotDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChatWithAISendMessage value)? sendMessage,
    TResult? Function(ChatWithAILoadBotAI value)? loadBotAI,
    TResult? Function(ChatWithAIGetChatBotDetail value)? getChatBotDetail,
  }) {
    return getChatBotDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChatWithAISendMessage value)? sendMessage,
    TResult Function(ChatWithAILoadBotAI value)? loadBotAI,
    TResult Function(ChatWithAIGetChatBotDetail value)? getChatBotDetail,
    required TResult orElse(),
  }) {
    if (getChatBotDetail != null) {
      return getChatBotDetail(this);
    }
    return orElse();
  }
}

abstract class ChatWithAIGetChatBotDetail implements ChatWithAiEvent {
  const factory ChatWithAIGetChatBotDetail(final int chatBotID) =
      _$ChatWithAIGetChatBotDetailImpl;

  int get chatBotID;
  @JsonKey(ignore: true)
  _$$ChatWithAIGetChatBotDetailImplCopyWith<_$ChatWithAIGetChatBotDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatWithAiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
    required TResult Function(String msg) sendMessageSuccess,
    required TResult Function() loadBotAISuccess,
    required TResult Function(AICharacterBotModel aiCharacterBot)
        getChatBotDetailSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
    TResult? Function(String msg)? sendMessageSuccess,
    TResult? Function()? loadBotAISuccess,
    TResult? Function(AICharacterBotModel aiCharacterBot)?
        getChatBotDetailSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    TResult Function(String msg)? sendMessageSuccess,
    TResult Function()? loadBotAISuccess,
    TResult Function(AICharacterBotModel aiCharacterBot)?
        getChatBotDetailSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChatWithAILoading value) loading,
    required TResult Function(ChatWithAIError value) error,
    required TResult Function(ChatWithAISendMessageSuccess value)
        sendMessageSuccess,
    required TResult Function(ChatWithAILoadBotAISuccess value)
        loadBotAISuccess,
    required TResult Function(ChatWithAIGetChatBotDetailSuccess value)
        getChatBotDetailSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChatWithAILoading value)? loading,
    TResult? Function(ChatWithAIError value)? error,
    TResult? Function(ChatWithAISendMessageSuccess value)? sendMessageSuccess,
    TResult? Function(ChatWithAILoadBotAISuccess value)? loadBotAISuccess,
    TResult? Function(ChatWithAIGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChatWithAILoading value)? loading,
    TResult Function(ChatWithAIError value)? error,
    TResult Function(ChatWithAISendMessageSuccess value)? sendMessageSuccess,
    TResult Function(ChatWithAILoadBotAISuccess value)? loadBotAISuccess,
    TResult Function(ChatWithAIGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatWithAiStateCopyWith<$Res> {
  factory $ChatWithAiStateCopyWith(
          ChatWithAiState value, $Res Function(ChatWithAiState) then) =
      _$ChatWithAiStateCopyWithImpl<$Res, ChatWithAiState>;
}

/// @nodoc
class _$ChatWithAiStateCopyWithImpl<$Res, $Val extends ChatWithAiState>
    implements $ChatWithAiStateCopyWith<$Res> {
  _$ChatWithAiStateCopyWithImpl(this._value, this._then);

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
    extends _$ChatWithAiStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ChatWithAiState.initial()';
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
    required TResult Function(String msg) sendMessageSuccess,
    required TResult Function() loadBotAISuccess,
    required TResult Function(AICharacterBotModel aiCharacterBot)
        getChatBotDetailSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
    TResult? Function(String msg)? sendMessageSuccess,
    TResult? Function()? loadBotAISuccess,
    TResult? Function(AICharacterBotModel aiCharacterBot)?
        getChatBotDetailSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    TResult Function(String msg)? sendMessageSuccess,
    TResult Function()? loadBotAISuccess,
    TResult Function(AICharacterBotModel aiCharacterBot)?
        getChatBotDetailSuccess,
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
    required TResult Function(ChatWithAILoading value) loading,
    required TResult Function(ChatWithAIError value) error,
    required TResult Function(ChatWithAISendMessageSuccess value)
        sendMessageSuccess,
    required TResult Function(ChatWithAILoadBotAISuccess value)
        loadBotAISuccess,
    required TResult Function(ChatWithAIGetChatBotDetailSuccess value)
        getChatBotDetailSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChatWithAILoading value)? loading,
    TResult? Function(ChatWithAIError value)? error,
    TResult? Function(ChatWithAISendMessageSuccess value)? sendMessageSuccess,
    TResult? Function(ChatWithAILoadBotAISuccess value)? loadBotAISuccess,
    TResult? Function(ChatWithAIGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChatWithAILoading value)? loading,
    TResult Function(ChatWithAIError value)? error,
    TResult Function(ChatWithAISendMessageSuccess value)? sendMessageSuccess,
    TResult Function(ChatWithAILoadBotAISuccess value)? loadBotAISuccess,
    TResult Function(ChatWithAIGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatWithAiState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ChatWithAILoadingImplCopyWith<$Res> {
  factory _$$ChatWithAILoadingImplCopyWith(_$ChatWithAILoadingImpl value,
          $Res Function(_$ChatWithAILoadingImpl) then) =
      __$$ChatWithAILoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatWithAILoadingImplCopyWithImpl<$Res>
    extends _$ChatWithAiStateCopyWithImpl<$Res, _$ChatWithAILoadingImpl>
    implements _$$ChatWithAILoadingImplCopyWith<$Res> {
  __$$ChatWithAILoadingImplCopyWithImpl(_$ChatWithAILoadingImpl _value,
      $Res Function(_$ChatWithAILoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatWithAILoadingImpl implements ChatWithAILoading {
  const _$ChatWithAILoadingImpl();

  @override
  String toString() {
    return 'ChatWithAiState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatWithAILoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
    required TResult Function(String msg) sendMessageSuccess,
    required TResult Function() loadBotAISuccess,
    required TResult Function(AICharacterBotModel aiCharacterBot)
        getChatBotDetailSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
    TResult? Function(String msg)? sendMessageSuccess,
    TResult? Function()? loadBotAISuccess,
    TResult? Function(AICharacterBotModel aiCharacterBot)?
        getChatBotDetailSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    TResult Function(String msg)? sendMessageSuccess,
    TResult Function()? loadBotAISuccess,
    TResult Function(AICharacterBotModel aiCharacterBot)?
        getChatBotDetailSuccess,
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
    required TResult Function(ChatWithAILoading value) loading,
    required TResult Function(ChatWithAIError value) error,
    required TResult Function(ChatWithAISendMessageSuccess value)
        sendMessageSuccess,
    required TResult Function(ChatWithAILoadBotAISuccess value)
        loadBotAISuccess,
    required TResult Function(ChatWithAIGetChatBotDetailSuccess value)
        getChatBotDetailSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChatWithAILoading value)? loading,
    TResult? Function(ChatWithAIError value)? error,
    TResult? Function(ChatWithAISendMessageSuccess value)? sendMessageSuccess,
    TResult? Function(ChatWithAILoadBotAISuccess value)? loadBotAISuccess,
    TResult? Function(ChatWithAIGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChatWithAILoading value)? loading,
    TResult Function(ChatWithAIError value)? error,
    TResult Function(ChatWithAISendMessageSuccess value)? sendMessageSuccess,
    TResult Function(ChatWithAILoadBotAISuccess value)? loadBotAISuccess,
    TResult Function(ChatWithAIGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChatWithAILoading implements ChatWithAiState {
  const factory ChatWithAILoading() = _$ChatWithAILoadingImpl;
}

/// @nodoc
abstract class _$$ChatWithAIErrorImplCopyWith<$Res> {
  factory _$$ChatWithAIErrorImplCopyWith(_$ChatWithAIErrorImpl value,
          $Res Function(_$ChatWithAIErrorImpl) then) =
      __$$ChatWithAIErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String msg});
}

/// @nodoc
class __$$ChatWithAIErrorImplCopyWithImpl<$Res>
    extends _$ChatWithAiStateCopyWithImpl<$Res, _$ChatWithAIErrorImpl>
    implements _$$ChatWithAIErrorImplCopyWith<$Res> {
  __$$ChatWithAIErrorImplCopyWithImpl(
      _$ChatWithAIErrorImpl _value, $Res Function(_$ChatWithAIErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? msg = null,
  }) {
    return _then(_$ChatWithAIErrorImpl(
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

class _$ChatWithAIErrorImpl implements ChatWithAIError {
  const _$ChatWithAIErrorImpl({required this.title, required this.msg});

  @override
  final String title;
  @override
  final String msg;

  @override
  String toString() {
    return 'ChatWithAiState.error(title: $title, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatWithAIErrorImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatWithAIErrorImplCopyWith<_$ChatWithAIErrorImpl> get copyWith =>
      __$$ChatWithAIErrorImplCopyWithImpl<_$ChatWithAIErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
    required TResult Function(String msg) sendMessageSuccess,
    required TResult Function() loadBotAISuccess,
    required TResult Function(AICharacterBotModel aiCharacterBot)
        getChatBotDetailSuccess,
  }) {
    return error(title, msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
    TResult? Function(String msg)? sendMessageSuccess,
    TResult? Function()? loadBotAISuccess,
    TResult? Function(AICharacterBotModel aiCharacterBot)?
        getChatBotDetailSuccess,
  }) {
    return error?.call(title, msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    TResult Function(String msg)? sendMessageSuccess,
    TResult Function()? loadBotAISuccess,
    TResult Function(AICharacterBotModel aiCharacterBot)?
        getChatBotDetailSuccess,
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
    required TResult Function(ChatWithAILoading value) loading,
    required TResult Function(ChatWithAIError value) error,
    required TResult Function(ChatWithAISendMessageSuccess value)
        sendMessageSuccess,
    required TResult Function(ChatWithAILoadBotAISuccess value)
        loadBotAISuccess,
    required TResult Function(ChatWithAIGetChatBotDetailSuccess value)
        getChatBotDetailSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChatWithAILoading value)? loading,
    TResult? Function(ChatWithAIError value)? error,
    TResult? Function(ChatWithAISendMessageSuccess value)? sendMessageSuccess,
    TResult? Function(ChatWithAILoadBotAISuccess value)? loadBotAISuccess,
    TResult? Function(ChatWithAIGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChatWithAILoading value)? loading,
    TResult Function(ChatWithAIError value)? error,
    TResult Function(ChatWithAISendMessageSuccess value)? sendMessageSuccess,
    TResult Function(ChatWithAILoadBotAISuccess value)? loadBotAISuccess,
    TResult Function(ChatWithAIGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChatWithAIError implements ChatWithAiState {
  const factory ChatWithAIError(
      {required final String title,
      required final String msg}) = _$ChatWithAIErrorImpl;

  String get title;
  String get msg;
  @JsonKey(ignore: true)
  _$$ChatWithAIErrorImplCopyWith<_$ChatWithAIErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatWithAISendMessageSuccessImplCopyWith<$Res> {
  factory _$$ChatWithAISendMessageSuccessImplCopyWith(
          _$ChatWithAISendMessageSuccessImpl value,
          $Res Function(_$ChatWithAISendMessageSuccessImpl) then) =
      __$$ChatWithAISendMessageSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ChatWithAISendMessageSuccessImplCopyWithImpl<$Res>
    extends _$ChatWithAiStateCopyWithImpl<$Res,
        _$ChatWithAISendMessageSuccessImpl>
    implements _$$ChatWithAISendMessageSuccessImplCopyWith<$Res> {
  __$$ChatWithAISendMessageSuccessImplCopyWithImpl(
      _$ChatWithAISendMessageSuccessImpl _value,
      $Res Function(_$ChatWithAISendMessageSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ChatWithAISendMessageSuccessImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatWithAISendMessageSuccessImpl
    implements ChatWithAISendMessageSuccess {
  const _$ChatWithAISendMessageSuccessImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'ChatWithAiState.sendMessageSuccess(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatWithAISendMessageSuccessImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatWithAISendMessageSuccessImplCopyWith<
          _$ChatWithAISendMessageSuccessImpl>
      get copyWith => __$$ChatWithAISendMessageSuccessImplCopyWithImpl<
          _$ChatWithAISendMessageSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
    required TResult Function(String msg) sendMessageSuccess,
    required TResult Function() loadBotAISuccess,
    required TResult Function(AICharacterBotModel aiCharacterBot)
        getChatBotDetailSuccess,
  }) {
    return sendMessageSuccess(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
    TResult? Function(String msg)? sendMessageSuccess,
    TResult? Function()? loadBotAISuccess,
    TResult? Function(AICharacterBotModel aiCharacterBot)?
        getChatBotDetailSuccess,
  }) {
    return sendMessageSuccess?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    TResult Function(String msg)? sendMessageSuccess,
    TResult Function()? loadBotAISuccess,
    TResult Function(AICharacterBotModel aiCharacterBot)?
        getChatBotDetailSuccess,
    required TResult orElse(),
  }) {
    if (sendMessageSuccess != null) {
      return sendMessageSuccess(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChatWithAILoading value) loading,
    required TResult Function(ChatWithAIError value) error,
    required TResult Function(ChatWithAISendMessageSuccess value)
        sendMessageSuccess,
    required TResult Function(ChatWithAILoadBotAISuccess value)
        loadBotAISuccess,
    required TResult Function(ChatWithAIGetChatBotDetailSuccess value)
        getChatBotDetailSuccess,
  }) {
    return sendMessageSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChatWithAILoading value)? loading,
    TResult? Function(ChatWithAIError value)? error,
    TResult? Function(ChatWithAISendMessageSuccess value)? sendMessageSuccess,
    TResult? Function(ChatWithAILoadBotAISuccess value)? loadBotAISuccess,
    TResult? Function(ChatWithAIGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
  }) {
    return sendMessageSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChatWithAILoading value)? loading,
    TResult Function(ChatWithAIError value)? error,
    TResult Function(ChatWithAISendMessageSuccess value)? sendMessageSuccess,
    TResult Function(ChatWithAILoadBotAISuccess value)? loadBotAISuccess,
    TResult Function(ChatWithAIGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
    required TResult orElse(),
  }) {
    if (sendMessageSuccess != null) {
      return sendMessageSuccess(this);
    }
    return orElse();
  }
}

abstract class ChatWithAISendMessageSuccess implements ChatWithAiState {
  const factory ChatWithAISendMessageSuccess(final String msg) =
      _$ChatWithAISendMessageSuccessImpl;

  String get msg;
  @JsonKey(ignore: true)
  _$$ChatWithAISendMessageSuccessImplCopyWith<
          _$ChatWithAISendMessageSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatWithAILoadBotAISuccessImplCopyWith<$Res> {
  factory _$$ChatWithAILoadBotAISuccessImplCopyWith(
          _$ChatWithAILoadBotAISuccessImpl value,
          $Res Function(_$ChatWithAILoadBotAISuccessImpl) then) =
      __$$ChatWithAILoadBotAISuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatWithAILoadBotAISuccessImplCopyWithImpl<$Res>
    extends _$ChatWithAiStateCopyWithImpl<$Res,
        _$ChatWithAILoadBotAISuccessImpl>
    implements _$$ChatWithAILoadBotAISuccessImplCopyWith<$Res> {
  __$$ChatWithAILoadBotAISuccessImplCopyWithImpl(
      _$ChatWithAILoadBotAISuccessImpl _value,
      $Res Function(_$ChatWithAILoadBotAISuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatWithAILoadBotAISuccessImpl implements ChatWithAILoadBotAISuccess {
  const _$ChatWithAILoadBotAISuccessImpl();

  @override
  String toString() {
    return 'ChatWithAiState.loadBotAISuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatWithAILoadBotAISuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
    required TResult Function(String msg) sendMessageSuccess,
    required TResult Function() loadBotAISuccess,
    required TResult Function(AICharacterBotModel aiCharacterBot)
        getChatBotDetailSuccess,
  }) {
    return loadBotAISuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
    TResult? Function(String msg)? sendMessageSuccess,
    TResult? Function()? loadBotAISuccess,
    TResult? Function(AICharacterBotModel aiCharacterBot)?
        getChatBotDetailSuccess,
  }) {
    return loadBotAISuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    TResult Function(String msg)? sendMessageSuccess,
    TResult Function()? loadBotAISuccess,
    TResult Function(AICharacterBotModel aiCharacterBot)?
        getChatBotDetailSuccess,
    required TResult orElse(),
  }) {
    if (loadBotAISuccess != null) {
      return loadBotAISuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChatWithAILoading value) loading,
    required TResult Function(ChatWithAIError value) error,
    required TResult Function(ChatWithAISendMessageSuccess value)
        sendMessageSuccess,
    required TResult Function(ChatWithAILoadBotAISuccess value)
        loadBotAISuccess,
    required TResult Function(ChatWithAIGetChatBotDetailSuccess value)
        getChatBotDetailSuccess,
  }) {
    return loadBotAISuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChatWithAILoading value)? loading,
    TResult? Function(ChatWithAIError value)? error,
    TResult? Function(ChatWithAISendMessageSuccess value)? sendMessageSuccess,
    TResult? Function(ChatWithAILoadBotAISuccess value)? loadBotAISuccess,
    TResult? Function(ChatWithAIGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
  }) {
    return loadBotAISuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChatWithAILoading value)? loading,
    TResult Function(ChatWithAIError value)? error,
    TResult Function(ChatWithAISendMessageSuccess value)? sendMessageSuccess,
    TResult Function(ChatWithAILoadBotAISuccess value)? loadBotAISuccess,
    TResult Function(ChatWithAIGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
    required TResult orElse(),
  }) {
    if (loadBotAISuccess != null) {
      return loadBotAISuccess(this);
    }
    return orElse();
  }
}

abstract class ChatWithAILoadBotAISuccess implements ChatWithAiState {
  const factory ChatWithAILoadBotAISuccess() = _$ChatWithAILoadBotAISuccessImpl;
}

/// @nodoc
abstract class _$$ChatWithAIGetChatBotDetailSuccessImplCopyWith<$Res> {
  factory _$$ChatWithAIGetChatBotDetailSuccessImplCopyWith(
          _$ChatWithAIGetChatBotDetailSuccessImpl value,
          $Res Function(_$ChatWithAIGetChatBotDetailSuccessImpl) then) =
      __$$ChatWithAIGetChatBotDetailSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AICharacterBotModel aiCharacterBot});

  $AICharacterBotModelCopyWith<$Res> get aiCharacterBot;
}

/// @nodoc
class __$$ChatWithAIGetChatBotDetailSuccessImplCopyWithImpl<$Res>
    extends _$ChatWithAiStateCopyWithImpl<$Res,
        _$ChatWithAIGetChatBotDetailSuccessImpl>
    implements _$$ChatWithAIGetChatBotDetailSuccessImplCopyWith<$Res> {
  __$$ChatWithAIGetChatBotDetailSuccessImplCopyWithImpl(
      _$ChatWithAIGetChatBotDetailSuccessImpl _value,
      $Res Function(_$ChatWithAIGetChatBotDetailSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aiCharacterBot = null,
  }) {
    return _then(_$ChatWithAIGetChatBotDetailSuccessImpl(
      null == aiCharacterBot
          ? _value.aiCharacterBot
          : aiCharacterBot // ignore: cast_nullable_to_non_nullable
              as AICharacterBotModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AICharacterBotModelCopyWith<$Res> get aiCharacterBot {
    return $AICharacterBotModelCopyWith<$Res>(_value.aiCharacterBot, (value) {
      return _then(_value.copyWith(aiCharacterBot: value));
    });
  }
}

/// @nodoc

class _$ChatWithAIGetChatBotDetailSuccessImpl
    implements ChatWithAIGetChatBotDetailSuccess {
  const _$ChatWithAIGetChatBotDetailSuccessImpl(this.aiCharacterBot);

  @override
  final AICharacterBotModel aiCharacterBot;

  @override
  String toString() {
    return 'ChatWithAiState.getChatBotDetailSuccess(aiCharacterBot: $aiCharacterBot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatWithAIGetChatBotDetailSuccessImpl &&
            (identical(other.aiCharacterBot, aiCharacterBot) ||
                other.aiCharacterBot == aiCharacterBot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, aiCharacterBot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatWithAIGetChatBotDetailSuccessImplCopyWith<
          _$ChatWithAIGetChatBotDetailSuccessImpl>
      get copyWith => __$$ChatWithAIGetChatBotDetailSuccessImplCopyWithImpl<
          _$ChatWithAIGetChatBotDetailSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String title, String msg) error,
    required TResult Function(String msg) sendMessageSuccess,
    required TResult Function() loadBotAISuccess,
    required TResult Function(AICharacterBotModel aiCharacterBot)
        getChatBotDetailSuccess,
  }) {
    return getChatBotDetailSuccess(aiCharacterBot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String title, String msg)? error,
    TResult? Function(String msg)? sendMessageSuccess,
    TResult? Function()? loadBotAISuccess,
    TResult? Function(AICharacterBotModel aiCharacterBot)?
        getChatBotDetailSuccess,
  }) {
    return getChatBotDetailSuccess?.call(aiCharacterBot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String title, String msg)? error,
    TResult Function(String msg)? sendMessageSuccess,
    TResult Function()? loadBotAISuccess,
    TResult Function(AICharacterBotModel aiCharacterBot)?
        getChatBotDetailSuccess,
    required TResult orElse(),
  }) {
    if (getChatBotDetailSuccess != null) {
      return getChatBotDetailSuccess(aiCharacterBot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChatWithAILoading value) loading,
    required TResult Function(ChatWithAIError value) error,
    required TResult Function(ChatWithAISendMessageSuccess value)
        sendMessageSuccess,
    required TResult Function(ChatWithAILoadBotAISuccess value)
        loadBotAISuccess,
    required TResult Function(ChatWithAIGetChatBotDetailSuccess value)
        getChatBotDetailSuccess,
  }) {
    return getChatBotDetailSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChatWithAILoading value)? loading,
    TResult? Function(ChatWithAIError value)? error,
    TResult? Function(ChatWithAISendMessageSuccess value)? sendMessageSuccess,
    TResult? Function(ChatWithAILoadBotAISuccess value)? loadBotAISuccess,
    TResult? Function(ChatWithAIGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
  }) {
    return getChatBotDetailSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChatWithAILoading value)? loading,
    TResult Function(ChatWithAIError value)? error,
    TResult Function(ChatWithAISendMessageSuccess value)? sendMessageSuccess,
    TResult Function(ChatWithAILoadBotAISuccess value)? loadBotAISuccess,
    TResult Function(ChatWithAIGetChatBotDetailSuccess value)?
        getChatBotDetailSuccess,
    required TResult orElse(),
  }) {
    if (getChatBotDetailSuccess != null) {
      return getChatBotDetailSuccess(this);
    }
    return orElse();
  }
}

abstract class ChatWithAIGetChatBotDetailSuccess implements ChatWithAiState {
  const factory ChatWithAIGetChatBotDetailSuccess(
          final AICharacterBotModel aiCharacterBot) =
      _$ChatWithAIGetChatBotDetailSuccessImpl;

  AICharacterBotModel get aiCharacterBot;
  @JsonKey(ignore: true)
  _$$ChatWithAIGetChatBotDetailSuccessImplCopyWith<
          _$ChatWithAIGetChatBotDetailSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
