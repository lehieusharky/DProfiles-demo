// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bot_message_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatBotMessageHistoryModel _$ChatBotMessageHistoryModelFromJson(
    Map<String, dynamic> json) {
  return _ChatBotMessageHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$ChatBotMessageHistoryModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_sender_id')
  int? get userSenderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'chatbot_sender_id')
  int? get chatbotSenderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_receiver_id')
  int? get userReceiverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'chatbot_receiver_id')
  int? get chatbotReceiverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'conversation_id')
  String? get conversationId => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_on')
  String? get updatedOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_on')
  String? get createdOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_ts')
  String? get updatedTs => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_ts')
  String? get createdTs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatBotMessageHistoryModelCopyWith<ChatBotMessageHistoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatBotMessageHistoryModelCopyWith<$Res> {
  factory $ChatBotMessageHistoryModelCopyWith(ChatBotMessageHistoryModel value,
          $Res Function(ChatBotMessageHistoryModel) then) =
      _$ChatBotMessageHistoryModelCopyWithImpl<$Res,
          ChatBotMessageHistoryModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_sender_id') int? userSenderId,
      @JsonKey(name: 'chatbot_sender_id') int? chatbotSenderId,
      @JsonKey(name: 'user_receiver_id') int? userReceiverId,
      @JsonKey(name: 'chatbot_receiver_id') int? chatbotReceiverId,
      @JsonKey(name: 'conversation_id') String? conversationId,
      String? content,
      @JsonKey(name: 'updated_on') String? updatedOn,
      @JsonKey(name: 'created_on') String? createdOn,
      @JsonKey(name: 'updated_ts') String? updatedTs,
      @JsonKey(name: 'created_ts') String? createdTs});
}

/// @nodoc
class _$ChatBotMessageHistoryModelCopyWithImpl<$Res,
        $Val extends ChatBotMessageHistoryModel>
    implements $ChatBotMessageHistoryModelCopyWith<$Res> {
  _$ChatBotMessageHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userSenderId = freezed,
    Object? chatbotSenderId = freezed,
    Object? userReceiverId = freezed,
    Object? chatbotReceiverId = freezed,
    Object? conversationId = freezed,
    Object? content = freezed,
    Object? updatedOn = freezed,
    Object? createdOn = freezed,
    Object? updatedTs = freezed,
    Object? createdTs = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userSenderId: freezed == userSenderId
          ? _value.userSenderId
          : userSenderId // ignore: cast_nullable_to_non_nullable
              as int?,
      chatbotSenderId: freezed == chatbotSenderId
          ? _value.chatbotSenderId
          : chatbotSenderId // ignore: cast_nullable_to_non_nullable
              as int?,
      userReceiverId: freezed == userReceiverId
          ? _value.userReceiverId
          : userReceiverId // ignore: cast_nullable_to_non_nullable
              as int?,
      chatbotReceiverId: freezed == chatbotReceiverId
          ? _value.chatbotReceiverId
          : chatbotReceiverId // ignore: cast_nullable_to_non_nullable
              as int?,
      conversationId: freezed == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedTs: freezed == updatedTs
          ? _value.updatedTs
          : updatedTs // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTs: freezed == createdTs
          ? _value.createdTs
          : createdTs // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatBotMessageHistoryModelImplCopyWith<$Res>
    implements $ChatBotMessageHistoryModelCopyWith<$Res> {
  factory _$$ChatBotMessageHistoryModelImplCopyWith(
          _$ChatBotMessageHistoryModelImpl value,
          $Res Function(_$ChatBotMessageHistoryModelImpl) then) =
      __$$ChatBotMessageHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_sender_id') int? userSenderId,
      @JsonKey(name: 'chatbot_sender_id') int? chatbotSenderId,
      @JsonKey(name: 'user_receiver_id') int? userReceiverId,
      @JsonKey(name: 'chatbot_receiver_id') int? chatbotReceiverId,
      @JsonKey(name: 'conversation_id') String? conversationId,
      String? content,
      @JsonKey(name: 'updated_on') String? updatedOn,
      @JsonKey(name: 'created_on') String? createdOn,
      @JsonKey(name: 'updated_ts') String? updatedTs,
      @JsonKey(name: 'created_ts') String? createdTs});
}

