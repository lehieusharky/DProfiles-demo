// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_with_ai_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatWIthAIModelImpl _$$ChatWIthAIModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatWIthAIModelImpl(
      sessionId: json['session_id'] as int?,
      chatBotId: json['chat_bot_id'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ChatWIthAIModelImplToJson(
        _$ChatWIthAIModelImpl instance) =>
    <String, dynamic>{
      'session_id': instance.sessionId,
      'chat_bot_id': instance.chatBotId,
      'message': instance.message,
    };
