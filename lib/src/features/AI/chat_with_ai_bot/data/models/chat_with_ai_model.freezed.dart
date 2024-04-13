// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_with_ai_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatWIthAIModel _$ChatWIthAIModelFromJson(Map<String, dynamic> json) {
  return _ChatWIthAIModel.fromJson(json);
}

/// @nodoc
mixin _$ChatWIthAIModel {
  @JsonKey(name: 'session_id')
  int? get sessionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_bot_id')
  int? get chatBotId => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatWIthAIModelCopyWith<ChatWIthAIModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatWIthAIModelCopyWith<$Res> {
  factory $ChatWIthAIModelCopyWith(
          ChatWIthAIModel value, $Res Function(ChatWIthAIModel) then) =
      _$ChatWIthAIModelCopyWithImpl<$Res, ChatWIthAIModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'session_id') int? sessionId,
      @JsonKey(name: 'chat_bot_id') int? chatBotId,
      String? message});
}

/// @nodoc
class _$ChatWIthAIModelCopyWithImpl<$Res, $Val extends ChatWIthAIModel>
    implements $ChatWIthAIModelCopyWith<$Res> {
  _$ChatWIthAIModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
    Object? chatBotId = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as int?,
      chatBotId: freezed == chatBotId
          ? _value.chatBotId
          : chatBotId // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatWIthAIModelImplCopyWith<$Res>
    implements $ChatWIthAIModelCopyWith<$Res> {
  factory _$$ChatWIthAIModelImplCopyWith(_$ChatWIthAIModelImpl value,
          $Res Function(_$ChatWIthAIModelImpl) then) =
      __$$ChatWIthAIModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'session_id') int? sessionId,
      @JsonKey(name: 'chat_bot_id') int? chatBotId,
      String? message});
}

/// @nodoc
class __$$ChatWIthAIModelImplCopyWithImpl<$Res>
    extends _$ChatWIthAIModelCopyWithImpl<$Res, _$ChatWIthAIModelImpl>
    implements _$$ChatWIthAIModelImplCopyWith<$Res> {
  __$$ChatWIthAIModelImplCopyWithImpl(
      _$ChatWIthAIModelImpl _value, $Res Function(_$ChatWIthAIModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
    Object? chatBotId = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ChatWIthAIModelImpl(
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as int?,
      chatBotId: freezed == chatBotId
          ? _value.chatBotId
          : chatBotId // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatWIthAIModelImpl implements _ChatWIthAIModel {
  const _$ChatWIthAIModelImpl(
      {@JsonKey(name: 'session_id') this.sessionId,
      @JsonKey(name: 'chat_bot_id') this.chatBotId,
      this.message});

  factory _$ChatWIthAIModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatWIthAIModelImplFromJson(json);

  @override
  @JsonKey(name: 'session_id')
  final int? sessionId;
  @override
  @JsonKey(name: 'chat_bot_id')
  final int? chatBotId;
  @override
  final String? message;

  @override
  String toString() {
    return 'ChatWIthAIModel(sessionId: $sessionId, chatBotId: $chatBotId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatWIthAIModelImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.chatBotId, chatBotId) ||
                other.chatBotId == chatBotId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sessionId, chatBotId, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatWIthAIModelImplCopyWith<_$ChatWIthAIModelImpl> get copyWith =>
      __$$ChatWIthAIModelImplCopyWithImpl<_$ChatWIthAIModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatWIthAIModelImplToJson(
      this,
    );
  }
}

abstract class _ChatWIthAIModel implements ChatWIthAIModel {
  const factory _ChatWIthAIModel(
      {@JsonKey(name: 'session_id') final int? sessionId,
      @JsonKey(name: 'chat_bot_id') final int? chatBotId,
      final String? message}) = _$ChatWIthAIModelImpl;

  factory _ChatWIthAIModel.fromJson(Map<String, dynamic> json) =
      _$ChatWIthAIModelImpl.fromJson;

  @override
  @JsonKey(name: 'session_id')
  int? get sessionId;
  @override
  @JsonKey(name: 'chat_bot_id')
  int? get chatBotId;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ChatWIthAIModelImplCopyWith<_$ChatWIthAIModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
