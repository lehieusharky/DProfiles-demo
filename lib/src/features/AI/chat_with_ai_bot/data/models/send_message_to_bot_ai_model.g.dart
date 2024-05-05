// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message_to_bot_ai_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendMessageToBotAIModelImpl _$$SendMessageToBotAIModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SendMessageToBotAIModelImpl(
      sessionId: (json['session_id'] as num?)?.toInt(),
      chatBotId: (json['chat_bot_id'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$SendMessageToBotAIModelImplToJson(
        _$SendMessageToBotAIModelImpl instance) =>
    <String, dynamic>{
      'session_id': instance.sessionId,
      'chat_bot_id': instance.chatBotId,
      'message': instance.message,
    };
