// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_message_to_bot_ai_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendMessageToBotAIModel _$SendMessageToBotAIModelFromJson(
    Map<String, dynamic> json) {
  return _SendMessageToBotAIModel.fromJson(json);
}

/// @nodoc
mixin _$SendMessageToBotAIModel {
  @JsonKey(name: 'session_id')
  int? get sessionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_bot_id')
  int? get chatBotId => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendMessageToBotAIModelCopyWith<SendMessageToBotAIModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageToBotAIModelCopyWith<$Res> {
  factory $SendMessageToBotAIModelCopyWith(SendMessageToBotAIModel value,
          $Res Function(SendMessageToBotAIModel) then) =
      _$SendMessageToBotAIModelCopyWithImpl<$Res, SendMessageToBotAIModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'session_id') int? sessionId,
      @JsonKey(name: 'chat_bot_id') int? chatBotId,
      String? message});
}

/// @nodoc
class _$SendMessageToBotAIModelCopyWithImpl<$Res,
        $Val extends SendMessageToBotAIModel>
    implements $SendMessageToBotAIModelCopyWith<$Res> {
  _$SendMessageToBotAIModelCopyWithImpl(this._value, this._then);

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
abstract class _$$SendMessageToBotAIModelImplCopyWith<$Res>
    implements $SendMessageToBotAIModelCopyWith<$Res> {
  factory _$$SendMessageToBotAIModelImplCopyWith(
          _$SendMessageToBotAIModelImpl value,
          $Res Function(_$SendMessageToBotAIModelImpl) then) =
      __$$SendMessageToBotAIModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'session_id') int? sessionId,
      @JsonKey(name: 'chat_bot_id') int? chatBotId,
      String? message});
}

/// @nodoc
class __$$SendMessageToBotAIModelImplCopyWithImpl<$Res>
    extends _$SendMessageToBotAIModelCopyWithImpl<$Res,
        _$SendMessageToBotAIModelImpl>
    implements _$$SendMessageToBotAIModelImplCopyWith<$Res> {
  __$$SendMessageToBotAIModelImplCopyWithImpl(
      _$SendMessageToBotAIModelImpl _value,
      $Res Function(_$SendMessageToBotAIModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
    Object? chatBotId = freezed,
    Object? message = freezed,
  }) {
    return _then(_$SendMessageToBotAIModelImpl(
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
class _$SendMessageToBotAIModelImpl implements _SendMessageToBotAIModel {
  const _$SendMessageToBotAIModelImpl(
      {@JsonKey(name: 'session_id') this.sessionId,
      @JsonKey(name: 'chat_bot_id') this.chatBotId,
      this.message});

  factory _$SendMessageToBotAIModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendMessageToBotAIModelImplFromJson(json);

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
    return 'SendMessageToBotAIModel(sessionId: $sessionId, chatBotId: $chatBotId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageToBotAIModelImpl &&
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
  _$$SendMessageToBotAIModelImplCopyWith<_$SendMessageToBotAIModelImpl>
      get copyWith => __$$SendMessageToBotAIModelImplCopyWithImpl<
          _$SendMessageToBotAIModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendMessageToBotAIModelImplToJson(
      this,
    );
  }
}

abstract class _SendMessageToBotAIModel implements SendMessageToBotAIModel {
  const factory _SendMessageToBotAIModel(
      {@JsonKey(name: 'session_id') final int? sessionId,
      @JsonKey(name: 'chat_bot_id') final int? chatBotId,
      final String? message}) = _$SendMessageToBotAIModelImpl;

  factory _SendMessageToBotAIModel.fromJson(Map<String, dynamic> json) =
      _$SendMessageToBotAIModelImpl.fromJson;

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
  _$$SendMessageToBotAIModelImplCopyWith<_$SendMessageToBotAIModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