/// @nodoc
class __$$ChatBotMessageHistoryModelImplCopyWithImpl<$Res>
    extends _$ChatBotMessageHistoryModelCopyWithImpl<$Res,
        _$ChatBotMessageHistoryModelImpl>
    implements _$$ChatBotMessageHistoryModelImplCopyWith<$Res> {
  __$$ChatBotMessageHistoryModelImplCopyWithImpl(
      _$ChatBotMessageHistoryModelImpl _value,
      $Res Function(_$ChatBotMessageHistoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userSenderId = freezed,
    Object? chatbotSenderId = freezed,
    Object? userReceiverId = freezed,
    Object? chatbotReceiverId = freezed,
    Object? conversationId = freezed,
    Object? content = freezed,
    Object? updatedOn = freezed,
    Object? createdOn = freezed,
    Object? updatedTs = freezed,
    Object? createdTs = freezed,
  }) {
    return _then(_$ChatBotMessageHistoryModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userSenderId: freezed == userSenderId
          ? _value.userSenderId
          : userSenderId // ignore: cast_nullable_to_non_nullable
              as int?,
      chatbotSenderId: freezed == chatbotSenderId
          ? _value.chatbotSenderId
          : chatbotSenderId // ignore: cast_nullable_to_non_nullable
              as int?,
      userReceiverId: freezed == userReceiverId
          ? _value.userReceiverId
          : userReceiverId // ignore: cast_nullable_to_non_nullable
              as int?,
      chatbotReceiverId: freezed == chatbotReceiverId
          ? _value.chatbotReceiverId
          : chatbotReceiverId // ignore: cast_nullable_to_non_nullable
              as int?,
      conversationId: freezed == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedTs: freezed == updatedTs
          ? _value.updatedTs
          : updatedTs // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTs: freezed == createdTs
          ? _value.createdTs
          : createdTs // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatBotMessageHistoryModelImpl implements _ChatBotMessageHistoryModel {
  const _$ChatBotMessageHistoryModelImpl(
      {this.id,
      @JsonKey(name: 'user_sender_id') this.userSenderId,
      @JsonKey(name: 'chatbot_sender_id') this.chatbotSenderId,
      @JsonKey(name: 'user_receiver_id') this.userReceiverId,
      @JsonKey(name: 'chatbot_receiver_id') this.chatbotReceiverId,
      @JsonKey(name: 'conversation_id') this.conversationId,
      this.content,
      @JsonKey(name: 'updated_on') this.updatedOn,
      @JsonKey(name: 'created_on') this.createdOn,
      @JsonKey(name: 'updated_ts') this.updatedTs,
      @JsonKey(name: 'created_ts') this.createdTs});

  factory _$ChatBotMessageHistoryModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChatBotMessageHistoryModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_sender_id')
  final int? userSenderId;
  @override
  @JsonKey(name: 'chatbot_sender_id')
  final int? chatbotSenderId;
  @override
  @JsonKey(name: 'user_receiver_id')
  final int? userReceiverId;
  @override
  @JsonKey(name: 'chatbot_receiver_id')
  final int? chatbotReceiverId;
  @override
  @JsonKey(name: 'conversation_id')
  final String? conversationId;
  @override
  final String? content;
  @override
  @JsonKey(name: 'updated_on')
  final String? updatedOn;
  @override
  @JsonKey(name: 'created_on')
  final String? createdOn;
  @override
  @JsonKey(name: 'updated_ts')
  final String? updatedTs;
  @override
  @JsonKey(name: 'created_ts')
  final String? createdTs;

  @override
  String toString() {
    return 'ChatBotMessageHistoryModel(id: $id, userSenderId: $userSenderId, chatbotSenderId: $chatbotSenderId, userReceiverId: $userReceiverId, chatbotReceiverId: $chatbotReceiverId, conversationId: $conversationId, content: $content, updatedOn: $updatedOn, createdOn: $createdOn, updatedTs: $updatedTs, createdTs: $createdTs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatBotMessageHistoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userSenderId, userSenderId) ||
                other.userSenderId == userSenderId) &&
            (identical(other.chatbotSenderId, chatbotSenderId) ||
                other.chatbotSenderId == chatbotSenderId) &&
            (identical(other.userReceiverId, userReceiverId) ||
                other.userReceiverId == userReceiverId) &&
            (identical(other.chatbotReceiverId, chatbotReceiverId) ||
                other.chatbotReceiverId == chatbotReceiverId) &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.updatedOn, updatedOn) ||
                other.updatedOn == updatedOn) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.updatedTs, updatedTs) ||
                other.updatedTs == updatedTs) &&
            (identical(other.createdTs, createdTs) ||
                other.createdTs == createdTs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userSenderId,
      chatbotSenderId,
      userReceiverId,
      chatbotReceiverId,
      conversationId,
      content,
      updatedOn,
      createdOn,
      updatedTs,
      createdTs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatBotMessageHistoryModelImplCopyWith<_$ChatBotMessageHistoryModelImpl>
      get copyWith => __$$ChatBotMessageHistoryModelImplCopyWithImpl<
          _$ChatBotMessageHistoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatBotMessageHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _ChatBotMessageHistoryModel
    implements ChatBotMessageHistoryModel {
  const factory _ChatBotMessageHistoryModel(
          {final int? id,
          @JsonKey(name: 'user_sender_id') final int? userSenderId,
          @JsonKey(name: 'chatbot_sender_id') final int? chatbotSenderId,
          @JsonKey(name: 'user_receiver_id') final int? userReceiverId,
          @JsonKey(name: 'chatbot_receiver_id') final int? chatbotReceiverId,
          @JsonKey(name: 'conversation_id') final String? conversationId,
          final String? content,
          @JsonKey(name: 'updated_on') final String? updatedOn,
          @JsonKey(name: 'created_on') final String? createdOn,
          @JsonKey(name: 'updated_ts') final String? updatedTs,
          @JsonKey(name: 'created_ts') final String? createdTs}) =
      _$ChatBotMessageHistoryModelImpl;

  factory _ChatBotMessageHistoryModel.fromJson(Map<String, dynamic> json) =
      _$ChatBotMessageHistoryModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_sender_id')
  int? get userSenderId;
  @override
  @JsonKey(name: 'chatbot_sender_id')
  int? get chatbotSenderId;
  @override
  @JsonKey(name: 'user_receiver_id')
  int? get userReceiverId;
  @override
  @JsonKey(name: 'chatbot_receiver_id')
  int? get chatbotReceiverId;
  @override
  @JsonKey(name: 'conversation_id')
  String? get conversationId;
  @override
  String? get content;
  @override
  @JsonKey(name: 'updated_on')
  String? get updatedOn;
  @override
  @JsonKey(name: 'created_on')
  String? get createdOn;
  @override
  @JsonKey(name: 'updated_ts')
  String? get updatedTs;
  @override
  @JsonKey(name: 'created_ts')
  String? get createdTs;
  @override
  @JsonKey(ignore: true)
  _$$ChatBotMessageHistoryModelImplCopyWith<_$ChatBotMessageHistoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
